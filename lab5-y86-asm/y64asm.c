#include "y64asm.h"

#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

line_t *line_head = NULL;
line_t *line_tail = NULL;
int lineno = 0;

#define err_print(_s, _a...)       \
    do {                           \
        if (lineno < 0)            \
            fprintf(stderr,        \
                    "[--]: "_s     \
                    "\n",          \
                    ##_a);         \
        else                       \
            fprintf(stderr,        \
                    "[L%d]: "_s    \
                    "\n",          \
                    lineno, ##_a); \
    } while (0);

int64_t vmaddr = 0; /* vm addr */

/* register table */
const reg_t reg_table[REG_NONE] = {
    {"%rax", REG_RAX, 4}, {"%rcx", REG_RCX, 4}, {"%rdx", REG_RDX, 4},
    {"%rbx", REG_RBX, 4}, {"%rsp", REG_RSP, 4}, {"%rbp", REG_RBP, 4},
    {"%rsi", REG_RSI, 4}, {"%rdi", REG_RDI, 4}, {"%r8", REG_R8, 3},
    {"%r9", REG_R9, 3},   {"%r10", REG_R10, 4}, {"%r11", REG_R11, 4},
    {"%r12", REG_R12, 4}, {"%r13", REG_R13, 4}, {"%r14", REG_R14, 4}};
const reg_t *find_register(char *name) {
    int i;
    for (i = 0; i < REG_NONE; i++)
        if (!strncmp(name, reg_table[i].name, reg_table[i].namelen))
            return &reg_table[i];
    return NULL;
}

/* instruction set */
instr_t instr_set[] = {
    {"nop", 3, HPACK(I_NOP, F_NONE), 1},
    {"halt", 4, HPACK(I_HALT, F_NONE), 1},
    {"rrmovq", 6, HPACK(I_RRMOVQ, F_NONE), 2},
    {"cmovle", 6, HPACK(I_RRMOVQ, C_LE), 2},
    {"cmovl", 5, HPACK(I_RRMOVQ, C_L), 2},
    {"cmove", 5, HPACK(I_RRMOVQ, C_E), 2},
    {"cmovne", 6, HPACK(I_RRMOVQ, C_NE), 2},
    {"cmovge", 6, HPACK(I_RRMOVQ, C_GE), 2},
    {"cmovg", 5, HPACK(I_RRMOVQ, C_G), 2},
    {"irmovq", 6, HPACK(I_IRMOVQ, F_NONE), 10},
    {"rmmovq", 6, HPACK(I_RMMOVQ, F_NONE), 10},
    {"mrmovq", 6, HPACK(I_MRMOVQ, F_NONE), 10},
    {"addq", 4, HPACK(I_ALU, A_ADD), 2},
    {"subq", 4, HPACK(I_ALU, A_SUB), 2},
    {"andq", 4, HPACK(I_ALU, A_AND), 2},
    {"xorq", 4, HPACK(I_ALU, A_XOR), 2},
    {"jmp", 3, HPACK(I_JMP, C_YES), 9},
    {"jle", 3, HPACK(I_JMP, C_LE), 9},
    {"jl", 2, HPACK(I_JMP, C_L), 9},
    {"je", 2, HPACK(I_JMP, C_E), 9},
    {"jne", 3, HPACK(I_JMP, C_NE), 9},
    {"jge", 3, HPACK(I_JMP, C_GE), 9},
    {"jg", 2, HPACK(I_JMP, C_G), 9},
    {"call", 4, HPACK(I_CALL, F_NONE), 9},
    {"ret", 3, HPACK(I_RET, F_NONE), 1},
    {"pushq", 5, HPACK(I_PUSHQ, F_NONE), 2},
    {"popq", 4, HPACK(I_POPQ, F_NONE), 2},
    {".byte", 5, HPACK(I_DIRECTIVE, D_DATA), 1},
    {".word", 5, HPACK(I_DIRECTIVE, D_DATA), 2},
    {".long", 5, HPACK(I_DIRECTIVE, D_DATA), 4},
    {".quad", 5, HPACK(I_DIRECTIVE, D_DATA), 8},
    {".pos", 4, HPACK(I_DIRECTIVE, D_POS), 0},
    {".align", 6, HPACK(I_DIRECTIVE, D_ALIGN), 0},
    {NULL, 1, 0, 0}  // end
};

instr_t *find_instr(char *name) {
    int i;
    for (i = 0; instr_set[i].name; i++)
        if (strncmp(instr_set[i].name, name, instr_set[i].len) == 0)
            return &instr_set[i];
    return NULL;
}

/* symbol table (don't forget to init and finit it) */
symbol_t *symtab = NULL;

void printst() {
    // err_print("\033[0;34msymbol table:\033[0m");
    symbol_t *t = symtab->next;
    while (t) {
        // err_print("%s -> %lx", t->name, t->addr);
        t = t->next;
    }
}

/*
 * find_symbol: scan table to find the symbol
 * args
 *     name: the name of symbol
 *
 * return
 *     symbol_t: the 'name' symbol
 *     NULL: not exist
 */
symbol_t *find_symbol(char *name) {
    symbol_t *tmp = symtab->next;
    while (tmp) {
        if (strcmp(tmp->name, name) == 0) return tmp;
        tmp = tmp->next;
    }
    return NULL;
}

/*
 * add_symbol: add a new symbol to the symbol table
 * args
 *     name: the name of symbol
 *
 * return
 *     0: success
 *     -1: error, the symbol has exist
 */
int add_symbol(char *name) {
    /* check duplicate */
    if (find_symbol(name)) {
        printst();
        return -1;
    }
    /* create new symbol_t (don't forget to free it)*/
    symbol_t *sym = (symbol_t *)malloc(sizeof(symbol_t));
    sym->name = name;
    sym->addr = vmaddr;
    sym->next = symtab->next;
    // err_print("add symbol %s -> 0x%lx", name, vmaddr);

    /* add the new symbol_t to symbol table */
    symtab->next = sym;
    return 0;
}

/* relocation table (don't forget to init and finit it) */
reloc_t *reltab = NULL;

/*
 * add_reloc: add a new relocation to the relocation table
 * args
 *     name: the name of symbol
 *
 * return
 *     0: success
 *     -1: error, the symbol has existed
 */
void add_reloc(char *name, bin_t *bin) {
    /* create new reloc_t (don't forget to free it)*/
    reloc_t *rec = (reloc_t *)calloc(1, sizeof(reloc_t));
    rec->y64bin = bin;
    // err_print("add_reloc %s %p", name, rec->y64bin);
    rec->name = name;
    rec->next = reltab->next;
    /* add the new reloc_t to relocation table */
    reltab->next = rec;
}

/* macro for parsing y64 assembly code */
#define IS_DIGIT(s) ((*(s) >= '0' && *(s) <= '9') || *(s) == '-' || *(s) == '+')
#define IS_LETTER(s) \
    ((*(s) >= 'a' && *(s) <= 'z') || (*(s) >= 'A' && *(s) <= 'Z'))
#define IS_COMMENT(s) (*(s) == '#')
#define IS_REG(s) (*(s) == '%')
#define IS_IMM(s) (*(s) == '$')

#define IS_BLANK(s) (*(s) == ' ' || *(s) == '\t')
#define IS_END(s) (*(s) == '\0')

#define SKIP_BLANK(s)                            \
    do {                                         \
        while (!IS_END(s) && IS_BLANK(s)) (s)++; \
    } while (0);

/* return value from different parse_xxx function */
typedef enum {
    PARSE_ERR = -1,
    PARSE_REG,
    PARSE_DIGIT,
    PARSE_SYMBOL,
    PARSE_MEM,
    PARSE_DELIM,
    PARSE_INSTR,
    PARSE_LABEL
} parse_t;

/*
 * parse_instr: parse an expected data token (e.g., 'rrmovq')
 * args
 *     ptr: point to the start of string
 *     inst: point to the inst_t within instr_set
 *
 * return
 *     PARSE_INSTR: success, move 'ptr' to the first char after token,
 *                            and store the pointer of the instruction to 'inst'
 *     PARSE_ERR: error, the value of 'ptr' and 'inst' are undefined
 */
parse_t parse_instr(char **ptr, instr_t **inst) {
    /* skip the blank */
    SKIP_BLANK(*ptr);
    // err_print("parse_instr: *ptr:%s", *ptr);
    /* find_instr and check end */
    instr_t *ins = find_instr(*ptr);
    /* set 'ptr' and 'inst' */
    if (ins != NULL) {
        *ptr += ins->len;
        *inst = ins;
        return PARSE_INSTR;
    }
    return PARSE_ERR;
}

/*
 * parse_delim: parse an expected delimiter token (e.g., ',')
 * args
 *     ptr: point to the start of string
 *
 * return
 *     PARSE_DELIM: success, move 'ptr' to the first char after token
 *     PARSE_ERR: error, the value of 'ptr' and 'delim' are undefined
 */
/* skip the blank and check */
parse_t parse_delim(char **ptr, char delim) {
    SKIP_BLANK(*ptr);
    /* set 'ptr' */
    if (**ptr != delim) return PARSE_ERR;
    (*ptr)++;
    return PARSE_DELIM;
}

/*
 * parse_reg: parse an expected register token (e.g., '%rax')
 * args
 *     ptr: point to the start of string
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_REG: success, move 'ptr' to the first char after token,
 *                         and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr' and 'regid' are undefined
 */
parse_t parse_reg(char **ptr, regid_t *regid) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    // err_print("parse reg from: *ptr->%s", *ptr);

    if (IS_END(*ptr) || IS_COMMENT(*ptr)) {
        *regid = REG_NONE;
        return PARSE_REG;
    }
    /* find register */
    const reg_t *reg = find_register(*ptr);
    if (reg == NULL) {
        // err_print("@%s", *ptr);
        err_print("Invalid REG");
        return PARSE_ERR;
    }
    /* set 'ptr' and 'regid' */
    *ptr += reg->namelen;
    *regid = reg->id;
    return PARSE_REG;
}

/*
 * parse_symbol: parse an expected symbol token (e.g., 'Main')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_SYMBOL: success, move 'ptr' to the first char after token,
 *                               and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' and 'name' are undefined
 */
parse_t parse_symbol(char **ptr, char **name) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    // err_print("parse_symbol: %s", *ptr);
    char *tmp = *ptr;
    /* allocate name and copy to it */
    if (IS_LETTER(*ptr))
        (*ptr)++;
    else {
        return PARSE_ERR;
    }
    while (IS_LETTER(*ptr) || IS_DIGIT(*ptr)) (*ptr)++;
    size_t len = (*ptr) - tmp;
    /* set 'ptr' and 'name' */
    *name = (char *)malloc(sizeof(char) * len);
    strncpy(*name, tmp, len);
    return PARSE_SYMBOL;
}

/*
 * parse_digit: parse an expected digit token (e.g., '0x100')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, move 'ptr' to the first char after token
 *                            and store the value of digit to 'value'
 *     PARSE_ERR: error, the value of 'ptr' and 'value' are undefined
 */
parse_t parse_digit(char **ptr, long *value) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    // err_print("parse digit: *ptr->%s", *ptr);
    /* calculate the digit, (NOTE: see strtoll()) */
    char *pEnd;
    *value = (long)strtoull(*ptr, &pEnd, 0);
    // err_print("strtol->%ld %lx, pEnd:%s", *value, *value, pEnd);
    if ((*ptr) == pEnd) return PARSE_ERR;
    /* set 'ptr' and 'value' */
    *ptr += (pEnd - *ptr);
    return PARSE_DIGIT;
}

/*
 * parse_imm: parse an expected immediate token (e.g., '$0x100' or 'STACK')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, the immediate token is a digit,
 *                            move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, the immediate token is a symbol,
 *                            move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_imm(char **ptr, char **name, long *value) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    /* if IS_IMM, then parse the digit */
    if (IS_IMM(*ptr)) {
        (*ptr)++;
        if (parse_digit(ptr, value) != PARSE_ERR) return PARSE_DIGIT;
    }
    /* if IS_LETTER, then parse the symbol */

    /* set 'ptr' and 'name' or 'value' */

    return PARSE_ERR;
}

/*
 * parse_mem: parse an expected memory token (e.g., '8(%rbp)')
 * args
 *     ptr: point to the start of string
 *     value: point to the value of digit
 *     regid: point to the regid of register
 *
 * return
 *     PARSE_MEM: success, move 'ptr' to the first char after token,
 *                          and store the value of digit to 'value',
 *                          and store the regid to 'regid'
 *     PARSE_ERR: error, the value of 'ptr', 'value' and 'regid' are undefined
 */
parse_t parse_mem(char **ptr, long *value, regid_t *regid) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    /* calculate the digit and register, (ex: (%rbp) or 8(%rbp)) */
    if (IS_DIGIT(*ptr)) parse_digit(ptr, value);
    parse_t errL = parse_delim(ptr, '(');
    parse_t errReg = parse_reg(ptr, regid);
    parse_t errR = parse_delim(ptr, ')');
    if (errL == PARSE_ERR || errReg == PARSE_ERR || errR == PARSE_ERR) {
        err_print("Invalid MEM");
        return PARSE_ERR;
    }
    /* set 'ptr', 'value' and 'regid' */
    return PARSE_MEM;
}

/*
 * parse_data: parse an expected data token (e.g., '0x100' or 'array')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *     value: point to the value of digit
 *
 * return
 *     PARSE_DIGIT: success, data token is a digit,
 *                            and move 'ptr' to the first char after token,
 *                            and store the value of digit to 'value'
 *     PARSE_SYMBOL: success, data token is a symbol,
 *                            and move 'ptr' to the first char after token,
 *                            and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr', 'name' and 'value' are undefined
 */
parse_t parse_data(char **ptr, char **name, long *value) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    /* if IS_DIGIT, then parse the digit */
    if (IS_DIGIT(*ptr)) {
        parse_digit(ptr, value);
        return PARSE_DIGIT;
    }
    /* if IS_LETTER, then parse the symbol */
    if (IS_LETTER(*ptr)) {
        parse_symbol(ptr, name);  // name is allocate in this function call
        return PARSE_SYMBOL;
    }
    /* set 'ptr', 'name' and 'value' */

    return PARSE_ERR;
}

/*
 * parse_label: parse an expected label token (e.g., 'Loop:')
 * args
 *     ptr: point to the start of string
 *     name: point to the name of symbol (should be allocated in this function)
 *
 * return
 *     PARSE_LABEL: success, move 'ptr' to the first char after token
 *                            and allocate and store name to 'name'
 *     PARSE_ERR: error, the value of 'ptr' is undefined
 */
parse_t parse_label(char **ptr, char **name) {
    /* skip the blank and check */
    SKIP_BLANK(*ptr);
    /* allocate name and copy to it */
    char *tmp = *ptr;
    while (IS_LETTER(*ptr) || IS_DIGIT(*ptr)) (*ptr)++;
    if (parse_delim(ptr, ':') == PARSE_ERR) return PARSE_ERR;
    size_t len = (*ptr) - (tmp)-1;
    char *identifier = (char *)malloc(sizeof(char) * len);
    strncpy(identifier, tmp, len);
    /* set 'ptr' and 'name' */
    *name = identifier;
    // err_print("parsed label: %s *name=%s", identifier, *name);
    return PARSE_LABEL;
    // return PARSE_ERR;
}

/*
 * parse_line: parse a line of y64 code (e.g., 'Loop: mrmovq (%rcx), %rsi')
 * (you could combine above parse_xxx functions to do it)
 * args
 *     line: point to a line_t data with a line of y64 assembly code
 *
 * return
 *     PARSE_XXX: success, fill line_t with assembled y64 code
 *     PARSE_ERR: error, try to print err information (e.g., instr type and line
 * number)
 */
type_t parse_line(line_t *line) {
    /* when finish parse an instruction or label, we still need to continue
     * check e.g., Loop: mrmovl (%rbp), %rcx call SUM  #invoke SUM function */

    char *c = line->y64asm;  // pointer to a character of asm code
    // err_print("running \033[0;34m%s\033[0m", c);
    /* skip blank and check IS_END */
    while (IS_BLANK(c)) c++;
    if (IS_END(c)) return PARSE_DELIM;

    /* is a comment ? */
    if (IS_COMMENT(c)) return TYPE_COMM;

    /* is a label ? */
    char *name;
    char *tmp = c;
    while (!IS_END(tmp) && !IS_COMMENT(tmp)) {
        // if () break;
        // err_print("[v] read (*tmp)->%c", *tmp);
        if ((*tmp) == ':') {
            // err_print("call parse label with: %s", c);
            parse_label(&c, &name);
            if (add_symbol(name) == -1) {
                err_print("Dup symbol:%s", name);
                return TYPE_ERR;
            }
            line->type = TYPE_INS;
            line->y64bin.addr = vmaddr;
            line->y64bin.bytes = 0;
            // err_print("label detected ->%s", name);
            // tmp++;
            // SKIP_BLANK(tmp);
            // err_print("skip blank to->%s", tmp);
            // if (IS_COMMENT(tmp)) break;
        }
        tmp++;
    }
    // err_print("end checking label");
    SKIP_BLANK(c);
    if (IS_END(c) || IS_COMMENT(c)) return TYPE_INS;

    /* is an instruction ? */
    // err_print("begin ins ->%s", c);
    instr_t *ins;
    if (IS_LETTER(c) || (*c) == '.')
        if (parse_instr(&c, &ins) == PARSE_ERR) return TYPE_ERR;
    /* set type and y64bin */
    byte_t binPos = 0;
    line->type = TYPE_INS;
    line->y64bin.addr = vmaddr;
    line->y64bin.bytes = ins->bytes;
    /* update vmaddr */
    // err_print("ins:vmaddr=%lx,sz=%d,code=%x", vmaddr, ins->bytes, ins->code);
    vmaddr += ins->bytes;
    // err_print("-> :vmaddr=%lx,sz=%d,code=%x", vmaddr, ins->bytes, ins->code);
    /* parse the rest of instruction according to the itype */
    itype_t icode = ((ins->code) >> 4) & 0xf;
    regid_t rA = 0xf;
    regid_t rB = 0xf;
    long quadWord = 0;
    char *symbol;

    switch (icode) {
        case I_HALT:
        case I_NOP:
        case I_RET:
            line->y64bin.codes[binPos++] = ins->code;
            break;
        case I_RRMOVQ:  // rrmovq
        case I_ALU:     // OPq rA, rB
        case I_PUSHQ:
        case I_POPQ:
            line->y64bin.codes[binPos++] = ins->code;
            // TODO: nessary to distinguish symbols here?
            if (parse_reg(&c, &rA) == PARSE_ERR) {
                return TYPE_ERR;
            }
            if ((icode == 0x2 || icode == 0x6) &&
                parse_delim(&c, ',') == PARSE_ERR) {
                err_print("Invalid ','");
                return TYPE_ERR;
            }
            if (parse_reg(&c, &rB) == PARSE_ERR) {
                return TYPE_ERR;
            }
            // err_print(" --> a=%x b=%x", rA, rB);
            line->y64bin.codes[binPos++] = HPACK(rA, rB);
            break;
        case I_IRMOVQ:  // irmovq V, rB
            line->y64bin.codes[binPos++] = ins->code;
            SKIP_BLANK(c);
            if (IS_LETTER(c)) {
                if (parse_symbol(&c, &symbol) == PARSE_ERR) {
                    err_print("FIXME: line 581");
                    return TYPE_ERR;
                }
                add_reloc(symbol, &(line->y64bin));
            } else if (parse_imm(&c, NULL, &quadWord) == PARSE_ERR) {
                // err_print("@%s <- %s", c, line->y64asm);
                err_print("Invalid Immediate");
                return TYPE_ERR;
            }
            parse_delim(&c, ',');
            if (parse_reg(&c, &rB) == PARSE_ERR) {
                // err_print("@%s <- %s", c, line->y64asm);
                return TYPE_ERR;
            }
            // err_print("long: %ld %lx", quadWord, quadWord);
            line->y64bin.codes[binPos++] = HPACK(rA, rB);
            for (int i = 0; i < 8; i++) {
                line->y64bin.codes[binPos++] = (quadWord >> 8 * i) & 0xFF;
            }
            break;
        case I_RMMOVQ:  // rmmovq rA, D(rB)
            line->y64bin.codes[binPos++] = ins->code;
            if (parse_reg(&c, &rA) == PARSE_ERR) {
                return TYPE_ERR;
            }
            parse_delim(&c, ',');
            if (parse_mem(&c, &quadWord, &rB) == PARSE_ERR) {
                return TYPE_ERR;
            }
            line->y64bin.codes[binPos++] = HPACK(rA, rB);
            for (int i = 0; i < 8; i++) {
                line->y64bin.codes[binPos++] = (quadWord >> 8 * i) & 0xFF;
            }
            break;
        case I_MRMOVQ:  // mrmovq D(rB), rA
            line->y64bin.codes[binPos++] = ins->code;
            if (parse_mem(&c, &quadWord, &rB) == PARSE_ERR) {
                return TYPE_ERR;
            }
            parse_delim(&c, ',');
            if (parse_reg(&c, &rA) == PARSE_ERR) {
                return TYPE_ERR;
            }
            line->y64bin.codes[binPos++] = HPACK(rA, rB);
            for (int i = 0; i < 8; i++) {
                line->y64bin.codes[binPos++] = (quadWord >> 8 * i) & 0xFF;
            }
            break;
        case 0x7:  // jxx Dest
        case 0x8:  // call Dest
            line->y64bin.codes[binPos++] = ins->code;
            if (parse_symbol(&c, &name) == PARSE_ERR) {
                err_print("Invalid DEST");
                return TYPE_ERR;
            }
            add_reloc(name, &(line->y64bin));
            for (int i = 0; i < 8; i++) {
                line->y64bin.codes[binPos++] = 0;
            }
            break;
        case I_DIRECTIVE:
            switch (parse_data(&c, &symbol, &quadWord)) {
                case PARSE_SYMBOL:
                    add_reloc(symbol, &(line->y64bin));
                    break;
                case PARSE_DIGIT:
                    break;
                default:
                    return TYPE_ERR;
            }
            switch ((ins->code) & 0xf) {
                case D_DATA:
                    line->type = TYPE_INS;
                    size_t size = ins->bytes;
                    for (int i = 0; i < size; i++)
                        line->y64bin.codes[i] = (quadWord >> 8 * i) & 0xff;
                    line->y64bin.bytes = size;
                    break;
                case D_ALIGN:
                    vmaddr = (vmaddr + quadWord - 1) / quadWord * quadWord;
                    line->y64bin.addr = vmaddr;
                    line->type = TYPE_INS;
                    line->y64bin.bytes = 0;
                    break;
                case D_POS:
                    // set vm address to given number
                    line->y64bin.addr = quadWord;
                    vmaddr = quadWord;
                    line->y64bin.bytes = 0;
                    break;
            }
            break;
        default:
            // err_print("Uncaught icode!!!");
            break;
    }
    return line->type;
}

/*
 * assemble: assemble an y64 file (e.g., 'asum.ys')
 * args
 *     in: point to input file (an y64 assembly file)
 *
 * return
 *     0: success, assemble the y64 file to a list of line_t
 *     -1: error, try to print err information (e.g., instr type and line
 * number)
 */
int assemble(FILE *in) {
    static char asm_buf[MAX_INSLEN]; /* the current line of asm code */
    line_t *line;
    int slen;
    char *y64asm;

    /* read y64 code line-by-line, and parse them to generate raw y64 binary
     * code list */
    while (fgets(asm_buf, MAX_INSLEN, in) != NULL) {
        slen = strlen(asm_buf);
        while ((asm_buf[slen - 1] == '\n') || (asm_buf[slen - 1] == '\r')) {
            asm_buf[--slen] = '\0'; /* replace terminator */
        }

        /* store y64 assembly code */
        y64asm = (char *)malloc(sizeof(char) * (slen + 1));  // free in finit
        strcpy(y64asm, asm_buf);

        line = (line_t *)malloc(sizeof(line_t));  // free in finit
        memset(line, '\0', sizeof(line_t));

        line->type = TYPE_COMM;
        line->y64asm = y64asm;
        line->next = NULL;

        line_tail->next = line;
        line_tail = line;
        lineno++;

        if (parse_line(line) == TYPE_ERR) {
            return -1;
        }
    }

    lineno = -1;
    return 0;
}

/*
 * relocate: relocate the raw y64 binary code with symbol address
 *
 * return
 *     0: success
 *     -1: error, try to print err information (e.g., addr and symbol)
 */
int relocate(void) {
    // debug
    // err_print("\033[0;34m...symbol table:\033[0m");
    symbol_t *t = symtab->next;
    while (t) {
        // err_print("%s -> 0x%lx", t->name, t->addr);
        t = t->next;
    }
    // err_print("\033[0;34m...end of symbol table\033[0m");
    // end debug
    reloc_t *rtmp = NULL;

    rtmp = reltab->next;
    while (rtmp) {
        /* find symbol */
        // err_print("relocate symbol: %s", rtmp->name);
        symbol_t *symbol = find_symbol(rtmp->name);
        if (symbol == NULL) {
            err_print("Unknown symbol:'%s'", rtmp->name);
            return -1;
        }
        /* relocate y64bin according itype */
        // err_print("\t addr: 0x%lx", symbol->addr);
        // err_print("y64bin @0x%p", &(rtmp->y64bin));
        // err_print("y64bin->codes @%p", (rtmp->y64bin));
        size_t index = 0;
        switch (((rtmp->y64bin->codes[0] >> 4) & 0xf)) {
            case D_DATA:
                index = 0;
                break;
            case I_JMP:
            case I_CALL:
                index = 1;
                break;
            case I_IRMOVQ:
            case I_RMMOVQ:
            case I_MRMOVQ:
                index = 2;
                break;
            default:
                // err_print("uncaught relocate index!");
                break;
        }
        for (int i = 0; i < 8; i++)
            (rtmp->y64bin)->codes[i + index] = (symbol->addr) >> (8 * i) & 0xff;
        /* next */
        rtmp = rtmp->next;
    }
    return 0;
}

/*
 * binfile: generate the y64 binary file
 * args
 *     out: point to output file (an y64 binary file)
 *
 * return
 *     0: success
 *     -1: error
 */
int binfile(FILE *out) {
    /* prepare image with y64 binary code */
    // printf("%s", "EMM");
    line_t *line = line_head->next;
    // size_t size = (line_tail->y64bin.bytes == 0) ? 0 : vmaddr;
    byte_t *bin_image = (byte_t *)calloc((vmaddr), sizeof(byte_t));
    while (line) {
        // err_print("write line: \033[0;34m%s\033[0m", line->y64asm);
        if (line->y64bin.bytes != 0) {
            vmaddr = line->y64bin.addr + line->y64bin.bytes;
        }

        for (int j = 0; j < line->y64bin.bytes; j++) {
            bin_image[line->y64bin.addr + j] = line->y64bin.codes[j];
            // err_print("with j=%d bin write b %x", j, line->y64bin.codes[j]);
        }
        line = line->next;
    }
    /* binary write y64 code to output file (NOTE: see fwrite()) */
    fwrite(bin_image, sizeof(byte_t), (vmaddr), out);
    // err_print("begin binfile, vmaddr=%ld", sizeof(bin_image));
    // err_print("binfile() end,");
    return 0;
}

/* whether print the readable output to screen or not ? */
bool_t screen = FALSE;

static void hexstuff(char *dest, int value, int len) {
    int i;
    for (i = 0; i < len; i++) {
        char c;
        int h = (value >> 4 * i) & 0xF;
        c = h < 10 ? h + '0' : h - 10 + 'a';
        dest[len - i - 1] = c;
    }
}

void print_line(line_t *line) {
    char buf[33];
    // err_print("asd");
    /* line format: 0xHHH: cccccccccccc | <line> */
    if (line->type == TYPE_INS) {
        bin_t *y64bin = &line->y64bin;
        int i;
        // err_print("print_line addr=%x len=%d", y64bin->addr, y64bin->bytes);
        strcpy(buf, "  0x000:                      | ");

        hexstuff(buf + 4, y64bin->addr, 3);
        if (y64bin->bytes > 0)
            for (i = 0; i < y64bin->bytes; i++)
                hexstuff(buf + 9 + 2 * i, y64bin->codes[i] & 0xFF, 2);
    } else {
        strcpy(buf, "                              | ");
    }

    printf("%s%s\n", buf, line->y64asm);
}

/*
 * print_screen: dump readable binary and assembly code to screen
 * (e.g., Figure 4.8 in ICS book)
 */
void print_screen(void) {
    line_t *tmp = line_head->next;
    while (tmp != NULL) {
        // err_print("print: %s", tmp->y64asm);
        print_line(tmp);
        tmp = tmp->next;
    }
}

/* init and finit */
void init(void) {
    reltab = (reloc_t *)malloc(sizeof(reloc_t));  // free in finit
    memset(reltab, 0, sizeof(reloc_t));
    // reltab->next = NULL;

    symtab = (symbol_t *)malloc(sizeof(symbol_t));  // free in finit
    memset(symtab, 0, sizeof(symbol_t));

    line_head = (line_t *)malloc(sizeof(line_t));  // free in finit
    memset(line_head, 0, sizeof(line_t));
    line_tail = line_head;
    lineno = 0;
}

void finit(void) {
    reloc_t *rtmp = NULL;
    do {
        // err_print("1");
        rtmp = reltab->next;
        if (reltab->name) free(reltab->name);
        free(reltab);
        reltab = rtmp;
    } while (reltab);

    symbol_t *stmp = NULL;
    do {
        // err_print("2");
        stmp = symtab->next;
        if (symtab->name) free(symtab->name);
        free(symtab);
        symtab = stmp;
    } while (symtab);

    line_t *ltmp = NULL;
    do {
        // err_print("3");
        ltmp = line_head->next;
        if (line_head->y64asm) free(line_head->y64asm);
        free(line_head);
        line_head = ltmp;
    } while (line_head);
}

static void usage(char *pname) {
    printf("Usage: %s [-v] file.ys\n", pname);
    printf("   -v print the readable output to screen\n");
    exit(0);
}

int main(int argc, char *argv[]) {
    int rootlen;
    char infname[512];
    char outfname[512];
    int nextarg = 1;
    FILE *in = NULL, *out = NULL;

    if (argc < 2) usage(argv[0]);

    if (argv[nextarg][0] == '-') {
        char flag = argv[nextarg][1];
        switch (flag) {
            case 'v':
                screen = TRUE;
                nextarg++;
                break;
            default:
                usage(argv[0]);
        }
    }

    /* parse input file name */
    rootlen = strlen(argv[nextarg]) - 3;
    /* only support the .ys file */
    if (strcmp(argv[nextarg] + rootlen, ".ys")) usage(argv[0]);

    if (rootlen > 500) {
        err_print("File name too long");
        exit(1);
    }

    /* init */
    init();

    /* assemble .ys file */
    strncpy(infname, argv[nextarg], rootlen);
    strcpy(infname + rootlen, ".ys");
    in = fopen(infname, "r");
    if (!in) {
        err_print("Can't open input file '%s'", infname);
        exit(1);
    }

    if (assemble(in) < 0) {
        err_print("Assemble y64 code error");
        fclose(in);
        exit(1);
    }
    fclose(in);

    /* relocate binary code */
    if (relocate() < 0) {
        err_print("Relocate binary code error");
        exit(1);
    }

    /* generate .bin file */
    strncpy(outfname, argv[nextarg], rootlen);
    strcpy(outfname + rootlen, ".bin");
    out = fopen(outfname, "wb");
    if (!out) {
        err_print("Can't open output file '%s'", outfname);
        exit(1);
    }

    if (binfile(out) < 0) {
        err_print("Generate binary file error");
        fclose(out);
        exit(1);
    }
    fclose(out);
    // err_print("print_screen before");
    /* print to screen (.yo file) */
    if (screen) print_screen();
    // err_print("print_screen after");

    /* finit */
    finit();
    return 0;
}
