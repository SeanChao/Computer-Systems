# You can't bomb!

## Before

The address in `objdump`ed file is not the real address when executing.  
By `b main` we can know the real address of function main, compare it with the relative address in assmebly, we can infer the address of other functions.

## Phase 1

Function 1 called a function named `strings_not_equal` so I suppose it would compare a string.  
Before the function call, it loaded `0x1065(%rip)` into register `%rsi`, which is the 2nd parameter. As strings are called by an pointer, `$rsi` then must be the pointer to the string.  
So I run the program there, print the string.  

```sh
print/s (char *)%rsi
```

So I got the password:

> Why make trillions when we could make... billions?

## Phase 2

We can guess from the assembly code that this function takes an input and parse it into 6 numbers.  

In assembly, we can tell that the six numbers are stored from (%rsp), line `13de` indicates that the first number is `1`. After that, there's a loop structrue. It scans through the six number, and the 2nd number is twice the first one, 3nd is triple the 2nd one, going on and on. Therefore, we know the six numbers are `1 2 6 24 120 720`.

## Phase 3

Before function call to `scanf`,

```sh
x/s (char *)$rsi
```

gives us the content of the parameter, which is "%d %c %d", indicating it an integer, a character and an integer. We also know that its return value would the number of successful matches.  

```sh
0x7(%rsp),%rcx   # 2->%c aka ch
0xc(%rsp),%rdx   # 1->%d aka d1
0x8(%rsp),%r8    # 3->%d aka d2
```

I guess it's a switch structure.  
I then deduce backwards.

To normally return, 156d <- 1566 <- 1562.  
We have multiple way to 1562.
1566->156d: ch=%al in 1562

The jump table:

```sh
(gdb) x/8x $rip+0x1039
0x555555556490: 0xffffefd7      0xffffeff9      0xfffff01b      0xfffff03d
0x5555555564a0: 0xfffff05c      0xfffff077      0xfffff092      0xfffff0ad
```

can be translated into:

```txt
-4137, -4130, -4069, -4035
-4004, -3977, -3950, -3923
```

Above is the value of %rax after 1457. Since %rdx is 0x1457+0x1039, in `145e`, it would jump to this number minus `%rax`. `d1` determines the target:

```txt
1467
146e
14ab
14cd
14ec
1507
1522
153d
```

case:

```txt
a <- d1

a = 0 => 1467
    %eax <- 0x70
    d2 == 0x2e9 / 745
    ch == %al   / p

a = 1 => 146e => bomb

a = 2 => 14ab
    %eax = 0x6d
    d2 == 0x91  / 145
    ch == %al   / m
```

```c
? phase_3(input) {
    int d1;
    int c;
    int d2;
    sscanf(input, "%d %c %d", &d1, &c, &d2);
}
```

## Phase 4

Use `sscanf` to read `%d` (one integer), storing in `0xc(%rsp)`.  
It pass `d` to function 4, which is recursive.
`f(n) = 7*f(n-1)`, de-recursion it, we get `f(n) = 7 ** n`.  
In `phase_4`, its return value should be 0x41a7==16807==7**5.  
So we got it.

## Phase 5

The inputted string's length is evaluated, which should be 6.  
Then there's a loop, `%eax` is the loop variable. The loop continues until `i` is six. `i` is also the index for visiting the input string(in `rbx`). `%rcx` holds a pointer to a const string.  
The loop body:  
    - read `str[i]`
    - visit `rcx[str[i]&0xf]`

## Phase 6

I guess it's a linked list or thing...
The 5th node should equal to node0 after calling fun6.
