# Linking

## Compilation and Static Linking

To simply compile the executable file, run

```sh
gcc -o prog main.c sum.c
```

This process is equivalent to:

```sh
cpp [other arguments] main.c /tmp/main.i            # C preprocessor
cc1 /tmp/main.i [other arguments] -o /tmp/main.s    # C compiler
as [other arguments] -o /tmp/main.o /tmp/main.s     # Assembler, generates relocatable object file
ld -o prog [system object files and args] /tmp/main.o /tmp/sum.o    # Linking
```

## Inspecting ELF

`readelf` is a handy tool to view the contents of object files.

```sh
$ readelf -s main.o # Display the symbol table
Symbol table '.symtab' contains 12 entries:
   Num:    Value          Size Type    Bind   Vis      Ndx Name
     0: 0000000000000000     0 NOTYPE  LOCAL  DEFAULT  UND
     1: 0000000000000000     0 FILE    LOCAL  DEFAULT  ABS main.c
     2: 0000000000000000     0 SECTION LOCAL  DEFAULT    1
     3: 0000000000000000     0 SECTION LOCAL  DEFAULT    3
     4: 0000000000000000     0 SECTION LOCAL  DEFAULT    4
     5: 0000000000000000     0 SECTION LOCAL  DEFAULT    6
     6: 0000000000000000     0 SECTION LOCAL  DEFAULT    7
     7: 0000000000000000     0 SECTION LOCAL  DEFAULT    5
     8: 0000000000000000    26 FUNC    GLOBAL DEFAULT    1 main
     9: 0000000000000000     8 OBJECT  GLOBAL DEFAULT    3 array
    10: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND _GLOBAL_OFFSET_TABLE_
    11: 0000000000000000     0 NOTYPE  GLOBAL DEFAULT  UND sum
```
