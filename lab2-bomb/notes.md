# Hacking! Diassembly

## Useful Cheat Sheet

### Function Parameter

| 1    | 2    | 3    | 4    | 5   | 6   |
| ---- | ---- | ---- | ---- | --- | --- |
| %rdi | %rsi | %rdx | %rcx | %r8 | %r9 |

## Gnu Debugger(GDB)

```sh
gdb  <file>         # invoke GDB
break  FUNC | *ADDR # set breakpoint
run                 # run the program
print</?>  $REG | ADDR      # print data
continue | stepi | nexti    # step run
quit                        # quit
```

### Print Parameters

```sh
print/d $eax
print/c *0x8048538
print/s (char *)0x8048538
```

### Print - dereference

```sh
x $rsp
x/s $rdi
```

### Modify Values

```sh
set {int}0x7fffffffe0f8 = 233
```
