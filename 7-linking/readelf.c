int uninit;
int init = 1;
int init0 = 0;
extern int ext_sym;
static int s_uninit;
static int s_init = 2;
static int s_init0 = 0;
extern char *ex_char[];
char **ptr_to_ex_char = &ex_char[1];