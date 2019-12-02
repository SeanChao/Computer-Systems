# Hacking! Diassembly

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
