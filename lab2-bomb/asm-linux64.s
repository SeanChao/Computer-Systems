
bomb:     file format elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0xc83>
 248:	78 38                	js     282 <_init-0xc76>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 02                	add    %al,(%rdx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 06                	add    %al,(%rsi)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 20                	add    %ah,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 21                	add    %ah,(%rcx)
 285:	43 d9 11             	rex.XB fsts (%r9)
 288:	8a d0                	mov    %al,%dl
 28a:	5c                   	pop    %rsp
 28b:	46                   	rex.RX
 28c:	43 32 e1             	rex.XB xor %r9b,%spl
 28f:	8e 06                	mov    (%rsi),%es
 291:	3c 5a                	cmp    $0x5a,%al
 293:	b1 53                	mov    $0x53,%cl
 295:	8e                   	.byte 0x8e
 296:	3d                   	.byte 0x3d
 297:	ee                   	out    %al,(%dx)

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	02 00                	add    (%rax),%al
 29a:	00 00                	add    %al,(%rax)
 29c:	27                   	(bad)  
 29d:	00 00                	add    %al,(%rax)
 29f:	00 01                	add    %al,(%rcx)
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 06                	add    %al,(%rsi)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 20                	add    %ah,(%rax)
 2ab:	00 80 01 10 00 27    	add    %al,0x27001001(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 28                	add    %ch,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 29                	add    %ch,(%rcx)
 2b9:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
 2be:	61                   	(bad)  
 2bf:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000002c0 <.dynsym>:
	...
 2d8:	c5 00 00             	(bad)  
 2db:	00 12                	add    %dl,(%rdx)
	...
 2ed:	00 00                	add    %al,(%rax)
 2ef:	00 8b 00 00 00 12    	add    %cl,0x12000000(%rbx)
	...
 305:	00 00                	add    %al,(%rax)
 307:	00 21                	add    %ah,(%rcx)
 309:	01 00                	add    %eax,(%rax)
 30b:	00 20                	add    %ah,(%rax)
	...
 31d:	00 00                	add    %al,(%rax)
 31f:	00 21                	add    %ah,(%rcx)
 321:	00 00                	add    %al,(%rax)
 323:	00 12                	add    %dl,(%rdx)
	...
 335:	00 00                	add    %al,(%rax)
 337:	00 5a 00             	add    %bl,0x0(%rdx)
 33a:	00 00                	add    %al,(%rax)
 33c:	12 00                	adc    (%rax),%al
	...
 34e:	00 00                	add    %al,(%rax)
 350:	e6 00                	out    %al,$0x0
 352:	00 00                	add    %al,(%rax)
 354:	12 00                	adc    (%rax),%al
	...
 366:	00 00                	add    %al,(%rax)
 368:	a9 00 00 00 12       	test   $0x12000000,%eax
	...
 37d:	00 00                	add    %al,(%rax)
 37f:	00 cc                	add    %cl,%ah
 381:	00 00                	add    %al,(%rax)
 383:	00 12                	add    %dl,(%rdx)
	...
 395:	00 00                	add    %al,(%rax)
 397:	00 f3                	add    %dh,%bl
 399:	00 00                	add    %al,(%rax)
 39b:	00 12                	add    %dl,(%rdx)
	...
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 6f 00             	add    %ch,0x0(%rdi)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	12 00                	adc    (%rax),%al
	...
 3c6:	00 00                	add    %al,(%rax)
 3c8:	e1 00                	loope  3ca <_init-0xb2e>
 3ca:	00 00                	add    %al,(%rax)
 3cc:	12 00                	adc    (%rax),%al
	...
 3de:	00 00                	add    %al,(%rax)
 3e0:	aa                   	stos   %al,%es:(%rdi)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 12                	add    %dl,(%rdx)
	...
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 a3 00 00 00 12    	add    %ah,0x12000000(%rbx)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 0f                	add    %cl,(%rdi)
 411:	01 00                	add    %eax,(%rax)
 413:	00 12                	add    %dl,(%rdx)
	...
 425:	00 00                	add    %al,(%rax)
 427:	00 7d 00             	add    %bh,0x0(%rbp)
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	83 00 00             	addl   $0x0,(%rax)
 443:	00 12                	add    %dl,(%rdx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 53 00             	add    %dl,0x0(%rbx)
 45a:	00 00                	add    %al,(%rax)
 45c:	12 00                	adc    (%rax),%al
	...
 46e:	00 00                	add    %al,(%rax)
 470:	d3 00                	roll   %cl,(%rax)
 472:	00 00                	add    %al,(%rax)
 474:	12 00                	adc    (%rax),%al
	...
 486:	00 00                	add    %al,(%rax)
 488:	f2 00 00             	repnz add %al,(%rax)
 48b:	00 12                	add    %dl,(%rdx)
	...
 49d:	00 00                	add    %al,(%rax)
 49f:	00 3d 01 00 00 20    	add    %bh,0x20000001(%rip)        # 200004a6 <_end+0x1fdfb5f6>
	...
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 76 00             	add    %dh,0x0(%rsi)
 4ba:	00 00                	add    %al,(%rax)
 4bc:	12 00                	adc    (%rax),%al
	...
 4ce:	00 00                	add    %al,(%rax)
 4d0:	65 00 00             	add    %al,%gs:(%rax)
 4d3:	00 12                	add    %dl,(%rdx)
	...
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 1a                	add    %bl,(%rdx)
 4e9:	00 00                	add    %al,(%rax)
 4eb:	00 12                	add    %dl,(%rdx)
	...
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 3b                	add    %bh,(%rbx)
 501:	00 00                	add    %al,(%rax)
 503:	00 12                	add    %dl,(%rdx)
	...
 515:	00 00                	add    %al,(%rax)
 517:	00 ec                	add    %ch,%ah
 519:	00 00                	add    %al,(%rax)
 51b:	00 12                	add    %dl,(%rdx)
	...
 52d:	00 00                	add    %al,(%rax)
 52f:	00 12                	add    %dl,(%rdx)
 531:	00 00                	add    %al,(%rax)
 533:	00 12                	add    %dl,(%rdx)
	...
 545:	00 00                	add    %al,(%rax)
 547:	00 35 00 00 00 12    	add    %dh,0x12000000(%rip)        # 1200054d <_end+0x11dfb69d>
	...
 55d:	00 00                	add    %al,(%rax)
 55f:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
 563:	00 20                	add    %ah,(%rax)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 b0 00 00 00 12    	add    %dh,0x12000000(%rax)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 2d 00 00 00 12    	add    %ch,0x12000000(%rip)        # 12000595 <_end+0x11dfb6e5>
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 28                	add    %ch,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 12                	add    %dl,(%rdx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 4b 00             	add    %cl,0x0(%rbx)
 5c2:	00 00                	add    %al,(%rax)
 5c4:	12 00                	adc    (%rax),%al
	...
 5d6:	00 00                	add    %al,(%rax)
 5d8:	e5 00                	in     $0x0,%eax
 5da:	00 00                	add    %al,(%rax)
 5dc:	12 00                	adc    (%rax),%al
	...
 5ee:	00 00                	add    %al,(%rax)
 5f0:	60                   	(bad)  
 5f1:	01 00                	add    %eax,(%rax)
 5f3:	00 20                	add    %ah,(%rax)
	...
 605:	00 00                	add    %al,(%rax)
 607:	00 fa                	add    %bh,%dl
 609:	00 00                	add    %al,(%rax)
 60b:	00 12                	add    %dl,(%rdx)
	...
 621:	01 00                	add    %eax,(%rax)
 623:	00 22                	add    %ah,(%rdx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 b7 00 00 00 12    	add    %dh,0x12000000(%rdi)
	...
 64d:	00 00                	add    %al,(%rax)
 64f:	00 0b                	add    %cl,(%rbx)
 651:	00 00                	add    %al,(%rax)
 653:	00 12                	add    %dl,(%rdx)
	...
 665:	00 00                	add    %al,(%rax)
 667:	00 9c 00 00 00 11 00 	add    %bl,0x110000(%rax,%rax,1)
 66e:	1a 00                	sbb    (%rax),%al
 670:	e0 47                	loopne 6b9 <_init-0x83f>
 672:	20 00                	and    %al,(%rax)
 674:	00 00                	add    %al,(%rax)
 676:	00 00                	add    %al,(%rax)
 678:	08 00                	or     %al,(%rax)
 67a:	00 00                	add    %al,(%rax)
 67c:	00 00                	add    %al,(%rax)
 67e:	00 00                	add    %al,(%rax)
 680:	5f                   	pop    %rdi
 681:	00 00                	add    %al,(%rax)
 683:	00 11                	add    %dl,(%rcx)
 685:	00 1a                	add    %bl,(%rdx)
 687:	00 f0                	add    %dh,%al
 689:	47 20 00             	rex.RXB and %r8b,(%r8)
 68c:	00 00                	add    %al,(%rax)
 68e:	00 00                	add    %al,(%rax)
 690:	08 00                	or     %al,(%rax)
 692:	00 00                	add    %al,(%rax)
 694:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000698 <.dynstr>:
 698:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 69c:	63 2e                	movslq (%rsi),%ebp
 69e:	73 6f                	jae    70f <_init-0x7e9>
 6a0:	2e 36 00 73 6f       	cs add %dh,%ss:0x6f(%rbx)
 6a5:	63 6b 65             	movslq 0x65(%rbx),%ebp
 6a8:	74 00                	je     6aa <_init-0x84e>
 6aa:	63 75 73             	movslq 0x73(%rbp),%esi
 6ad:	65 72 69             	gs jb  719 <_init-0x7df>
 6b0:	64 00 66 66          	add    %ah,%fs:0x66(%rsi)
 6b4:	6c                   	insb   (%dx),%es:(%rdi)
 6b5:	75 73                	jne    72a <_init-0x7ce>
 6b7:	68 00 73 74 72       	pushq  $0x72747300
 6bc:	63 70 79             	movslq 0x79(%rax),%esi
 6bf:	00 65 78             	add    %ah,0x78(%rbp)
 6c2:	69 74 00 73 70 72 69 	imul   $0x6e697270,0x73(%rax,%rax,1),%esi
 6c9:	6e 
 6ca:	74 66                	je     732 <_init-0x7c6>
 6cc:	00 66 6f             	add    %ah,0x6f(%rsi)
 6cf:	70 65                	jo     736 <_init-0x7c2>
 6d1:	6e                   	outsb  %ds:(%rsi),(%dx)
 6d2:	00 5f 5f             	add    %bl,0x5f(%rdi)
 6d5:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
 6dc:	73 73                	jae    751 <_init-0x7a7>
 6de:	63 61 6e             	movslq 0x6e(%rcx),%esp
 6e1:	66 00 63 6f          	data16 add %ah,0x6f(%rbx)
 6e5:	6e                   	outsb  %ds:(%rsi),(%dx)
 6e6:	6e                   	outsb  %ds:(%rsi),(%dx)
 6e7:	65 63 74 00 73       	movslq %gs:0x73(%rax,%rax,1),%esi
 6ec:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%rdi),%esp
 6f3:	75 74                	jne    769 <_init-0x78f>
 6f5:	73 00                	jae    6f7 <_init-0x801>
 6f7:	73 74                	jae    76d <_init-0x78b>
 6f9:	64 69 6e 00 69 6e 65 	imul   $0x74656e69,%fs:0x0(%rsi),%ebp
 700:	74 
 701:	5f                   	pop    %rdi
 702:	70 74                	jo     778 <_init-0x780>
 704:	6f                   	outsl  %ds:(%rsi),(%dx)
 705:	6e                   	outsb  %ds:(%rsi),(%dx)
 706:	00 72 65             	add    %dh,0x65(%rdx)
 709:	77 69                	ja     774 <_init-0x784>
 70b:	6e                   	outsb  %ds:(%rsi),(%dx)
 70c:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
 710:	72 74                	jb     786 <_init-0x772>
 712:	6f                   	outsl  %ds:(%rsi),(%dx)
 713:	6c                   	insb   (%dx),%es:(%rdi)
 714:	00 66 67             	add    %ah,0x67(%rsi)
 717:	65 74 73             	gs je  78d <_init-0x76b>
 71a:	00 74 6d 70          	add    %dh,0x70(%rbp,%rbp,2)
 71e:	66 69 6c 65 00 5f 5f 	imul   $0x5f5f,0x0(%rbp,%riz,2),%bp
 725:	65 72 72             	gs jb  79a <_init-0x75e>
 728:	6e                   	outsb  %ds:(%rsi),(%dx)
 729:	6f                   	outsl  %ds:(%rsi),(%dx)
 72a:	5f                   	pop    %rdi
 72b:	6c                   	insb   (%dx),%es:(%rdi)
 72c:	6f                   	outsl  %ds:(%rsi),(%dx)
 72d:	63 61 74             	movslq 0x74(%rcx),%esp
 730:	69 6f 6e 00 73 74 64 	imul   $0x64747300,0x6e(%rdi),%ebp
 737:	6f                   	outsl  %ds:(%rsi),(%dx)
 738:	75 74                	jne    7ae <_init-0x74a>
 73a:	00 66 70             	add    %ah,0x70(%rsi)
 73d:	75 74                	jne    7b3 <_init-0x745>
 73f:	63 00                	movslq (%rax),%eax
 741:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
 746:	65 00 73 74          	add    %dh,%gs:0x74(%rbx)
 74a:	72 63                	jb     7af <_init-0x749>
 74c:	61                   	(bad)  
 74d:	74 00                	je     74f <_init-0x7a9>
 74f:	5f                   	pop    %rdi
 750:	5f                   	pop    %rdi
 751:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 755:	65 5f                	gs pop %rdi
 757:	62                   	(bad)  
 758:	5f                   	pop    %rdi
 759:	6c                   	insb   (%dx),%es:(%rdi)
 75a:	6f                   	outsl  %ds:(%rsi),(%dx)
 75b:	63 00                	movslq (%rax),%eax
 75d:	67 65 74 65          	addr32 gs je 7c6 <_init-0x732>
 761:	6e                   	outsb  %ds:(%rsi),(%dx)
 762:	76 00                	jbe    764 <_init-0x794>
 764:	73 79                	jae    7df <_init-0x719>
 766:	73 74                	jae    7dc <_init-0x71c>
 768:	65 6d                	gs insl (%dx),%es:(%rdi)
 76a:	00 67 65             	add    %ah,0x65(%rdi)
 76d:	74 68                	je     7d7 <_init-0x721>
 76f:	6f                   	outsl  %ds:(%rsi),(%dx)
 770:	73 74                	jae    7e6 <_init-0x712>
 772:	62                   	(bad)  
 773:	79 6e                	jns    7e3 <_init-0x715>
 775:	61                   	(bad)  
 776:	6d                   	insl   (%dx),%es:(%rdi)
 777:	65 00 64 75 70       	add    %ah,%gs:0x70(%rbp,%rsi,2)
 77c:	00 66 77             	add    %ah,0x77(%rsi)
 77f:	72 69                	jb     7ea <_init-0x70e>
 781:	74 65                	je     7e8 <_init-0x710>
 783:	00 62 63             	add    %ah,0x63(%rdx)
 786:	6f                   	outsl  %ds:(%rsi),(%dx)
 787:	70 79                	jo     802 <_init-0x6f6>
 789:	00 66 70             	add    %ah,0x70(%rsi)
 78c:	72 69                	jb     7f7 <_init-0x701>
 78e:	6e                   	outsb  %ds:(%rsi),(%dx)
 78f:	74 66                	je     7f7 <_init-0x701>
 791:	00 73 6c             	add    %dh,0x6c(%rbx)
 794:	65 65 70 00          	gs gs jo 798 <_init-0x760>
 798:	5f                   	pop    %rdi
 799:	5f                   	pop    %rdi
 79a:	63 78 61             	movslq 0x61(%rax),%edi
 79d:	5f                   	pop    %rdi
 79e:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 7a4:	7a 65                	jp     80b <_init-0x6ed>
 7a6:	00 5f 5f             	add    %bl,0x5f(%rdi)
 7a9:	6c                   	insb   (%dx),%es:(%rdi)
 7aa:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 7b1:	72 74                	jb     827 <_init-0x6d1>
 7b3:	5f                   	pop    %rdi
 7b4:	6d                   	insl   (%dx),%es:(%rdi)
 7b5:	61                   	(bad)  
 7b6:	69 6e 00 5f 49 54 4d 	imul   $0x4d54495f,0x0(%rsi),%ebp
 7bd:	5f                   	pop    %rdi
 7be:	64 65 72 65          	fs gs jb 827 <_init-0x6d1>
 7c2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 7c9:	4d 
 7ca:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 7cc:	6f                   	outsl  %ds:(%rsi),(%dx)
 7cd:	6e                   	outsb  %ds:(%rsi),(%dx)
 7ce:	65 54                	gs push %rsp
 7d0:	61                   	(bad)  
 7d1:	62                   	(bad)  
 7d2:	6c                   	insb   (%dx),%es:(%rdi)
 7d3:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 7d7:	67 6d                	insl   (%dx),%es:(%edi)
 7d9:	6f                   	outsl  %ds:(%rsi),(%dx)
 7da:	6e                   	outsb  %ds:(%rsi),(%dx)
 7db:	5f                   	pop    %rdi
 7dc:	73 74                	jae    852 <_init-0x6a6>
 7de:	61                   	(bad)  
 7df:	72 74                	jb     855 <_init-0x6a3>
 7e1:	5f                   	pop    %rdi
 7e2:	5f                   	pop    %rdi
 7e3:	00 5f 4a             	add    %bl,0x4a(%rdi)
 7e6:	76 5f                	jbe    847 <_init-0x6b1>
 7e8:	52                   	push   %rdx
 7e9:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
 7f0:	43 6c 
 7f2:	61                   	(bad)  
 7f3:	73 73                	jae    868 <_init-0x690>
 7f5:	65 73 00             	gs jae 7f8 <_init-0x700>
 7f8:	5f                   	pop    %rdi
 7f9:	49 54                	rex.WB push %r12
 7fb:	4d 5f                	rex.WRB pop %r15
 7fd:	72 65                	jb     864 <_init-0x694>
 7ff:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 806:	4d 
 807:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 809:	6f                   	outsl  %ds:(%rsi),(%dx)
 80a:	6e                   	outsb  %ds:(%rsi),(%dx)
 80b:	65 54                	gs push %rsp
 80d:	61                   	(bad)  
 80e:	62                   	(bad)  
 80f:	6c                   	insb   (%dx),%es:(%rdi)
 810:	65 00 47 4c          	add    %al,%gs:0x4c(%rdi)
 814:	49                   	rex.WB
 815:	42                   	rex.X
 816:	43 5f                	rex.XB pop %r15
 818:	32 2e                	xor    (%rsi),%ch
 81a:	33 00                	xor    (%rax),%eax
 81c:	47                   	rex.RXB
 81d:	4c                   	rex.WR
 81e:	49                   	rex.WB
 81f:	42                   	rex.X
 820:	43 5f                	rex.XB pop %r15
 822:	32 2e                	xor    (%rsi),%ch
 824:	37                   	(bad)  
 825:	00 47 4c             	add    %al,0x4c(%rdi)
 828:	49                   	rex.WB
 829:	42                   	rex.X
 82a:	43 5f                	rex.XB pop %r15
 82c:	32 2e                	xor    (%rsi),%ch
 82e:	32 2e                	xor    (%rsi),%ch
 830:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000000832 <.gnu.version>:
 832:	00 00                	add    %al,(%rax)
 834:	02 00                	add    (%rax),%al
 836:	02 00                	add    (%rax),%al
 838:	00 00                	add    %al,(%rax)
 83a:	02 00                	add    (%rax),%al
 83c:	02 00                	add    (%rax),%al
 83e:	02 00                	add    (%rax),%al
 840:	02 00                	add    (%rax),%al
 842:	02 00                	add    (%rax),%al
 844:	02 00                	add    (%rax),%al
 846:	02 00                	add    (%rax),%al
 848:	02 00                	add    (%rax),%al
 84a:	02 00                	add    (%rax),%al
 84c:	02 00                	add    (%rax),%al
 84e:	02 00                	add    (%rax),%al
 850:	02 00                	add    (%rax),%al
 852:	02 00                	add    (%rax),%al
 854:	02 00                	add    (%rax),%al
 856:	02 00                	add    (%rax),%al
 858:	02 00                	add    (%rax),%al
 85a:	00 00                	add    %al,(%rax)
 85c:	02 00                	add    (%rax),%al
 85e:	02 00                	add    (%rax),%al
 860:	02 00                	add    (%rax),%al
 862:	03 00                	add    (%rax),%eax
 864:	02 00                	add    (%rax),%al
 866:	02 00                	add    (%rax),%al
 868:	02 00                	add    (%rax),%al
 86a:	00 00                	add    %al,(%rax)
 86c:	02 00                	add    (%rax),%al
 86e:	02 00                	add    (%rax),%al
 870:	02 00                	add    (%rax),%al
 872:	02 00                	add    (%rax),%al
 874:	02 00                	add    (%rax),%al
 876:	00 00                	add    %al,(%rax)
 878:	02 00                	add    (%rax),%al
 87a:	02 00                	add    (%rax),%al
 87c:	04 00                	add    $0x0,%al
 87e:	02 00                	add    (%rax),%al
 880:	02 00                	add    (%rax),%al
 882:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000888 <.gnu.version_r>:
 888:	01 00                	add    %eax,(%rax)
 88a:	03 00                	add    (%rax),%eax
 88c:	01 00                	add    %eax,(%rax)
 88e:	00 00                	add    %al,(%rax)
 890:	10 00                	adc    %al,(%rax)
 892:	00 00                	add    %al,(%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 00                	add    %al,(%rax)
 898:	13 69 69             	adc    0x69(%rcx),%ebp
 89b:	0d 00 00 04 00       	or     $0x40000,%eax
 8a0:	7a 01                	jp     8a3 <_init-0x655>
 8a2:	00 00                	add    %al,(%rax)
 8a4:	10 00                	adc    %al,(%rax)
 8a6:	00 00                	add    %al,(%rax)
 8a8:	17                   	(bad)  
 8a9:	69 69 0d 00 00 03 00 	imul   $0x30000,0xd(%rcx),%ebp
 8b0:	84 01                	test   %al,(%rcx)
 8b2:	00 00                	add    %al,(%rax)
 8b4:	10 00                	adc    %al,(%rax)
 8b6:	00 00                	add    %al,(%rax)
 8b8:	75 1a                	jne    8d4 <_init-0x624>
 8ba:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 8c0:	8e 01                	mov    (%rcx),%es
 8c2:	00 00                	add    %al,(%rax)
 8c4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000008c8 <.rela.dyn>:
 8c8:	d8 3d 20 00 00 00    	fdivrs 0x20(%rip)        # 8ee <_init-0x60a>
 8ce:	00 00                	add    %al,(%rax)
 8d0:	08 00                	or     %al,(%rax)
 8d2:	00 00                	add    %al,(%rax)
 8d4:	00 00                	add    %al,(%rax)
 8d6:	00 00                	add    %al,(%rax)
 8d8:	30 12                	xor    %dl,(%rdx)
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 00                	add    %al,(%rax)
 8de:	00 00                	add    %al,(%rax)
 8e0:	e0 3d                	loopne 91f <_init-0x5d9>
 8e2:	20 00                	and    %al,(%rax)
 8e4:	00 00                	add    %al,(%rax)
 8e6:	00 00                	add    %al,(%rax)
 8e8:	08 00                	or     %al,(%rax)
 8ea:	00 00                	add    %al,(%rax)
 8ec:	00 00                	add    %al,(%rax)
 8ee:	00 00                	add    %al,(%rax)
 8f0:	f0 11 00             	lock adc %eax,(%rax)
 8f3:	00 00                	add    %al,(%rax)
 8f5:	00 00                	add    %al,(%rax)
 8f7:	00 28                	add    %ch,(%rax)
 8f9:	41 20 00             	and    %al,(%r8)
 8fc:	00 00                	add    %al,(%rax)
 8fe:	00 00                	add    %al,(%rax)
 900:	08 00                	or     %al,(%rax)
 902:	00 00                	add    %al,(%rax)
 904:	00 00                	add    %al,(%rax)
 906:	00 00                	add    %al,(%rax)
 908:	28 41 20             	sub    %al,0x20(%rcx)
 90b:	00 00                	add    %al,(%rax)
 90d:	00 00                	add    %al,(%rax)
 90f:	00 78 46             	add    %bh,0x46(%rax)
 912:	20 00                	and    %al,(%rax)
 914:	00 00                	add    %al,(%rax)
 916:	00 00                	add    %al,(%rax)
 918:	08 00                	or     %al,(%rax)
 91a:	00 00                	add    %al,(%rax)
 91c:	00 00                	add    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	90                   	nop
 921:	46 20 00             	rex.RX and %r8b,(%rax)
 924:	00 00                	add    %al,(%rax)
 926:	00 00                	add    %al,(%rax)
 928:	80 46 20 00          	addb   $0x0,0x20(%rsi)
 92c:	00 00                	add    %al,(%rax)
 92e:	00 00                	add    %al,(%rax)
 930:	08 00                	or     %al,(%rax)
 932:	00 00                	add    %al,(%rax)
 934:	00 00                	add    %al,(%rax)
 936:	00 00                	add    %al,(%rax)
 938:	b0 46                	mov    $0x46,%al
 93a:	20 00                	and    %al,(%rax)
 93c:	00 00                	add    %al,(%rax)
 93e:	00 00                	add    %al,(%rax)
 940:	98                   	cwtl   
 941:	46 20 00             	rex.RX and %r8b,(%rax)
 944:	00 00                	add    %al,(%rax)
 946:	00 00                	add    %al,(%rax)
 948:	08 00                	or     %al,(%rax)
 94a:	00 00                	add    %al,(%rax)
 94c:	00 00                	add    %al,(%rax)
 94e:	00 00                	add    %al,(%rax)
 950:	10 47 20             	adc    %al,0x20(%rdi)
 953:	00 00                	add    %al,(%rax)
 955:	00 00                	add    %al,(%rax)
 957:	00 a0 46 20 00 00    	add    %ah,0x2046(%rax)
 95d:	00 00                	add    %al,(%rax)
 95f:	00 08                	add    %cl,(%rax)
 961:	00 00                	add    %al,(%rax)
 963:	00 00                	add    %al,(%rax)
 965:	00 00                	add    %al,(%rax)
 967:	00 d0                	add    %dl,%al
 969:	46 20 00             	rex.RX and %r8b,(%rax)
 96c:	00 00                	add    %al,(%rax)
 96e:	00 00                	add    %al,(%rax)
 970:	b8 46 20 00 00       	mov    $0x2046,%eax
 975:	00 00                	add    %al,(%rax)
 977:	00 08                	add    %cl,(%rax)
 979:	00 00                	add    %al,(%rax)
 97b:	00 00                	add    %al,(%rax)
 97d:	00 00                	add    %al,(%rax)
 97f:	00 f0                	add    %dh,%al
 981:	46 20 00             	rex.RX and %r8b,(%rax)
 984:	00 00                	add    %al,(%rax)
 986:	00 00                	add    %al,(%rax)
 988:	c0 46 20 00          	rolb   $0x0,0x20(%rsi)
 98c:	00 00                	add    %al,(%rax)
 98e:	00 00                	add    %al,(%rax)
 990:	08 00                	or     %al,(%rax)
 992:	00 00                	add    %al,(%rax)
 994:	00 00                	add    %al,(%rax)
 996:	00 00                	add    %al,(%rax)
 998:	30 47 20             	xor    %al,0x20(%rdi)
 99b:	00 00                	add    %al,(%rax)
 99d:	00 00                	add    %al,(%rax)
 99f:	00 d8                	add    %bl,%al
 9a1:	46 20 00             	rex.RX and %r8b,(%rax)
 9a4:	00 00                	add    %al,(%rax)
 9a6:	00 00                	add    %al,(%rax)
 9a8:	08 00                	or     %al,(%rax)
 9aa:	00 00                	add    %al,(%rax)
 9ac:	00 00                	add    %al,(%rax)
 9ae:	00 00                	add    %al,(%rax)
 9b0:	e0 41                	loopne 9f3 <_init-0x505>
 9b2:	20 00                	and    %al,(%rax)
 9b4:	00 00                	add    %al,(%rax)
 9b6:	00 00                	add    %al,(%rax)
 9b8:	e0 46                	loopne a00 <_init-0x4f8>
 9ba:	20 00                	and    %al,(%rax)
 9bc:	00 00                	add    %al,(%rax)
 9be:	00 00                	add    %al,(%rax)
 9c0:	08 00                	or     %al,(%rax)
 9c2:	00 00                	add    %al,(%rax)
 9c4:	00 00                	add    %al,(%rax)
 9c6:	00 00                	add    %al,(%rax)
 9c8:	a0 41 20 00 00 00 00 	movabs 0xf800000000002041,%al
 9cf:	00 f8 
 9d1:	46 20 00             	rex.RX and %r8b,(%rax)
 9d4:	00 00                	add    %al,(%rax)
 9d6:	00 00                	add    %al,(%rax)
 9d8:	08 00                	or     %al,(%rax)
 9da:	00 00                	add    %al,(%rax)
 9dc:	00 00                	add    %al,(%rax)
 9de:	00 00                	add    %al,(%rax)
 9e0:	40                   	rex
 9e1:	41 20 00             	and    %al,(%r8)
 9e4:	00 00                	add    %al,(%rax)
 9e6:	00 00                	add    %al,(%rax)
 9e8:	00 47 20             	add    %al,0x20(%rdi)
 9eb:	00 00                	add    %al,(%rax)
 9ed:	00 00                	add    %al,(%rax)
 9ef:	00 08                	add    %cl,(%rax)
	...
 9f9:	42 20 00             	rex.X and %al,(%rax)
 9fc:	00 00                	add    %al,(%rax)
 9fe:	00 00                	add    %al,(%rax)
 a00:	18 47 20             	sbb    %al,0x20(%rdi)
 a03:	00 00                	add    %al,(%rax)
 a05:	00 00                	add    %al,(%rax)
 a07:	00 08                	add    %cl,(%rax)
 a09:	00 00                	add    %al,(%rax)
 a0b:	00 00                	add    %al,(%rax)
 a0d:	00 00                	add    %al,(%rax)
 a0f:	00 60 41             	add    %ah,0x41(%rax)
 a12:	20 00                	and    %al,(%rax)
 a14:	00 00                	add    %al,(%rax)
 a16:	00 00                	add    %al,(%rax)
 a18:	20 47 20             	and    %al,0x20(%rdi)
 a1b:	00 00                	add    %al,(%rax)
 a1d:	00 00                	add    %al,(%rax)
 a1f:	00 08                	add    %cl,(%rax)
 a21:	00 00                	add    %al,(%rax)
 a23:	00 00                	add    %al,(%rax)
 a25:	00 00                	add    %al,(%rax)
 a27:	00 c0                	add    %al,%al
 a29:	41 20 00             	and    %al,(%r8)
 a2c:	00 00                	add    %al,(%rax)
 a2e:	00 00                	add    %al,(%rax)
 a30:	38 47 20             	cmp    %al,0x20(%rdi)
 a33:	00 00                	add    %al,(%rax)
 a35:	00 00                	add    %al,(%rax)
 a37:	00 08                	add    %cl,(%rax)
 a39:	00 00                	add    %al,(%rax)
 a3b:	00 00                	add    %al,(%rax)
 a3d:	00 00                	add    %al,(%rax)
 a3f:	00 80 41 20 00 00    	add    %al,0x2041(%rax)
 a45:	00 00                	add    %al,(%rax)
 a47:	00 40 47             	add    %al,0x47(%rax)
 a4a:	20 00                	and    %al,(%rax)
 a4c:	00 00                	add    %al,(%rax)
 a4e:	00 00                	add    %al,(%rax)
 a50:	08 00                	or     %al,(%rax)
 a52:	00 00                	add    %al,(%rax)
 a54:	00 00                	add    %al,(%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	20 42 20             	and    %al,0x20(%rdx)
 a5b:	00 00                	add    %al,(%rax)
 a5d:	00 00                	add    %al,(%rax)
 a5f:	00 58 47             	add    %bl,0x47(%rax)
 a62:	20 00                	and    %al,(%rax)
 a64:	00 00                	add    %al,(%rax)
 a66:	00 00                	add    %al,(%rax)
 a68:	08 00                	or     %al,(%rax)
 a6a:	00 00                	add    %al,(%rax)
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 00                	add    %al,(%rax)
 a70:	60                   	(bad)  
 a71:	47 20 00             	rex.RXB and %r8b,(%r8)
 a74:	00 00                	add    %al,(%rax)
 a76:	00 00                	add    %al,(%rax)
 a78:	68 47 20 00 00       	pushq  $0x2047
 a7d:	00 00                	add    %al,(%rax)
 a7f:	00 08                	add    %cl,(%rax)
 a81:	00 00                	add    %al,(%rax)
 a83:	00 00                	add    %al,(%rax)
 a85:	00 00                	add    %al,(%rax)
 a87:	00 70 47             	add    %dh,0x47(%rax)
 a8a:	20 00                	and    %al,(%rax)
 a8c:	00 00                	add    %al,(%rax)
 a8e:	00 00                	add    %al,(%rax)
 a90:	78 47                	js     ad9 <_init-0x41f>
 a92:	20 00                	and    %al,(%rax)
 a94:	00 00                	add    %al,(%rax)
 a96:	00 00                	add    %al,(%rax)
 a98:	08 00                	or     %al,(%rax)
 a9a:	00 00                	add    %al,(%rax)
 a9c:	00 00                	add    %al,(%rax)
 a9e:	00 00                	add    %al,(%rax)
 aa0:	80 47 20 00          	addb   $0x0,0x20(%rdi)
 aa4:	00 00                	add    %al,(%rax)
 aa6:	00 00                	add    %al,(%rax)
 aa8:	88 47 20             	mov    %al,0x20(%rdi)
 aab:	00 00                	add    %al,(%rax)
 aad:	00 00                	add    %al,(%rax)
 aaf:	00 08                	add    %cl,(%rax)
 ab1:	00 00                	add    %al,(%rax)
 ab3:	00 00                	add    %al,(%rax)
 ab5:	00 00                	add    %al,(%rax)
 ab7:	00 90 47 20 00 00    	add    %dl,0x2047(%rax)
 abd:	00 00                	add    %al,(%rax)
 abf:	00 98 47 20 00 00    	add    %bl,0x2047(%rax)
 ac5:	00 00                	add    %al,(%rax)
 ac7:	00 08                	add    %cl,(%rax)
 ac9:	00 00                	add    %al,(%rax)
 acb:	00 00                	add    %al,(%rax)
 acd:	00 00                	add    %al,(%rax)
 acf:	00 a0 47 20 00 00    	add    %ah,0x2047(%rax)
 ad5:	00 00                	add    %al,(%rax)
 ad7:	00 a8 47 20 00 00    	add    %ch,0x2047(%rax)
 add:	00 00                	add    %al,(%rax)
 adf:	00 08                	add    %cl,(%rax)
 ae1:	00 00                	add    %al,(%rax)
 ae3:	00 00                	add    %al,(%rax)
 ae5:	00 00                	add    %al,(%rax)
 ae7:	00 b0 47 20 00 00    	add    %dh,0x2047(%rax)
 aed:	00 00                	add    %al,(%rax)
 aef:	00 b8 47 20 00 00    	add    %bh,0x2047(%rax)
 af5:	00 00                	add    %al,(%rax)
 af7:	00 08                	add    %cl,(%rax)
 af9:	00 00                	add    %al,(%rax)
 afb:	00 00                	add    %al,(%rax)
 afd:	00 00                	add    %al,(%rax)
 aff:	00 c0                	add    %al,%al
 b01:	47 20 00             	rex.RXB and %r8b,(%r8)
 b04:	00 00                	add    %al,(%rax)
 b06:	00 00                	add    %al,(%rax)
 b08:	c8 47 20 00          	enterq $0x2047,$0x0
 b0c:	00 00                	add    %al,(%rax)
 b0e:	00 00                	add    %al,(%rax)
 b10:	08 00                	or     %al,(%rax)
 b12:	00 00                	add    %al,(%rax)
 b14:	00 00                	add    %al,(%rax)
 b16:	00 00                	add    %al,(%rax)
 b18:	d0 47 20             	rolb   0x20(%rdi)
 b1b:	00 00                	add    %al,(%rax)
 b1d:	00 00                	add    %al,(%rax)
 b1f:	00 d8                	add    %bl,%al
 b21:	47 20 00             	rex.RXB and %r8b,(%r8)
 b24:	00 00                	add    %al,(%rax)
 b26:	00 00                	add    %al,(%rax)
 b28:	08 00                	or     %al,(%rax)
 b2a:	00 00                	add    %al,(%rax)
 b2c:	00 00                	add    %al,(%rax)
 b2e:	00 00                	add    %al,(%rax)
 b30:	40                   	rex
 b31:	42 20 00             	rex.X and %al,(%rax)
 b34:	00 00                	add    %al,(%rax)
 b36:	00 00                	add    %al,(%rax)
 b38:	d0 3f                	sarb   (%rdi)
 b3a:	20 00                	and    %al,(%rax)
 b3c:	00 00                	add    %al,(%rax)
 b3e:	00 00                	add    %al,(%rax)
 b40:	06                   	(bad)  
 b41:	00 00                	add    %al,(%rax)
 b43:	00 03                	add    %al,(%rbx)
	...
 b4d:	00 00                	add    %al,(%rax)
 b4f:	00 d8                	add    %bl,%al
 b51:	3f                   	(bad)  
 b52:	20 00                	and    %al,(%rax)
 b54:	00 00                	add    %al,(%rax)
 b56:	00 00                	add    %al,(%rax)
 b58:	06                   	(bad)  
 b59:	00 00                	add    %al,(%rax)
 b5b:	00 0e                	add    %cl,(%rsi)
	...
 b65:	00 00                	add    %al,(%rax)
 b67:	00 e0                	add    %ah,%al
 b69:	3f                   	(bad)  
 b6a:	20 00                	and    %al,(%rax)
 b6c:	00 00                	add    %al,(%rax)
 b6e:	00 00                	add    %al,(%rax)
 b70:	06                   	(bad)  
 b71:	00 00                	add    %al,(%rax)
 b73:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
 b7e:	00 00                	add    %al,(%rax)
 b80:	e8 3f 20 00 00       	callq  2bc4 <__GNU_EH_FRAME_HDR+0x384>
 b85:	00 00                	add    %al,(%rax)
 b87:	00 06                	add    %al,(%rsi)
 b89:	00 00                	add    %al,(%rax)
 b8b:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
 b96:	00 00                	add    %al,(%rax)
 b98:	f0 3f                	lock (bad) 
 b9a:	20 00                	and    %al,(%rax)
 b9c:	00 00                	add    %al,(%rax)
 b9e:	00 00                	add    %al,(%rax)
 ba0:	06                   	(bad)  
 ba1:	00 00                	add    %al,(%rax)
 ba3:	00 22                	add    %ah,(%rdx)
	...
 bad:	00 00                	add    %al,(%rax)
 baf:	00 f8                	add    %bh,%al
 bb1:	3f                   	(bad)  
 bb2:	20 00                	and    %al,(%rax)
 bb4:	00 00                	add    %al,(%rax)
 bb6:	00 00                	add    %al,(%rax)
 bb8:	06                   	(bad)  
 bb9:	00 00                	add    %al,(%rax)
 bbb:	00 24 00             	add    %ah,(%rax,%rax,1)
	...
 bc6:	00 00                	add    %al,(%rax)
 bc8:	e0 47                	loopne c11 <_init-0x2e7>
 bca:	20 00                	and    %al,(%rax)
 bcc:	00 00                	add    %al,(%rax)
 bce:	00 00                	add    %al,(%rax)
 bd0:	05 00 00 00 27       	add    $0x27000000,%eax
	...
 bdd:	00 00                	add    %al,(%rax)
 bdf:	00 f0                	add    %dh,%al
 be1:	47 20 00             	rex.RXB and %r8b,(%r8)
 be4:	00 00                	add    %al,(%rax)
 be6:	00 00                	add    %al,(%rax)
 be8:	05 00 00 00 28       	add    $0x28000000,%eax
	...

Disassembly of section .rela.plt:

0000000000000bf8 <.rela.plt>:
 bf8:	18 40 20             	sbb    %al,0x20(%rax)
 bfb:	00 00                	add    %al,(%rax)
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 07                	add    %al,(%rdi)
 c01:	00 00                	add    %al,(%rax)
 c03:	00 01                	add    %al,(%rcx)
	...
 c0d:	00 00                	add    %al,(%rax)
 c0f:	00 20                	add    %ah,(%rax)
 c11:	40 20 00             	and    %al,(%rax)
 c14:	00 00                	add    %al,(%rax)
 c16:	00 00                	add    %al,(%rax)
 c18:	07                   	(bad)  
 c19:	00 00                	add    %al,(%rax)
 c1b:	00 02                	add    %al,(%rdx)
	...
 c25:	00 00                	add    %al,(%rax)
 c27:	00 28                	add    %ch,(%rax)
 c29:	40 20 00             	and    %al,(%rax)
 c2c:	00 00                	add    %al,(%rax)
 c2e:	00 00                	add    %al,(%rax)
 c30:	07                   	(bad)  
 c31:	00 00                	add    %al,(%rax)
 c33:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 c3e:	00 00                	add    %al,(%rax)
 c40:	30 40 20             	xor    %al,0x20(%rax)
 c43:	00 00                	add    %al,(%rax)
 c45:	00 00                	add    %al,(%rax)
 c47:	00 07                	add    %al,(%rdi)
 c49:	00 00                	add    %al,(%rax)
 c4b:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # c51 <_init-0x2a7>
 c51:	00 00                	add    %al,(%rax)
 c53:	00 00                	add    %al,(%rax)
 c55:	00 00                	add    %al,(%rax)
 c57:	00 38                	add    %bh,(%rax)
 c59:	40 20 00             	and    %al,(%rax)
 c5c:	00 00                	add    %al,(%rax)
 c5e:	00 00                	add    %al,(%rax)
 c60:	07                   	(bad)  
 c61:	00 00                	add    %al,(%rax)
 c63:	00 06                	add    %al,(%rsi)
	...
 c6d:	00 00                	add    %al,(%rax)
 c6f:	00 40 40             	add    %al,0x40(%rax)
 c72:	20 00                	and    %al,(%rax)
 c74:	00 00                	add    %al,(%rax)
 c76:	00 00                	add    %al,(%rax)
 c78:	07                   	(bad)  
 c79:	00 00                	add    %al,(%rax)
 c7b:	00 07                	add    %al,(%rdi)
	...
 c85:	00 00                	add    %al,(%rax)
 c87:	00 48 40             	add    %cl,0x40(%rax)
 c8a:	20 00                	and    %al,(%rax)
 c8c:	00 00                	add    %al,(%rax)
 c8e:	00 00                	add    %al,(%rax)
 c90:	07                   	(bad)  
 c91:	00 00                	add    %al,(%rax)
 c93:	00 08                	add    %cl,(%rax)
	...
 c9d:	00 00                	add    %al,(%rax)
 c9f:	00 50 40             	add    %dl,0x40(%rax)
 ca2:	20 00                	and    %al,(%rax)
 ca4:	00 00                	add    %al,(%rax)
 ca6:	00 00                	add    %al,(%rax)
 ca8:	07                   	(bad)  
 ca9:	00 00                	add    %al,(%rax)
 cab:	00 09                	add    %cl,(%rcx)
	...
 cb5:	00 00                	add    %al,(%rax)
 cb7:	00 58 40             	add    %bl,0x40(%rax)
 cba:	20 00                	and    %al,(%rax)
 cbc:	00 00                	add    %al,(%rax)
 cbe:	00 00                	add    %al,(%rax)
 cc0:	07                   	(bad)  
 cc1:	00 00                	add    %al,(%rax)
 cc3:	00 0a                	add    %cl,(%rdx)
	...
 ccd:	00 00                	add    %al,(%rax)
 ccf:	00 60 40             	add    %ah,0x40(%rax)
 cd2:	20 00                	and    %al,(%rax)
 cd4:	00 00                	add    %al,(%rax)
 cd6:	00 00                	add    %al,(%rax)
 cd8:	07                   	(bad)  
 cd9:	00 00                	add    %al,(%rax)
 cdb:	00 0b                	add    %cl,(%rbx)
	...
 ce5:	00 00                	add    %al,(%rax)
 ce7:	00 68 40             	add    %ch,0x40(%rax)
 cea:	20 00                	and    %al,(%rax)
 cec:	00 00                	add    %al,(%rax)
 cee:	00 00                	add    %al,(%rax)
 cf0:	07                   	(bad)  
 cf1:	00 00                	add    %al,(%rax)
 cf3:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 cfe:	00 00                	add    %al,(%rax)
 d00:	70 40                	jo     d42 <_init-0x1b6>
 d02:	20 00                	and    %al,(%rax)
 d04:	00 00                	add    %al,(%rax)
 d06:	00 00                	add    %al,(%rax)
 d08:	07                   	(bad)  
 d09:	00 00                	add    %al,(%rax)
 d0b:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # d11 <_init-0x1e7>
 d11:	00 00                	add    %al,(%rax)
 d13:	00 00                	add    %al,(%rax)
 d15:	00 00                	add    %al,(%rax)
 d17:	00 78 40             	add    %bh,0x40(%rax)
 d1a:	20 00                	and    %al,(%rax)
 d1c:	00 00                	add    %al,(%rax)
 d1e:	00 00                	add    %al,(%rax)
 d20:	07                   	(bad)  
 d21:	00 00                	add    %al,(%rax)
 d23:	00 0f                	add    %cl,(%rdi)
	...
 d2d:	00 00                	add    %al,(%rax)
 d2f:	00 80 40 20 00 00    	add    %al,0x2040(%rax)
 d35:	00 00                	add    %al,(%rax)
 d37:	00 07                	add    %al,(%rdi)
 d39:	00 00                	add    %al,(%rax)
 d3b:	00 10                	add    %dl,(%rax)
	...
 d45:	00 00                	add    %al,(%rax)
 d47:	00 88 40 20 00 00    	add    %cl,0x2040(%rax)
 d4d:	00 00                	add    %al,(%rax)
 d4f:	00 07                	add    %al,(%rdi)
 d51:	00 00                	add    %al,(%rax)
 d53:	00 11                	add    %dl,(%rcx)
	...
 d5d:	00 00                	add    %al,(%rax)
 d5f:	00 90 40 20 00 00    	add    %dl,0x2040(%rax)
 d65:	00 00                	add    %al,(%rax)
 d67:	00 07                	add    %al,(%rdi)
 d69:	00 00                	add    %al,(%rax)
 d6b:	00 12                	add    %dl,(%rdx)
	...
 d75:	00 00                	add    %al,(%rax)
 d77:	00 98 40 20 00 00    	add    %bl,0x2040(%rax)
 d7d:	00 00                	add    %al,(%rax)
 d7f:	00 07                	add    %al,(%rdi)
 d81:	00 00                	add    %al,(%rax)
 d83:	00 13                	add    %dl,(%rbx)
	...
 d8d:	00 00                	add    %al,(%rax)
 d8f:	00 a0 40 20 00 00    	add    %ah,0x2040(%rax)
 d95:	00 00                	add    %al,(%rax)
 d97:	00 07                	add    %al,(%rdi)
 d99:	00 00                	add    %al,(%rax)
 d9b:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # da1 <_init-0x157>
 da1:	00 00                	add    %al,(%rax)
 da3:	00 00                	add    %al,(%rax)
 da5:	00 00                	add    %al,(%rax)
 da7:	00 a8 40 20 00 00    	add    %ch,0x2040(%rax)
 dad:	00 00                	add    %al,(%rax)
 daf:	00 07                	add    %al,(%rdi)
 db1:	00 00                	add    %al,(%rax)
 db3:	00 16                	add    %dl,(%rsi)
	...
 dbd:	00 00                	add    %al,(%rax)
 dbf:	00 b0 40 20 00 00    	add    %dh,0x2040(%rax)
 dc5:	00 00                	add    %al,(%rax)
 dc7:	00 07                	add    %al,(%rdi)
 dc9:	00 00                	add    %al,(%rax)
 dcb:	00 17                	add    %dl,(%rdi)
	...
 dd5:	00 00                	add    %al,(%rax)
 dd7:	00 b8 40 20 00 00    	add    %bh,0x2040(%rax)
 ddd:	00 00                	add    %al,(%rax)
 ddf:	00 07                	add    %al,(%rdi)
 de1:	00 00                	add    %al,(%rax)
 de3:	00 18                	add    %bl,(%rax)
	...
 ded:	00 00                	add    %al,(%rax)
 def:	00 c0                	add    %al,%al
 df1:	40 20 00             	and    %al,(%rax)
 df4:	00 00                	add    %al,(%rax)
 df6:	00 00                	add    %al,(%rax)
 df8:	07                   	(bad)  
 df9:	00 00                	add    %al,(%rax)
 dfb:	00 19                	add    %bl,(%rcx)
	...
 e05:	00 00                	add    %al,(%rax)
 e07:	00 c8                	add    %cl,%al
 e09:	40 20 00             	and    %al,(%rax)
 e0c:	00 00                	add    %al,(%rax)
 e0e:	00 00                	add    %al,(%rax)
 e10:	07                   	(bad)  
 e11:	00 00                	add    %al,(%rax)
 e13:	00 1a                	add    %bl,(%rdx)
	...
 e1d:	00 00                	add    %al,(%rax)
 e1f:	00 d0                	add    %dl,%al
 e21:	40 20 00             	and    %al,(%rax)
 e24:	00 00                	add    %al,(%rax)
 e26:	00 00                	add    %al,(%rax)
 e28:	07                   	(bad)  
 e29:	00 00                	add    %al,(%rax)
 e2b:	00 1b                	add    %bl,(%rbx)
	...
 e35:	00 00                	add    %al,(%rax)
 e37:	00 d8                	add    %bl,%al
 e39:	40 20 00             	and    %al,(%rax)
 e3c:	00 00                	add    %al,(%rax)
 e3e:	00 00                	add    %al,(%rax)
 e40:	07                   	(bad)  
 e41:	00 00                	add    %al,(%rax)
 e43:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # e49 <_init-0xaf>
 e49:	00 00                	add    %al,(%rax)
 e4b:	00 00                	add    %al,(%rax)
 e4d:	00 00                	add    %al,(%rax)
 e4f:	00 e0                	add    %ah,%al
 e51:	40 20 00             	and    %al,(%rax)
 e54:	00 00                	add    %al,(%rax)
 e56:	00 00                	add    %al,(%rax)
 e58:	07                   	(bad)  
 e59:	00 00                	add    %al,(%rax)
 e5b:	00 1e                	add    %bl,(%rsi)
	...
 e65:	00 00                	add    %al,(%rax)
 e67:	00 e8                	add    %ch,%al
 e69:	40 20 00             	and    %al,(%rax)
 e6c:	00 00                	add    %al,(%rax)
 e6e:	00 00                	add    %al,(%rax)
 e70:	07                   	(bad)  
 e71:	00 00                	add    %al,(%rax)
 e73:	00 1f                	add    %bl,(%rdi)
	...
 e7d:	00 00                	add    %al,(%rax)
 e7f:	00 f0                	add    %dh,%al
 e81:	40 20 00             	and    %al,(%rax)
 e84:	00 00                	add    %al,(%rax)
 e86:	00 00                	add    %al,(%rax)
 e88:	07                   	(bad)  
 e89:	00 00                	add    %al,(%rax)
 e8b:	00 20                	add    %ah,(%rax)
	...
 e95:	00 00                	add    %al,(%rax)
 e97:	00 f8                	add    %bh,%al
 e99:	40 20 00             	and    %al,(%rax)
 e9c:	00 00                	add    %al,(%rax)
 e9e:	00 00                	add    %al,(%rax)
 ea0:	07                   	(bad)  
 ea1:	00 00                	add    %al,(%rax)
 ea3:	00 21                	add    %ah,(%rcx)
	...
 eb1:	41 20 00             	and    %al,(%r8)
 eb4:	00 00                	add    %al,(%rax)
 eb6:	00 00                	add    %al,(%rax)
 eb8:	07                   	(bad)  
 eb9:	00 00                	add    %al,(%rax)
 ebb:	00 23                	add    %ah,(%rbx)
	...
 ec5:	00 00                	add    %al,(%rax)
 ec7:	00 08                	add    %cl,(%rax)
 ec9:	41 20 00             	and    %al,(%r8)
 ecc:	00 00                	add    %al,(%rax)
 ece:	00 00                	add    %al,(%rax)
 ed0:	07                   	(bad)  
 ed1:	00 00                	add    %al,(%rax)
 ed3:	00 25 00 00 00 00    	add    %ah,0x0(%rip)        # ed9 <_init-0x1f>
 ed9:	00 00                	add    %al,(%rax)
 edb:	00 00                	add    %al,(%rax)
 edd:	00 00                	add    %al,(%rax)
 edf:	00 10                	add    %dl,(%rax)
 ee1:	41 20 00             	and    %al,(%r8)
 ee4:	00 00                	add    %al,(%rax)
 ee6:	00 00                	add    %al,(%rax)
 ee8:	07                   	(bad)  
 ee9:	00 00                	add    %al,(%rax)
 eeb:	00 26                	add    %ah,(%rsi)
	...

Disassembly of section .init:

0000000000000ef8 <_init>:
 ef8:	48 83 ec 08          	sub    $0x8,%rsp
 efc:	48 8b 05 dd 30 20 00 	mov    0x2030dd(%rip),%rax        # 203fe0 <__gmon_start__>
 f03:	48 85 c0             	test   %rax,%rax
 f06:	74 02                	je     f0a <_init+0x12>
 f08:	ff d0                	callq  *%rax
 f0a:	48 83 c4 08          	add    $0x8,%rsp
 f0e:	c3                   	retq   

Disassembly of section .plt:

0000000000000f10 <.plt>:
     f10:	ff 35 f2 30 20 00    	pushq  0x2030f2(%rip)        # 204008 <_GLOBAL_OFFSET_TABLE_+0x8>
     f16:	ff 25 f4 30 20 00    	jmpq   *0x2030f4(%rip)        # 204010 <_GLOBAL_OFFSET_TABLE_+0x10>
     f1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000f20 <getenv@plt>:
     f20:	ff 25 f2 30 20 00    	jmpq   *0x2030f2(%rip)        # 204018 <getenv@GLIBC_2.2.5>
     f26:	68 00 00 00 00       	pushq  $0x0
     f2b:	e9 e0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f30 <__errno_location@plt>:
     f30:	ff 25 ea 30 20 00    	jmpq   *0x2030ea(%rip)        # 204020 <__errno_location@GLIBC_2.2.5>
     f36:	68 01 00 00 00       	pushq  $0x1
     f3b:	e9 d0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f40 <strcpy@plt>:
     f40:	ff 25 e2 30 20 00    	jmpq   *0x2030e2(%rip)        # 204028 <strcpy@GLIBC_2.2.5>
     f46:	68 02 00 00 00       	pushq  $0x2
     f4b:	e9 c0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f50 <puts@plt>:
     f50:	ff 25 da 30 20 00    	jmpq   *0x2030da(%rip)        # 204030 <puts@GLIBC_2.2.5>
     f56:	68 03 00 00 00       	pushq  $0x3
     f5b:	e9 b0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f60 <write@plt>:
     f60:	ff 25 d2 30 20 00    	jmpq   *0x2030d2(%rip)        # 204038 <write@GLIBC_2.2.5>
     f66:	68 04 00 00 00       	pushq  $0x4
     f6b:	e9 a0 ff ff ff       	jmpq   f10 <.plt>

0000000000000f70 <fclose@plt>:
     f70:	ff 25 ca 30 20 00    	jmpq   *0x2030ca(%rip)        # 204040 <fclose@GLIBC_2.2.5>
     f76:	68 05 00 00 00       	pushq  $0x5
     f7b:	e9 90 ff ff ff       	jmpq   f10 <.plt>

0000000000000f80 <system@plt>:
     f80:	ff 25 c2 30 20 00    	jmpq   *0x2030c2(%rip)        # 204048 <system@GLIBC_2.2.5>
     f86:	68 06 00 00 00       	pushq  $0x6
     f8b:	e9 80 ff ff ff       	jmpq   f10 <.plt>

0000000000000f90 <printf@plt>:
     f90:	ff 25 ba 30 20 00    	jmpq   *0x2030ba(%rip)        # 204050 <printf@GLIBC_2.2.5>
     f96:	68 07 00 00 00       	pushq  $0x7
     f9b:	e9 70 ff ff ff       	jmpq   f10 <.plt>

0000000000000fa0 <rewind@plt>:
     fa0:	ff 25 b2 30 20 00    	jmpq   *0x2030b2(%rip)        # 204058 <rewind@GLIBC_2.2.5>
     fa6:	68 08 00 00 00       	pushq  $0x8
     fab:	e9 60 ff ff ff       	jmpq   f10 <.plt>

0000000000000fb0 <dup@plt>:
     fb0:	ff 25 aa 30 20 00    	jmpq   *0x2030aa(%rip)        # 204060 <dup@GLIBC_2.2.5>
     fb6:	68 09 00 00 00       	pushq  $0x9
     fbb:	e9 50 ff ff ff       	jmpq   f10 <.plt>

0000000000000fc0 <close@plt>:
     fc0:	ff 25 a2 30 20 00    	jmpq   *0x2030a2(%rip)        # 204068 <close@GLIBC_2.2.5>
     fc6:	68 0a 00 00 00       	pushq  $0xa
     fcb:	e9 40 ff ff ff       	jmpq   f10 <.plt>

0000000000000fd0 <fputc@plt>:
     fd0:	ff 25 9a 30 20 00    	jmpq   *0x20309a(%rip)        # 204070 <fputc@GLIBC_2.2.5>
     fd6:	68 0b 00 00 00       	pushq  $0xb
     fdb:	e9 30 ff ff ff       	jmpq   f10 <.plt>

0000000000000fe0 <fgets@plt>:
     fe0:	ff 25 92 30 20 00    	jmpq   *0x203092(%rip)        # 204078 <fgets@GLIBC_2.2.5>
     fe6:	68 0c 00 00 00       	pushq  $0xc
     feb:	e9 20 ff ff ff       	jmpq   f10 <.plt>

0000000000000ff0 <tmpfile@plt>:
     ff0:	ff 25 8a 30 20 00    	jmpq   *0x20308a(%rip)        # 204080 <tmpfile@GLIBC_2.2.5>
     ff6:	68 0d 00 00 00       	pushq  $0xd
     ffb:	e9 10 ff ff ff       	jmpq   f10 <.plt>

0000000000001000 <signal@plt>:
    1000:	ff 25 82 30 20 00    	jmpq   *0x203082(%rip)        # 204088 <signal@GLIBC_2.2.5>
    1006:	68 0e 00 00 00       	pushq  $0xe
    100b:	e9 00 ff ff ff       	jmpq   f10 <.plt>

0000000000001010 <gethostbyname@plt>:
    1010:	ff 25 7a 30 20 00    	jmpq   *0x20307a(%rip)        # 204090 <gethostbyname@GLIBC_2.2.5>
    1016:	68 0f 00 00 00       	pushq  $0xf
    101b:	e9 f0 fe ff ff       	jmpq   f10 <.plt>

0000000000001020 <fprintf@plt>:
    1020:	ff 25 72 30 20 00    	jmpq   *0x203072(%rip)        # 204098 <fprintf@GLIBC_2.2.5>
    1026:	68 10 00 00 00       	pushq  $0x10
    102b:	e9 e0 fe ff ff       	jmpq   f10 <.plt>

0000000000001030 <strtol@plt>:
    1030:	ff 25 6a 30 20 00    	jmpq   *0x20306a(%rip)        # 2040a0 <strtol@GLIBC_2.2.5>
    1036:	68 11 00 00 00       	pushq  $0x11
    103b:	e9 d0 fe ff ff       	jmpq   f10 <.plt>

0000000000001040 <inet_pton@plt>:
    1040:	ff 25 62 30 20 00    	jmpq   *0x203062(%rip)        # 2040a8 <inet_pton@GLIBC_2.2.5>
    1046:	68 12 00 00 00       	pushq  $0x12
    104b:	e9 c0 fe ff ff       	jmpq   f10 <.plt>

0000000000001050 <fflush@plt>:
    1050:	ff 25 5a 30 20 00    	jmpq   *0x20305a(%rip)        # 2040b0 <fflush@GLIBC_2.2.5>
    1056:	68 13 00 00 00       	pushq  $0x13
    105b:	e9 b0 fe ff ff       	jmpq   f10 <.plt>

0000000000001060 <__isoc99_sscanf@plt>:
    1060:	ff 25 52 30 20 00    	jmpq   *0x203052(%rip)        # 2040b8 <__isoc99_sscanf@GLIBC_2.7>
    1066:	68 14 00 00 00       	pushq  $0x14
    106b:	e9 a0 fe ff ff       	jmpq   f10 <.plt>

0000000000001070 <bcopy@plt>:
    1070:	ff 25 4a 30 20 00    	jmpq   *0x20304a(%rip)        # 2040c0 <bcopy@GLIBC_2.2.5>
    1076:	68 15 00 00 00       	pushq  $0x15
    107b:	e9 90 fe ff ff       	jmpq   f10 <.plt>

0000000000001080 <cuserid@plt>:
    1080:	ff 25 42 30 20 00    	jmpq   *0x203042(%rip)        # 2040c8 <cuserid@GLIBC_2.2.5>
    1086:	68 16 00 00 00       	pushq  $0x16
    108b:	e9 80 fe ff ff       	jmpq   f10 <.plt>

0000000000001090 <fopen@plt>:
    1090:	ff 25 3a 30 20 00    	jmpq   *0x20303a(%rip)        # 2040d0 <fopen@GLIBC_2.2.5>
    1096:	68 17 00 00 00       	pushq  $0x17
    109b:	e9 70 fe ff ff       	jmpq   f10 <.plt>

00000000000010a0 <strcat@plt>:
    10a0:	ff 25 32 30 20 00    	jmpq   *0x203032(%rip)        # 2040d8 <strcat@GLIBC_2.2.5>
    10a6:	68 18 00 00 00       	pushq  $0x18
    10ab:	e9 60 fe ff ff       	jmpq   f10 <.plt>

00000000000010b0 <sprintf@plt>:
    10b0:	ff 25 2a 30 20 00    	jmpq   *0x20302a(%rip)        # 2040e0 <sprintf@GLIBC_2.2.5>
    10b6:	68 19 00 00 00       	pushq  $0x19
    10bb:	e9 50 fe ff ff       	jmpq   f10 <.plt>

00000000000010c0 <exit@plt>:
    10c0:	ff 25 22 30 20 00    	jmpq   *0x203022(%rip)        # 2040e8 <exit@GLIBC_2.2.5>
    10c6:	68 1a 00 00 00       	pushq  $0x1a
    10cb:	e9 40 fe ff ff       	jmpq   f10 <.plt>

00000000000010d0 <connect@plt>:
    10d0:	ff 25 1a 30 20 00    	jmpq   *0x20301a(%rip)        # 2040f0 <connect@GLIBC_2.2.5>
    10d6:	68 1b 00 00 00       	pushq  $0x1b
    10db:	e9 30 fe ff ff       	jmpq   f10 <.plt>

00000000000010e0 <fwrite@plt>:
    10e0:	ff 25 12 30 20 00    	jmpq   *0x203012(%rip)        # 2040f8 <fwrite@GLIBC_2.2.5>
    10e6:	68 1c 00 00 00       	pushq  $0x1c
    10eb:	e9 20 fe ff ff       	jmpq   f10 <.plt>

00000000000010f0 <sleep@plt>:
    10f0:	ff 25 0a 30 20 00    	jmpq   *0x20300a(%rip)        # 204100 <sleep@GLIBC_2.2.5>
    10f6:	68 1d 00 00 00       	pushq  $0x1d
    10fb:	e9 10 fe ff ff       	jmpq   f10 <.plt>

0000000000001100 <__ctype_b_loc@plt>:
    1100:	ff 25 02 30 20 00    	jmpq   *0x203002(%rip)        # 204108 <__ctype_b_loc@GLIBC_2.3>
    1106:	68 1e 00 00 00       	pushq  $0x1e
    110b:	e9 00 fe ff ff       	jmpq   f10 <.plt>

0000000000001110 <socket@plt>:
    1110:	ff 25 fa 2f 20 00    	jmpq   *0x202ffa(%rip)        # 204110 <socket@GLIBC_2.2.5>
    1116:	68 1f 00 00 00       	pushq  $0x1f
    111b:	e9 f0 fd ff ff       	jmpq   f10 <.plt>

Disassembly of section .plt.got:

0000000000001120 <__cxa_finalize@plt>:
    1120:	ff 25 d2 2e 20 00    	jmpq   *0x202ed2(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1126:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000001130 <_start>:
    1130:	31 ed                	xor    %ebp,%ebp
    1132:	49 89 d1             	mov    %rdx,%r9
    1135:	5e                   	pop    %rsi
    1136:	48 89 e2             	mov    %rsp,%rdx
    1139:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    113d:	50                   	push   %rax
    113e:	54                   	push   %rsp
    113f:	4c 8d 05 7a 11 00 00 	lea    0x117a(%rip),%r8        # 22c0 <__libc_csu_fini>
    1146:	48 8d 0d 03 11 00 00 	lea    0x1103(%rip),%rcx        # 2250 <__libc_csu_init>
    114d:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 1260 <main>
    1154:	ff 15 7e 2e 20 00    	callq  *0x202e7e(%rip)        # 203fd8 <__libc_start_main@GLIBC_2.2.5>
    115a:	f4                   	hlt    
    115b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d 79 36 20 00 	lea    0x203679(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1167:	48 8d 05 79 36 20 00 	lea    0x203679(%rip),%rax        # 2047e7 <__TMC_END__+0x7>
    116e:	55                   	push   %rbp
    116f:	48 29 f8             	sub    %rdi,%rax
    1172:	48 89 e5             	mov    %rsp,%rbp
    1175:	48 83 f8 0e          	cmp    $0xe,%rax
    1179:	76 15                	jbe    1190 <deregister_tm_clones+0x30>
    117b:	48 8b 05 4e 2e 20 00 	mov    0x202e4e(%rip),%rax        # 203fd0 <_ITM_deregisterTMCloneTable>
    1182:	48 85 c0             	test   %rax,%rax
    1185:	74 09                	je     1190 <deregister_tm_clones+0x30>
    1187:	5d                   	pop    %rbp
    1188:	ff e0                	jmpq   *%rax
    118a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1190:	5d                   	pop    %rbp
    1191:	c3                   	retq   
    1192:	0f 1f 40 00          	nopl   0x0(%rax)
    1196:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    119d:	00 00 00 

00000000000011a0 <register_tm_clones>:
    11a0:	48 8d 3d 39 36 20 00 	lea    0x203639(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    11a7:	48 8d 35 32 36 20 00 	lea    0x203632(%rip),%rsi        # 2047e0 <stdout@@GLIBC_2.2.5>
    11ae:	55                   	push   %rbp
    11af:	48 29 fe             	sub    %rdi,%rsi
    11b2:	48 89 e5             	mov    %rsp,%rbp
    11b5:	48 c1 fe 03          	sar    $0x3,%rsi
    11b9:	48 89 f0             	mov    %rsi,%rax
    11bc:	48 c1 e8 3f          	shr    $0x3f,%rax
    11c0:	48 01 c6             	add    %rax,%rsi
    11c3:	48 d1 fe             	sar    %rsi
    11c6:	74 18                	je     11e0 <register_tm_clones+0x40>
    11c8:	48 8b 05 21 2e 20 00 	mov    0x202e21(%rip),%rax        # 203ff0 <_ITM_registerTMCloneTable>
    11cf:	48 85 c0             	test   %rax,%rax
    11d2:	74 0c                	je     11e0 <register_tm_clones+0x40>
    11d4:	5d                   	pop    %rbp
    11d5:	ff e0                	jmpq   *%rax
    11d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    11de:	00 00 
    11e0:	5d                   	pop    %rbp
    11e1:	c3                   	retq   
    11e2:	0f 1f 40 00          	nopl   0x0(%rax)
    11e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11ed:	00 00 00 

00000000000011f0 <__do_global_dtors_aux>:
    11f0:	80 3d 01 36 20 00 00 	cmpb   $0x0,0x203601(%rip)        # 2047f8 <completed.6972>
    11f7:	75 27                	jne    1220 <__do_global_dtors_aux+0x30>
    11f9:	48 83 3d f7 2d 20 00 	cmpq   $0x0,0x202df7(%rip)        # 203ff8 <__cxa_finalize@GLIBC_2.2.5>
    1200:	00 
    1201:	55                   	push   %rbp
    1202:	48 89 e5             	mov    %rsp,%rbp
    1205:	74 0c                	je     1213 <__do_global_dtors_aux+0x23>
    1207:	48 8b 3d 1a 2f 20 00 	mov    0x202f1a(%rip),%rdi        # 204128 <__dso_handle>
    120e:	e8 0d ff ff ff       	callq  1120 <__cxa_finalize@plt>
    1213:	e8 48 ff ff ff       	callq  1160 <deregister_tm_clones>
    1218:	5d                   	pop    %rbp
    1219:	c6 05 d8 35 20 00 01 	movb   $0x1,0x2035d8(%rip)        # 2047f8 <completed.6972>
    1220:	f3 c3                	repz retq 
    1222:	0f 1f 40 00          	nopl   0x0(%rax)
    1226:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    122d:	00 00 00 

0000000000001230 <frame_dummy>:
    1230:	48 8d 3d b1 2b 20 00 	lea    0x202bb1(%rip),%rdi        # 203de8 <__JCR_END__>
    1237:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    123b:	75 0b                	jne    1248 <frame_dummy+0x18>
    123d:	e9 5e ff ff ff       	jmpq   11a0 <register_tm_clones>
    1242:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1248:	48 8b 05 99 2d 20 00 	mov    0x202d99(%rip),%rax        # 203fe8 <_Jv_RegisterClasses>
    124f:	48 85 c0             	test   %rax,%rax
    1252:	74 e9                	je     123d <frame_dummy+0xd>
    1254:	55                   	push   %rbp
    1255:	48 89 e5             	mov    %rsp,%rbp
    1258:	ff d0                	callq  *%rax
    125a:	5d                   	pop    %rbp
    125b:	e9 40 ff ff ff       	jmpq   11a0 <register_tm_clones>

0000000000001260 <main>:
    1260:	53                   	push   %rbx
    1261:	83 ff 01             	cmp    $0x1,%edi
    1264:	0f 84 f8 00 00 00    	je     1362 <main+0x102>
    126a:	48 89 f3             	mov    %rsi,%rbx
    126d:	83 ff 02             	cmp    $0x2,%edi
    1270:	0f 85 1c 01 00 00    	jne    1392 <main+0x132>
    1276:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    127a:	48 8d 35 59 14 00 00 	lea    0x1459(%rip),%rsi        # 26da <array.3089+0x22a>
    1281:	e8 0a fe ff ff       	callq  1090 <fopen@plt>
    1286:	48 89 05 73 35 20 00 	mov    %rax,0x203573(%rip)        # 204800 <infile>
    128d:	48 85 c0             	test   %rax,%rax
    1290:	0f 84 df 00 00 00    	je     1375 <main+0x115>
    1296:	e8 b5 06 00 00       	callq  1950 <initialize_bomb>
    129b:	48 8d 3d b6 10 00 00 	lea    0x10b6(%rip),%rdi        # 2358 <_IO_stdin_used+0x88>
    12a2:	e8 a9 fc ff ff       	callq  f50 <puts@plt>
    12a7:	48 8d 3d ea 10 00 00 	lea    0x10ea(%rip),%rdi        # 2398 <_IO_stdin_used+0xc8>
    12ae:	e8 9d fc ff ff       	callq  f50 <puts@plt>
    12b3:	e8 f3 0d 00 00       	callq  20ab <read_line>
    12b8:	48 89 c7             	mov    %rax,%rdi
    12bb:	e8 f0 00 00 00       	callq  13b0 <phase_1>
    12c0:	e8 e7 0e 00 00       	callq  21ac <phase_defused>
    12c5:	48 8d 3d fc 10 00 00 	lea    0x10fc(%rip),%rdi        # 23c8 <_IO_stdin_used+0xf8>
    12cc:	e8 7f fc ff ff       	callq  f50 <puts@plt>
    12d1:	e8 d5 0d 00 00       	callq  20ab <read_line>
    12d6:	48 89 c7             	mov    %rax,%rdi
    12d9:	e8 f2 00 00 00       	callq  13d0 <phase_2>
    12de:	e8 c9 0e 00 00       	callq  21ac <phase_defused>
    12e3:	48 8d 3d 21 10 00 00 	lea    0x1021(%rip),%rdi        # 230b <_IO_stdin_used+0x3b>
    12ea:	e8 61 fc ff ff       	callq  f50 <puts@plt>
    12ef:	e8 b7 0d 00 00       	callq  20ab <read_line>
    12f4:	48 89 c7             	mov    %rax,%rdi
    12f7:	e8 1c 01 00 00       	callq  1418 <phase_3>
    12fc:	e8 ab 0e 00 00       	callq  21ac <phase_defused>
    1301:	48 8d 3d 21 10 00 00 	lea    0x1021(%rip),%rdi        # 2329 <_IO_stdin_used+0x59>
    1308:	e8 43 fc ff ff       	callq  f50 <puts@plt>
    130d:	e8 99 0d 00 00       	callq  20ab <read_line>
    1312:	48 89 c7             	mov    %rax,%rdi
    1315:	e8 7e 02 00 00       	callq  1598 <phase_4>
    131a:	e8 8d 0e 00 00       	callq  21ac <phase_defused>
    131f:	48 8d 3d d2 10 00 00 	lea    0x10d2(%rip),%rdi        # 23f8 <_IO_stdin_used+0x128>
    1326:	e8 25 fc ff ff       	callq  f50 <puts@plt>
    132b:	e8 7b 0d 00 00       	callq  20ab <read_line>
    1330:	48 89 c7             	mov    %rax,%rdi
    1333:	e8 a7 02 00 00       	callq  15df <phase_5>
    1338:	e8 6f 0e 00 00       	callq  21ac <phase_defused>
    133d:	48 8d 3d f4 0f 00 00 	lea    0xff4(%rip),%rdi        # 2338 <_IO_stdin_used+0x68>
    1344:	e8 07 fc ff ff       	callq  f50 <puts@plt>
    1349:	e8 5d 0d 00 00       	callq  20ab <read_line>
    134e:	48 89 c7             	mov    %rax,%rdi
    1351:	e8 54 03 00 00       	callq  16aa <phase_6>
    1356:	e8 51 0e 00 00       	callq  21ac <phase_defused>
    135b:	b8 00 00 00 00       	mov    $0x0,%eax
    1360:	5b                   	pop    %rbx
    1361:	c3                   	retq   
    1362:	48 8b 05 87 34 20 00 	mov    0x203487(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    1369:	48 89 05 90 34 20 00 	mov    %rax,0x203490(%rip)        # 204800 <infile>
    1370:	e9 21 ff ff ff       	jmpq   1296 <main+0x36>
    1375:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1379:	48 8b 33             	mov    (%rbx),%rsi
    137c:	48 8d 3d 51 0f 00 00 	lea    0xf51(%rip),%rdi        # 22d4 <_IO_stdin_used+0x4>
    1383:	e8 08 fc ff ff       	callq  f90 <printf@plt>
    1388:	bf 08 00 00 00       	mov    $0x8,%edi
    138d:	e8 2e fd ff ff       	callq  10c0 <exit@plt>
    1392:	48 8b 36             	mov    (%rsi),%rsi
    1395:	48 8d 3d 55 0f 00 00 	lea    0xf55(%rip),%rdi        # 22f1 <_IO_stdin_used+0x21>
    139c:	b8 00 00 00 00       	mov    $0x0,%eax
    13a1:	e8 ea fb ff ff       	callq  f90 <printf@plt>
    13a6:	bf 08 00 00 00       	mov    $0x8,%edi
    13ab:	e8 10 fd ff ff       	callq  10c0 <exit@plt>

00000000000013b0 <phase_1>:
    13b0:	48 83 ec 08          	sub    $0x8,%rsp
    13b4:	48 8d 35 65 10 00 00 	lea    0x1065(%rip),%rsi        # 2420 <_IO_stdin_used+0x150>
    13bb:	e8 5e 04 00 00       	callq  181e <strings_not_equal>
    13c0:	85 c0                	test   %eax,%eax
    13c2:	75 05                	jne    13c9 <phase_1+0x19>
    13c4:	48 83 c4 08          	add    $0x8,%rsp
    13c8:	c3                   	retq   
    13c9:	e8 60 0c 00 00       	callq  202e <explode_bomb>
    13ce:	eb f4                	jmp    13c4 <phase_1+0x14>

00000000000013d0 <phase_2>:
    13d0:	55                   	push   %rbp
    13d1:	53                   	push   %rbx
    13d2:	48 83 ec 28          	sub    $0x28,%rsp
    13d6:	48 89 e6             	mov    %rsp,%rsi
    13d9:	e8 8c 0c 00 00       	callq  206a <read_six_numbers>
    13de:	83 3c 24 01          	cmpl   $0x1,(%rsp)
    13e2:	74 05                	je     13e9 <phase_2+0x19>
    13e4:	e8 45 0c 00 00       	callq  202e <explode_bomb>
    13e9:	48 89 e5             	mov    %rsp,%rbp
    13ec:	bb 01 00 00 00       	mov    $0x1,%ebx
    13f1:	eb 09                	jmp    13fc <phase_2+0x2c>
    13f3:	48 83 c5 04          	add    $0x4,%rbp
    13f7:	83 fb 06             	cmp    $0x6,%ebx
    13fa:	74 15                	je     1411 <phase_2+0x41>
    13fc:	83 c3 01             	add    $0x1,%ebx
    13ff:	89 d8                	mov    %ebx,%eax
    1401:	0f af 45 00          	imul   0x0(%rbp),%eax
    1405:	39 45 04             	cmp    %eax,0x4(%rbp)
    1408:	74 e9                	je     13f3 <phase_2+0x23>
    140a:	e8 1f 0c 00 00       	callq  202e <explode_bomb>
    140f:	eb e2                	jmp    13f3 <phase_2+0x23>
    1411:	48 83 c4 28          	add    $0x28,%rsp
    1415:	5b                   	pop    %rbx
    1416:	5d                   	pop    %rbp
    1417:	c3                   	retq   

0000000000001418 <phase_3>:
    1418:	48 83 ec 18          	sub    $0x18,%rsp
    141c:	48 8d 4c 24 07       	lea    0x7(%rsp),%rcx   # 2->%c
    1421:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx   # 1->%d aka d1
    1426:	4c 8d 44 24 08       	lea    0x8(%rsp),%r8    # 3->%d aka d2
    142b:	48 8d 35 4c 10 00 00 	lea    0x104c(%rip),%rsi        # 247e <_IO_stdin_used+0x1ae>
    1432:	b8 00 00 00 00       	mov    $0x0,%eax
    1437:	e8 24 fc ff ff       	callq  1060 <__isoc99_sscanf@plt>
    143c:	83 f8 02             	cmp    $0x2,%eax
    143f:	7e 1f                	jle    1460 <phase_3+0x48>
    1441:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp) 
    1446:	0f 87 0c 01 00 00    	ja     1558 <phase_3+0x140>
    144c:	8b 44 24 0c          	mov    0xc(%rsp),%eax   # %eax<-d1
    1450:	48 8d 15 39 10 00 00 	lea    0x1039(%rip),%rdx        # 2490 <_IO_stdin_used+0x1c0>
    1457:	48 63 04 82          	movslq (%rdx,%rax,4),%rax   # 0x1039(%rip) as an array, visit a[%rax] (4byte)
    145b:	48 01 d0             	add    %rdx,%rax
    145e:	ff e0                	jmpq   *%rax
    1460:	e8 c9 0b 00 00       	callq  202e <explode_bomb>
    1465:	eb da                	jmp    1441 <phase_3+0x29>
    1467:	b8 70 00 00 00       	mov    $0x70,%eax
    146c:	81 7c 24 08 e9 02 00 	cmpl   $0x2e9,0x8(%rsp)
    1473:	00 
    1474:	0f 84 e8 00 00 00    	je     1562 <phase_3+0x14a>
    147a:	e8 af 0b 00 00       	callq  202e <explode_bomb>
    147f:	b8 70 00 00 00       	mov    $0x70,%eax
    1484:	e9 d9 00 00 00       	jmpq   1562 <phase_3+0x14a>
    1489:	b8 6f 00 00 00       	mov    $0x6f,%eax
    148e:	81 7c 24 08 e1 01 00 	cmpl   $0x1e1,0x8(%rsp)
    1495:	00 
    1496:	0f 84 c6 00 00 00    	je     1562 <phase_3+0x14a>
    149c:	e8 8d 0b 00 00       	callq  202e <explode_bomb>
    14a1:	b8 6f 00 00 00       	mov    $0x6f,%eax
    14a6:	e9 b7 00 00 00       	jmpq   1562 <phase_3+0x14a>
    14ab:	b8 6d 00 00 00       	mov    $0x6d,%eax
    14b0:	81 7c 24 08 91 00 00 	cmpl   $0x91,0x8(%rsp)
    14b7:	00 
    14b8:	0f 84 a4 00 00 00    	je     1562 <phase_3+0x14a>
    14be:	e8 6b 0b 00 00       	callq  202e <explode_bomb>
    14c3:	b8 6d 00 00 00       	mov    $0x6d,%eax
    14c8:	e9 95 00 00 00       	jmpq   1562 <phase_3+0x14a>
    14cd:	b8 63 00 00 00       	mov    $0x63,%eax
    14d2:	81 7c 24 08 df 01 00 	cmpl   $0x1df,0x8(%rsp)
    14d9:	00 
    14da:	0f 84 82 00 00 00    	je     1562 <phase_3+0x14a>
    14e0:	e8 49 0b 00 00       	callq  202e <explode_bomb>
    14e5:	b8 63 00 00 00       	mov    $0x63,%eax
    14ea:	eb 76                	jmp    1562 <phase_3+0x14a>
    14ec:	b8 6b 00 00 00       	mov    $0x6b,%eax
    14f1:	81 7c 24 08 a7 03 00 	cmpl   $0x3a7,0x8(%rsp)
    14f8:	00 
    14f9:	74 67                	je     1562 <phase_3+0x14a>
    14fb:	e8 2e 0b 00 00       	callq  202e <explode_bomb>
    1500:	b8 6b 00 00 00       	mov    $0x6b,%eax
    1505:	eb 5b                	jmp    1562 <phase_3+0x14a>
    1507:	b8 6f 00 00 00       	mov    $0x6f,%eax
    150c:	81 7c 24 08 fb 00 00 	cmpl   $0xfb,0x8(%rsp)
    1513:	00 
    1514:	74 4c                	je     1562 <phase_3+0x14a>
    1516:	e8 13 0b 00 00       	callq  202e <explode_bomb>
    151b:	b8 6f 00 00 00       	mov    $0x6f,%eax
    1520:	eb 40                	jmp    1562 <phase_3+0x14a>
    1522:	b8 79 00 00 00       	mov    $0x79,%eax
    1527:	81 7c 24 08 06 03 00 	cmpl   $0x306,0x8(%rsp)
    152e:	00 
    152f:	74 31                	je     1562 <phase_3+0x14a>
    1531:	e8 f8 0a 00 00       	callq  202e <explode_bomb>
    1536:	b8 79 00 00 00       	mov    $0x79,%eax
    153b:	eb 25                	jmp    1562 <phase_3+0x14a>
    153d:	b8 64 00 00 00       	mov    $0x64,%eax
    1542:	81 7c 24 08 60 02 00 	cmpl   $0x260,0x8(%rsp)
    1549:	00 
    154a:	74 16                	je     1562 <phase_3+0x14a>
    154c:	e8 dd 0a 00 00       	callq  202e <explode_bomb>
    1551:	b8 64 00 00 00       	mov    $0x64,%eax
    1556:	eb 0a                	jmp    1562 <phase_3+0x14a>
    1558:	e8 d1 0a 00 00       	callq  202e <explode_bomb>
    155d:	b8 73 00 00 00       	mov    $0x73,%eax
    1562:	3a 44 24 07          	cmp    0x7(%rsp),%al
    1566:	74 05                	je     156d <phase_3+0x155>
    1568:	e8 c1 0a 00 00       	callq  202e <explode_bomb>
    156d:	48 83 c4 18          	add    $0x18,%rsp
    1571:	c3                   	retq   

0000000000001572 <func4>:
    1572:	b8 01 00 00 00       	mov    $0x1,%eax        # %eax <- 1
    1577:	85 ff                	test   %edi,%edi        # %edi != 0
    1579:	7e 1b                	jle    1596 <func4+0x24>
    157b:	48 83 ec 08          	sub    $0x8,%rsp
    157f:	83 ef 01             	sub    $0x1,%edi        # d-1
    1582:	e8 eb ff ff ff       	callq  1572 <func4>
    1587:	8d 14 c5 00 00 00 00 	lea    0x0(,%rax,8),%edx  # edx<-8*ret
    158e:	29 c2                	sub    %eax,%edx        # edx <- 7*ret
    1590:	89 d0                	mov    %edx,%eax        # %rax<-7*ret
    1592:	48 83 c4 08          	add    $0x8,%rsp
    1596:	f3 c3                	repz retq 

0000000000001598 <phase_4>:
    1598:	48 83 ec 18          	sub    $0x18,%rsp
    159c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    15a1:	48 8d 35 dc 0e 00 00 	lea    0xedc(%rip),%rsi        # 2484 <_IO_stdin_used+0x1b4>
    15a8:	b8 00 00 00 00       	mov    $0x0,%eax
    15ad:	e8 ae fa ff ff       	callq  1060 <__isoc99_sscanf@plt>
    15b2:	83 f8 01             	cmp    $0x1,%eax
    15b5:	74 1f                	je     15d6 <phase_4+0x3e>
    15b7:	e8 72 0a 00 00       	callq  202e <explode_bomb>
    15bc:	8b 7c 24 0c          	mov    0xc(%rsp),%edi       # edi<-d
    15c0:	e8 ad ff ff ff       	callq  1572 <func4>
    15c5:	3d a7 41 00 00       	cmp    $0x41a7,%eax         # return 0x41a7
    15ca:	74 05                	je     15d1 <phase_4+0x39>
    15cc:	e8 5d 0a 00 00       	callq  202e <explode_bomb>
    15d1:	48 83 c4 18          	add    $0x18,%rsp
    15d5:	c3                   	retq   
    15d6:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
    15db:	7f df                	jg     15bc <phase_4+0x24>
    15dd:	eb d8                	jmp    15b7 <phase_4+0x1f>

00000000000015df <phase_5>:
    15df:	53                   	push   %rbx
    15e0:	48 83 ec 10          	sub    $0x10,%rsp
    15e4:	48 89 fb             	mov    %rdi,%rbx            # %rbx<-char *str
    15e7:	e8 14 02 00 00       	callq  1800 <string_length>
    15ec:	83 f8 06             	cmp    $0x6,%eax
    15ef:	74 05                	je     15f6 <phase_5+0x17>
    15f1:	e8 38 0a 00 00       	callq  202e <explode_bomb>
    15f6:	b8 00 00 00 00       	mov    $0x0,%eax
    15fb:	48 8d 0d ae 0e 00 00 	lea    0xeae(%rip),%rcx        # 24b0 <array.3089>
    1602:	0f b6 14 03          	movzbl (%rbx,%rax,1),%edx
    1606:	83 e2 0f             	and    $0xf,%edx
    1609:	0f b6 14 11          	movzbl (%rcx,%rdx,1),%edx
    160d:	88 54 04 09          	mov    %dl,0x9(%rsp,%rax,1)
    1611:	48 83 c0 01          	add    $0x1,%rax
    1615:	48 83 f8 06          	cmp    $0x6,%rax
    1619:	75 e7                	jne    1602 <phase_5+0x23>
    161b:	c6 44 24 0f 00       	movb   $0x0,0xf(%rsp)
    1620:	48 8d 7c 24 09       	lea    0x9(%rsp),%rdi
    1625:	48 8d 35 5b 0e 00 00 	lea    0xe5b(%rip),%rsi        # 2487 <_IO_stdin_used+0x1b7>
    162c:	e8 ed 01 00 00       	callq  181e <strings_not_equal>
    1631:	85 c0                	test   %eax,%eax
    1633:	75 06                	jne    163b <phase_5+0x5c>
    1635:	48 83 c4 10          	add    $0x10,%rsp
    1639:	5b                   	pop    %rbx
    163a:	c3                   	retq   
    163b:	e8 ee 09 00 00       	callq  202e <explode_bomb>
    1640:	eb f3                	jmp    1635 <phase_5+0x56>

0000000000001642 <fun6>:
    1642:	48 89 f8             	mov    %rdi,%rax        # %rdi is pointer to num %rax:head
    1645:	4c 8b 47 08          	mov    0x8(%rdi),%r8    # %r8: node1
    1649:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)   
    1650:	00 
    1651:	48 89 fa             	mov    %rdi,%rdx        # %rdx: node0
    1654:	4d 85 c0             	test   %r8,%r8          # %r8node0->next == NULL -> return
    1657:	75 2e                	jne    1687 <fun6+0x45>
    1659:	f3 c3                	repz retq 
    165b:	48 89 d1             	mov    %rdx,%rcx        # tmp = node0
    165e:	48 8b 51 08          	mov    0x8(%rcx),%rdx   # node0 = tmp->next
    1662:	48 85 d2             	test   %rdx,%rdx
    1665:	74 04                	je     166b <fun6+0x29> # jmp <- node0 == NULL
    1667:	39 32                	cmp    %esi,(%rdx)      # node0 > esi(node1) ->move next 
    1669:	7f f0                	jg     165b <fun6+0x19>
    166b:	48 39 d1             	cmp    %rdx,%rcx
    166e:	74 33                	je     16a3 <fun6+0x61>
    1670:	4c 89 41 08          	mov    %r8,0x8(%rcx)    # node2 rcx->next = r8
    1674:	49 8b 48 08          	mov    0x8(%r8),%rcx    # rcx       = node1->next node0->next = node1
    1678:	49 89 50 08          	mov    %rdx,0x8(%r8)    # node1 ->next = node0
    167c:	48 89 c2             	mov    %rax,%rdx        # node0 = rax(node1)
    167f:	49 89 c8             	mov    %rcx,%r8         # node1 = rcx r8: node2
    1682:	48 85 c9             	test   %rcx,%rcx        
    1685:	74 21                	je     16a8 <fun6+0x66> # rcx == NULL -> RETURN
    1687:	48 85 d2             	test   %rdx,%rdx        # node0 == NULL -> 169e (begin)
    168a:	74 12                	je     169e <fun6+0x5c>
    168c:	41 8b 30             	mov    (%r8),%esi       # esi = node1 (node0 not null)
    168f:	48 89 c1             	mov    %rax,%rcx        # tmp = head node0
    1692:	39 32                	cmp    %esi,(%rdx)      
    1694:	7f c8                	jg     165e <fun6+0x1c> # node0 > node1
    1696:	48 89 c2             	mov    %rax,%rdx        # rdx = node0
    1699:	4c 89 c0             	mov    %r8,%rax         # rax = node1
    169c:	eb d6                	jmp    1674 <fun6+0x32>
    169e:	48 89 c1             	mov    %rax,%rcx
    16a1:	eb c8                	jmp    166b <fun6+0x29>
    16a3:	4c 89 c0             	mov    %r8,%rax
    16a6:	eb cc                	jmp    1674 <fun6+0x32>
    16a8:	f3 c3                	repz retq 

00000000000016aa <phase_6>:
    16aa:	48 83 ec 08          	sub    $0x8,%rsp
    16ae:	ba 0a 00 00 00       	mov    $0xa,%edx
    16b3:	be 00 00 00 00       	mov    $0x0,%esi
    16b8:	e8 73 f9 ff ff       	callq  1030 <strtol@plt>    # turn str to long (base10)
    16bd:	89 05 8d 30 20 00    	mov    %eax,0x20308d(%rip)        # 204750 <node0>
    16c3:	48 8d 3d 86 30 20 00 	lea    0x203086(%rip),%rdi        # 204750 <node0>
    16ca:	e8 73 ff ff ff       	callq  1642 <fun6>
    16cf:	48 8b 40 08          	mov    0x8(%rax),%rax
    16d3:	48 8b 40 08          	mov    0x8(%rax),%rax
    16d7:	48 8b 40 08          	mov    0x8(%rax),%rax
    16db:	48 8b 40 08          	mov    0x8(%rax),%rax
    16df:	8b 0d 6b 30 20 00    	mov    0x20306b(%rip),%ecx        # 204750 <node0>
    16e5:	39 08                	cmp    %ecx,(%rax)
    16e7:	74 05                	je     16ee <phase_6+0x44>
    16e9:	e8 40 09 00 00       	callq  202e <explode_bomb>
    16ee:	48 83 c4 08          	add    $0x8,%rsp
    16f2:	c3                   	retq   

00000000000016f3 <fun7>:  # %rdi: ->36 %rsi: num
    16f3:	48 85 ff             	test   %rdi,%rdi
    16f6:	74 32                	je     172a <fun7+0x37>
    16f8:	48 83 ec 08          	sub    $0x8,%rsp
    16fc:	8b 17                	mov    (%rdi),%edx
    16fe:	39 f2                	cmp    %esi,%edx        # root > param -> jump
    1700:	7f 1b                	jg     171d <fun7+0x2a>
    1702:	b8 00 00 00 00       	mov    $0x0,%eax
    1707:	39 f2                	cmp    %esi,%edx        # find it!
    1709:	74 0d                	je     1718 <fun7+0x25>
    170b:	48 8b 7f 10          	mov    0x10(%rdi),%rdi  # node->rChild
    170f:	e8 df ff ff ff       	callq  16f3 <fun7>
    1714:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    1718:	48 83 c4 08          	add    $0x8,%rsp
    171c:	c3                   	retq   
    171d:	48 8b 7f 08          	mov    0x8(%rdi),%rdi   # node->lChild
    1721:	e8 cd ff ff ff       	callq  16f3 <fun7>
    1726:	01 c0                	add    %eax,%eax         # idx*2
    1728:	eb ee                	jmp    1718 <fun7+0x25>
    172a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    172f:	c3                   	retq   

0000000000001730 <secret_phase>: # binary tree
    1730:	53                   	push   %rbx
    1731:	e8 75 09 00 00       	callq  20ab <read_line>
    1736:	ba 0a 00 00 00       	mov    $0xa,%edx         # @param: base10
    173b:	be 00 00 00 00       	mov    $0x0,%esi
    1740:	48 89 c7             	mov    %rax,%rdi
    1743:	e8 e8 f8 ff ff       	callq  1030 <strtol@plt> # read a long from input
    1748:	48 89 c3             	mov    %rax,%rbx         # %rbx <- num
    174b:	8d 40 ff             	lea    -0x1(%rax),%eax   # %eax <- num-1
    174e:	3d e8 03 00 00       	cmp    $0x3e8,%eax       # num-1 > 1000 (unsigned)
    1753:	77 2b                	ja     1780 <secret_phase+0x50>
    1755:	89 de                	mov    %ebx,%esi         # %esi <- num
    1757:	48 8d 3d 12 2f 20 00 	lea    0x202f12(%rip),%rdi        # 204670 <n1> val: 36
    175e:	e8 90 ff ff ff       	callq  16f3 <fun7>       # expecting 6 fun7(36, num)
    1763:	83 f8 06             	cmp    $0x6,%eax 
    1766:	74 05                	je     176d <secret_phase+0x3d>
    1768:	e8 c1 08 00 00       	callq  202e <explode_bomb>
    176d:	48 8d 3d e4 0c 00 00 	lea    0xce4(%rip),%rdi        # 2458 <_IO_stdin_used+0x188>
    1774:	e8 d7 f7 ff ff       	callq  f50 <puts@plt>
    1779:	e8 2e 0a 00 00       	callq  21ac <phase_defused>
    177e:	5b                   	pop    %rbx
    177f:	c3                   	retq   
    1780:	e8 a9 08 00 00       	callq  202e <explode_bomb>
    1785:	eb ce                	jmp    1755 <secret_phase+0x25>

0000000000001787 <sig_handler>:
    1787:	48 83 ec 08          	sub    $0x8,%rsp
    178b:	48 8d 3d 2e 0d 00 00 	lea    0xd2e(%rip),%rdi        # 24c0 <array.3089+0x10>
    1792:	e8 b9 f7 ff ff       	callq  f50 <puts@plt>
    1797:	bf 03 00 00 00       	mov    $0x3,%edi
    179c:	e8 4f f9 ff ff       	callq  10f0 <sleep@plt>
    17a1:	48 8d 3d 50 0e 00 00 	lea    0xe50(%rip),%rdi        # 25f8 <array.3089+0x148>
    17a8:	b8 00 00 00 00       	mov    $0x0,%eax
    17ad:	e8 de f7 ff ff       	callq  f90 <printf@plt>
    17b2:	48 8b 3d 27 30 20 00 	mov    0x203027(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    17b9:	e8 92 f8 ff ff       	callq  1050 <fflush@plt>
    17be:	bf 01 00 00 00       	mov    $0x1,%edi
    17c3:	e8 28 f9 ff ff       	callq  10f0 <sleep@plt>
    17c8:	48 8d 3d 31 0e 00 00 	lea    0xe31(%rip),%rdi        # 2600 <array.3089+0x150>
    17cf:	e8 7c f7 ff ff       	callq  f50 <puts@plt>
    17d4:	bf 10 00 00 00       	mov    $0x10,%edi
    17d9:	e8 e2 f8 ff ff       	callq  10c0 <exit@plt>

00000000000017de <invalid_phase>:
    17de:	48 83 ec 08          	sub    $0x8,%rsp
    17e2:	48 89 fe             	mov    %rdi,%rsi
    17e5:	48 8d 3d 1c 0e 00 00 	lea    0xe1c(%rip),%rdi        # 2608 <array.3089+0x158>
    17ec:	b8 00 00 00 00       	mov    $0x0,%eax
    17f1:	e8 9a f7 ff ff       	callq  f90 <printf@plt>
    17f6:	bf 08 00 00 00       	mov    $0x8,%edi
    17fb:	e8 c0 f8 ff ff       	callq  10c0 <exit@plt>

0000000000001800 <string_length>:
    1800:	80 3f 00             	cmpb   $0x0,(%rdi)
    1803:	74 13                	je     1818 <string_length+0x18>
    1805:	b8 00 00 00 00       	mov    $0x0,%eax
    180a:	48 83 c7 01          	add    $0x1,%rdi
    180e:	83 c0 01             	add    $0x1,%eax
    1811:	80 3f 00             	cmpb   $0x0,(%rdi)
    1814:	75 f4                	jne    180a <string_length+0xa>
    1816:	f3 c3                	repz retq 
    1818:	b8 00 00 00 00       	mov    $0x0,%eax
    181d:	c3                   	retq   

000000000000181e <strings_not_equal>:
    181e:	41 54                	push   %r12
    1820:	55                   	push   %rbp
    1821:	53                   	push   %rbx
    1822:	48 89 fb             	mov    %rdi,%rbx
    1825:	48 89 f5             	mov    %rsi,%rbp
    1828:	e8 d3 ff ff ff       	callq  1800 <string_length>
    182d:	41 89 c4             	mov    %eax,%r12d
    1830:	48 89 ef             	mov    %rbp,%rdi
    1833:	e8 c8 ff ff ff       	callq  1800 <string_length>
    1838:	ba 01 00 00 00       	mov    $0x1,%edx
    183d:	41 39 c4             	cmp    %eax,%r12d
    1840:	74 07                	je     1849 <strings_not_equal+0x2b>
    1842:	89 d0                	mov    %edx,%eax
    1844:	5b                   	pop    %rbx
    1845:	5d                   	pop    %rbp
    1846:	41 5c                	pop    %r12
    1848:	c3                   	retq   
    1849:	0f b6 03             	movzbl (%rbx),%eax
    184c:	84 c0                	test   %al,%al
    184e:	74 27                	je     1877 <strings_not_equal+0x59>
    1850:	3a 45 00             	cmp    0x0(%rbp),%al
    1853:	75 29                	jne    187e <strings_not_equal+0x60>
    1855:	48 83 c3 01          	add    $0x1,%rbx
    1859:	48 83 c5 01          	add    $0x1,%rbp
    185d:	0f b6 03             	movzbl (%rbx),%eax
    1860:	84 c0                	test   %al,%al
    1862:	74 0c                	je     1870 <strings_not_equal+0x52>
    1864:	3a 45 00             	cmp    0x0(%rbp),%al
    1867:	74 ec                	je     1855 <strings_not_equal+0x37>
    1869:	ba 01 00 00 00       	mov    $0x1,%edx
    186e:	eb d2                	jmp    1842 <strings_not_equal+0x24>
    1870:	ba 00 00 00 00       	mov    $0x0,%edx
    1875:	eb cb                	jmp    1842 <strings_not_equal+0x24>
    1877:	ba 00 00 00 00       	mov    $0x0,%edx
    187c:	eb c4                	jmp    1842 <strings_not_equal+0x24>
    187e:	ba 01 00 00 00       	mov    $0x1,%edx
    1883:	eb bd                	jmp    1842 <strings_not_equal+0x24>

0000000000001885 <open_clientfd>:
    1885:	41 54                	push   %r12
    1887:	55                   	push   %rbp
    1888:	53                   	push   %rbx
    1889:	48 83 ec 10          	sub    $0x10,%rsp
    188d:	49 89 fc             	mov    %rdi,%r12
    1890:	89 f3                	mov    %esi,%ebx
    1892:	ba 00 00 00 00       	mov    $0x0,%edx
    1897:	be 01 00 00 00       	mov    $0x1,%esi
    189c:	bf 02 00 00 00       	mov    $0x2,%edi
    18a1:	e8 6a f8 ff ff       	callq  1110 <socket@plt>
    18a6:	85 c0                	test   %eax,%eax
    18a8:	78 64                	js     190e <open_clientfd+0x89>
    18aa:	89 c5                	mov    %eax,%ebp
    18ac:	4c 89 e7             	mov    %r12,%rdi
    18af:	e8 5c f7 ff ff       	callq  1010 <gethostbyname@plt>
    18b4:	48 85 c0             	test   %rax,%rax
    18b7:	74 6b                	je     1924 <open_clientfd+0x9f>
    18b9:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    18c0:	00 
    18c1:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    18c8:	00 00 
    18ca:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    18d0:	48 63 50 14          	movslq 0x14(%rax),%rdx
    18d4:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    18d9:	48 8b 40 18          	mov    0x18(%rax),%rax
    18dd:	48 8b 38             	mov    (%rax),%rdi
    18e0:	e8 8b f7 ff ff       	callq  1070 <bcopy@plt>
    18e5:	89 de                	mov    %ebx,%esi
    18e7:	66 c1 ce 08          	ror    $0x8,%si
    18eb:	66 89 74 24 02       	mov    %si,0x2(%rsp)
    18f0:	ba 10 00 00 00       	mov    $0x10,%edx
    18f5:	48 89 e6             	mov    %rsp,%rsi
    18f8:	89 ef                	mov    %ebp,%edi
    18fa:	e8 d1 f7 ff ff       	callq  10d0 <connect@plt>
    18ff:	85 c0                	test   %eax,%eax
    1901:	78 37                	js     193a <open_clientfd+0xb5>
    1903:	89 e8                	mov    %ebp,%eax
    1905:	48 83 c4 10          	add    $0x10,%rsp
    1909:	5b                   	pop    %rbx
    190a:	5d                   	pop    %rbp
    190b:	41 5c                	pop    %r12
    190d:	c3                   	retq   
    190e:	48 8d 3d 04 0d 00 00 	lea    0xd04(%rip),%rdi        # 2619 <array.3089+0x169>
    1915:	e8 36 f6 ff ff       	callq  f50 <puts@plt>
    191a:	bf 08 00 00 00       	mov    $0x8,%edi
    191f:	e8 9c f7 ff ff       	callq  10c0 <exit@plt>
    1924:	48 8d 3d fc 0c 00 00 	lea    0xcfc(%rip),%rdi        # 2627 <array.3089+0x177>
    192b:	e8 20 f6 ff ff       	callq  f50 <puts@plt>
    1930:	bf 08 00 00 00       	mov    $0x8,%edi
    1935:	e8 86 f7 ff ff       	callq  10c0 <exit@plt>
    193a:	48 8d 3d f4 0c 00 00 	lea    0xcf4(%rip),%rdi        # 2635 <array.3089+0x185>
    1941:	e8 0a f6 ff ff       	callq  f50 <puts@plt>
    1946:	bf 08 00 00 00       	mov    $0x8,%edi
    194b:	e8 70 f7 ff ff       	callq  10c0 <exit@plt>

0000000000001950 <initialize_bomb>:
    1950:	48 83 ec 08          	sub    $0x8,%rsp
    1954:	48 8d 35 2c fe ff ff 	lea    -0x1d4(%rip),%rsi        # 1787 <sig_handler>
    195b:	bf 02 00 00 00       	mov    $0x2,%edi
    1960:	e8 9b f6 ff ff       	callq  1000 <signal@plt>
    1965:	be 50 00 00 00       	mov    $0x50,%esi
    196a:	48 8d 3d d2 0c 00 00 	lea    0xcd2(%rip),%rdi        # 2643 <array.3089+0x193>
    1971:	e8 0f ff ff ff       	callq  1885 <open_clientfd>
    1976:	89 c7                	mov    %eax,%edi
    1978:	e8 43 f6 ff ff       	callq  fc0 <close@plt>
    197d:	48 83 c4 08          	add    $0x8,%rsp
    1981:	c3                   	retq   

0000000000001982 <blank_line>:
    1982:	55                   	push   %rbp
    1983:	53                   	push   %rbx
    1984:	48 83 ec 08          	sub    $0x8,%rsp
    1988:	48 89 fd             	mov    %rdi,%rbp
    198b:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    198f:	84 db                	test   %bl,%bl
    1991:	74 1e                	je     19b1 <blank_line+0x2f>
    1993:	e8 68 f7 ff ff       	callq  1100 <__ctype_b_loc@plt>
    1998:	48 83 c5 01          	add    $0x1,%rbp
    199c:	48 0f be db          	movsbq %bl,%rbx
    19a0:	48 8b 00             	mov    (%rax),%rax
    19a3:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    19a8:	75 e1                	jne    198b <blank_line+0x9>
    19aa:	b8 00 00 00 00       	mov    $0x0,%eax
    19af:	eb 05                	jmp    19b6 <blank_line+0x34>
    19b1:	b8 01 00 00 00       	mov    $0x1,%eax
    19b6:	48 83 c4 08          	add    $0x8,%rsp
    19ba:	5b                   	pop    %rbx
    19bb:	5d                   	pop    %rbp
    19bc:	c3                   	retq   

00000000000019bd <skip>:
    19bd:	55                   	push   %rbp
    19be:	53                   	push   %rbx
    19bf:	48 83 ec 08          	sub    $0x8,%rsp
    19c3:	48 8d 2d 56 2e 20 00 	lea    0x202e56(%rip),%rbp        # 204820 <input_strings>
    19ca:	48 63 05 2b 2e 20 00 	movslq 0x202e2b(%rip),%rax        # 2047fc <num_input_strings>
    19d1:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    19d5:	48 c1 e7 04          	shl    $0x4,%rdi
    19d9:	48 01 ef             	add    %rbp,%rdi
    19dc:	48 8b 15 1d 2e 20 00 	mov    0x202e1d(%rip),%rdx        # 204800 <infile>
    19e3:	be 50 00 00 00       	mov    $0x50,%esi
    19e8:	e8 f3 f5 ff ff       	callq  fe0 <fgets@plt>
    19ed:	48 89 c3             	mov    %rax,%rbx
    19f0:	48 85 c0             	test   %rax,%rax
    19f3:	74 0c                	je     1a01 <skip+0x44>
    19f5:	48 89 c7             	mov    %rax,%rdi
    19f8:	e8 85 ff ff ff       	callq  1982 <blank_line>
    19fd:	85 c0                	test   %eax,%eax
    19ff:	75 c9                	jne    19ca <skip+0xd>
    1a01:	48 89 d8             	mov    %rbx,%rax
    1a04:	48 83 c4 08          	add    $0x8,%rsp
    1a08:	5b                   	pop    %rbx
    1a09:	5d                   	pop    %rbp
    1a0a:	c3                   	retq   

0000000000001a0b <writen>:
    1a0b:	41 56                	push   %r14
    1a0d:	41 55                	push   %r13
    1a0f:	41 54                	push   %r12
    1a11:	55                   	push   %rbp
    1a12:	53                   	push   %rbx
    1a13:	49 89 d5             	mov    %rdx,%r13
    1a16:	48 85 d2             	test   %rdx,%rdx
    1a19:	74 3b                	je     1a56 <writen+0x4b>
    1a1b:	41 89 fc             	mov    %edi,%r12d
    1a1e:	48 89 f5             	mov    %rsi,%rbp
    1a21:	48 89 d3             	mov    %rdx,%rbx
    1a24:	41 be 00 00 00 00    	mov    $0x0,%r14d
    1a2a:	eb 08                	jmp    1a34 <writen+0x29>
    1a2c:	48 01 c5             	add    %rax,%rbp
    1a2f:	48 29 c3             	sub    %rax,%rbx
    1a32:	74 22                	je     1a56 <writen+0x4b>
    1a34:	48 89 da             	mov    %rbx,%rdx
    1a37:	48 89 ee             	mov    %rbp,%rsi
    1a3a:	44 89 e7             	mov    %r12d,%edi
    1a3d:	e8 1e f5 ff ff       	callq  f60 <write@plt>
    1a42:	48 85 c0             	test   %rax,%rax
    1a45:	7f e5                	jg     1a2c <writen+0x21>
    1a47:	e8 e4 f4 ff ff       	callq  f30 <__errno_location@plt>
    1a4c:	83 38 04             	cmpl   $0x4,(%rax)
    1a4f:	75 11                	jne    1a62 <writen+0x57>
    1a51:	4c 89 f0             	mov    %r14,%rax
    1a54:	eb d6                	jmp    1a2c <writen+0x21>
    1a56:	4c 89 e8             	mov    %r13,%rax
    1a59:	5b                   	pop    %rbx
    1a5a:	5d                   	pop    %rbp
    1a5b:	41 5c                	pop    %r12
    1a5d:	41 5d                	pop    %r13
    1a5f:	41 5e                	pop    %r14
    1a61:	c3                   	retq   
    1a62:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    1a69:	eb ee                	jmp    1a59 <writen+0x4e>

0000000000001a6b <send_msg>:
    1a6b:	41 57                	push   %r15
    1a6d:	41 56                	push   %r14
    1a6f:	41 55                	push   %r13
    1a71:	41 54                	push   %r12
    1a73:	55                   	push   %rbp
    1a74:	53                   	push   %rbx
    1a75:	48 81 ec 68 24 00 00 	sub    $0x2468,%rsp
    1a7c:	41 89 fc             	mov    %edi,%r12d
    1a7f:	ba 00 00 00 00       	mov    $0x0,%edx
    1a84:	be 01 00 00 00       	mov    $0x1,%esi
    1a89:	bf 02 00 00 00       	mov    $0x2,%edi
    1a8e:	e8 7d f6 ff ff       	callq  1110 <socket@plt>
    1a93:	41 89 c7             	mov    %eax,%r15d
    1a96:	85 c0                	test   %eax,%eax
    1a98:	0f 88 2a 02 00 00    	js     1cc8 <send_msg+0x25d>
    1a9e:	48 c7 84 24 50 24 00 	movq   $0x0,0x2450(%rsp)
    1aa5:	00 00 00 00 00 
    1aaa:	48 c7 84 24 58 24 00 	movq   $0x0,0x2458(%rsp)
    1ab1:	00 00 00 00 00 
    1ab6:	66 c7 84 24 50 24 00 	movw   $0x2,0x2450(%rsp)
    1abd:	00 02 00 
    1ac0:	66 c7 84 24 52 24 00 	movw   $0x7ac8,0x2452(%rsp)
    1ac7:	00 c8 7a 
    1aca:	48 8d 94 24 54 24 00 	lea    0x2454(%rsp),%rdx
    1ad1:	00 
    1ad2:	48 8d 35 6a 0b 00 00 	lea    0xb6a(%rip),%rsi        # 2643 <array.3089+0x193>
    1ad9:	bf 02 00 00 00       	mov    $0x2,%edi
    1ade:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae3:	e8 58 f5 ff ff       	callq  1040 <inet_pton@plt>
    1ae8:	85 c0                	test   %eax,%eax
    1aea:	0f 88 09 02 00 00    	js     1cf9 <send_msg+0x28e>
    1af0:	48 8d b4 24 50 24 00 	lea    0x2450(%rsp),%rsi
    1af7:	00 
    1af8:	ba 10 00 00 00       	mov    $0x10,%edx
    1afd:	44 89 ff             	mov    %r15d,%edi
    1b00:	e8 cb f5 ff ff       	callq  10d0 <connect@plt>
    1b05:	85 c0                	test   %eax,%eax
    1b07:	0f 88 22 02 00 00    	js     1d2f <send_msg+0x2c4>
    1b0d:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1b12:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
    1b19:	63 74 3a 
    1b1c:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    1b21:	48 b8 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rax
    1b28:	20 6e 6f 
    1b2b:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1b30:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
    1b37:	61 74 69 
    1b3a:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    1b3f:	c7 44 24 68 6f 6e 0a 	movl   $0xa6e6f,0x68(%rsp)
    1b46:	00 
    1b47:	48 8d 9c 24 50 04 00 	lea    0x450(%rsp),%rbx
    1b4e:	00 
    1b4f:	48 89 ee             	mov    %rbp,%rsi
    1b52:	48 89 df             	mov    %rbx,%rdi
    1b55:	e8 46 f5 ff ff       	callq  10a0 <strcat@plt>
    1b5a:	66 c7 44 24 50 0a 00 	movw   $0xa,0x50(%rsp)
    1b61:	48 89 ee             	mov    %rbp,%rsi
    1b64:	48 89 df             	mov    %rbx,%rdi
    1b67:	e8 34 f5 ff ff       	callq  10a0 <strcat@plt>
    1b6c:	bf 00 00 00 00       	mov    $0x0,%edi
    1b71:	e8 0a f5 ff ff       	callq  1080 <cuserid@plt>
    1b76:	48 85 c0             	test   %rax,%rax
    1b79:	0f 84 e6 01 00 00    	je     1d65 <send_msg+0x2fa>
    1b7f:	48 89 e7             	mov    %rsp,%rdi
    1b82:	48 89 c6             	mov    %rax,%rsi
    1b85:	e8 b6 f3 ff ff       	callq  f40 <strcpy@plt>
    1b8a:	45 85 e4             	test   %r12d,%r12d
    1b8d:	48 8d 05 c5 0a 00 00 	lea    0xac5(%rip),%rax        # 2659 <array.3089+0x1a9>
    1b94:	4c 8d 0d b6 0a 00 00 	lea    0xab6(%rip),%r9        # 2651 <array.3089+0x1a1>
    1b9b:	4c 0f 44 c8          	cmove  %rax,%r9
    1b9f:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
    1ba4:	48 83 ec 08          	sub    $0x8,%rsp
    1ba8:	8b 05 4e 2c 20 00    	mov    0x202c4e(%rip),%eax        # 2047fc <num_input_strings>
    1bae:	50                   	push   %rax
    1baf:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1bb4:	8b 0d a6 2a 20 00    	mov    0x202aa6(%rip),%ecx        # 204660 <bomb_id>
    1bba:	48 8d 15 9f 26 20 00 	lea    0x20269f(%rip),%rdx        # 204260 <lab_id>
    1bc1:	48 8d 35 b5 0a 00 00 	lea    0xab5(%rip),%rsi        # 267d <array.3089+0x1cd>
    1bc8:	48 89 df             	mov    %rbx,%rdi
    1bcb:	b8 00 00 00 00       	mov    $0x0,%eax
    1bd0:	e8 db f4 ff ff       	callq  10b0 <sprintf@plt>
    1bd5:	48 8d bc 24 60 04 00 	lea    0x460(%rsp),%rdi
    1bdc:	00 
    1bdd:	48 89 de             	mov    %rbx,%rsi
    1be0:	e8 bb f4 ff ff       	callq  10a0 <strcat@plt>
    1be5:	48 83 c4 10          	add    $0x10,%rsp
    1be9:	83 3d 0c 2c 20 00 00 	cmpl   $0x0,0x202c0c(%rip)        # 2047fc <num_input_strings>
    1bf0:	7e 70                	jle    1c62 <send_msg+0x1f7>
    1bf2:	bb 00 00 00 00       	mov    $0x0,%ebx
    1bf7:	4c 8d 35 22 2c 20 00 	lea    0x202c22(%rip),%r14        # 204820 <input_strings>
    1bfe:	49 89 e5             	mov    %rsp,%r13
    1c01:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1c06:	4c 8d a4 24 50 04 00 	lea    0x450(%rsp),%r12
    1c0d:	00 
    1c0e:	48 63 c3             	movslq %ebx,%rax
    1c11:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1c15:	48 c1 e0 04          	shl    $0x4,%rax
    1c19:	4c 01 f0             	add    %r14,%rax
    1c1c:	83 c3 01             	add    $0x1,%ebx
    1c1f:	48 83 ec 08          	sub    $0x8,%rsp
    1c23:	50                   	push   %rax
    1c24:	41 89 d9             	mov    %ebx,%r9d
    1c27:	4d 89 e8             	mov    %r13,%r8
    1c2a:	8b 0d 30 2a 20 00    	mov    0x202a30(%rip),%ecx        # 204660 <bomb_id>
    1c30:	48 8d 15 29 26 20 00 	lea    0x202629(%rip),%rdx        # 204260 <lab_id>
    1c37:	48 8d 35 5b 0a 00 00 	lea    0xa5b(%rip),%rsi        # 2699 <array.3089+0x1e9>
    1c3e:	48 89 ef             	mov    %rbp,%rdi
    1c41:	b8 00 00 00 00       	mov    $0x0,%eax
    1c46:	e8 65 f4 ff ff       	callq  10b0 <sprintf@plt>
    1c4b:	48 89 ee             	mov    %rbp,%rsi
    1c4e:	4c 89 e7             	mov    %r12,%rdi
    1c51:	e8 4a f4 ff ff       	callq  10a0 <strcat@plt>
    1c56:	48 83 c4 10          	add    $0x10,%rsp
    1c5a:	39 1d 9c 2b 20 00    	cmp    %ebx,0x202b9c(%rip)        # 2047fc <num_input_strings>
    1c60:	7f ac                	jg     1c0e <send_msg+0x1a3>
    1c62:	48 8d ac 24 50 04 00 	lea    0x450(%rsp),%rbp
    1c69:	00 
    1c6a:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
    1c71:	bb 00 00 00 00       	mov    $0x0,%ebx
    1c76:	4c 89 e1             	mov    %r12,%rcx
    1c79:	48 89 ef             	mov    %rbp,%rdi
    1c7c:	89 d8                	mov    %ebx,%eax
    1c7e:	f2 ae                	repnz scas %es:(%rdi),%al
    1c80:	48 f7 d1             	not    %rcx
    1c83:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
    1c87:	48 89 ee             	mov    %rbp,%rsi
    1c8a:	44 89 ff             	mov    %r15d,%edi
    1c8d:	e8 79 fd ff ff       	callq  1a0b <writen>
    1c92:	48 89 c2             	mov    %rax,%rdx
    1c95:	4c 89 e1             	mov    %r12,%rcx
    1c98:	48 89 ef             	mov    %rbp,%rdi
    1c9b:	89 d8                	mov    %ebx,%eax
    1c9d:	f2 ae                	repnz scas %es:(%rdi),%al
    1c9f:	48 f7 d1             	not    %rcx
    1ca2:	4c 01 e1             	add    %r12,%rcx
    1ca5:	48 39 ca             	cmp    %rcx,%rdx
    1ca8:	0f 82 cf 00 00 00    	jb     1d7d <send_msg+0x312>
    1cae:	44 89 ff             	mov    %r15d,%edi
    1cb1:	e8 0a f3 ff ff       	callq  fc0 <close@plt>
    1cb6:	48 81 c4 68 24 00 00 	add    $0x2468,%rsp
    1cbd:	5b                   	pop    %rbx
    1cbe:	5d                   	pop    %rbp
    1cbf:	41 5c                	pop    %r12
    1cc1:	41 5d                	pop    %r13
    1cc3:	41 5e                	pop    %r14
    1cc5:	41 5f                	pop    %r15
    1cc7:	c3                   	retq   
    1cc8:	48 8d 15 93 09 00 00 	lea    0x993(%rip),%rdx        # 2662 <array.3089+0x1b2>
    1ccf:	48 8d 35 17 06 00 00 	lea    0x617(%rip),%rsi        # 22ed <_IO_stdin_used+0x1d>
    1cd6:	48 8b 3d 03 2b 20 00 	mov    0x202b03(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1cdd:	b8 00 00 00 00       	mov    $0x0,%eax
    1ce2:	e8 39 f3 ff ff       	callq  1020 <fprintf@plt>
    1ce7:	44 89 ff             	mov    %r15d,%edi
    1cea:	e8 d1 f2 ff ff       	callq  fc0 <close@plt>
    1cef:	bf 01 00 00 00       	mov    $0x1,%edi
    1cf4:	e8 c7 f3 ff ff       	callq  10c0 <exit@plt>
    1cf9:	48 8d 15 d6 09 00 00 	lea    0x9d6(%rip),%rdx        # 26d6 <array.3089+0x226>
    1d00:	48 8d 35 e6 05 00 00 	lea    0x5e6(%rip),%rsi        # 22ed <_IO_stdin_used+0x1d>
    1d07:	48 8b 3d d2 2a 20 00 	mov    0x202ad2(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1d0e:	b8 00 00 00 00       	mov    $0x0,%eax
    1d13:	e8 08 f3 ff ff       	callq  1020 <fprintf@plt>
    1d18:	45 85 ff             	test   %r15d,%r15d
    1d1b:	74 08                	je     1d25 <send_msg+0x2ba>
    1d1d:	44 89 ff             	mov    %r15d,%edi
    1d20:	e8 9b f2 ff ff       	callq  fc0 <close@plt>
    1d25:	bf 01 00 00 00       	mov    $0x1,%edi
    1d2a:	e8 91 f3 ff ff       	callq  10c0 <exit@plt>
    1d2f:	48 8d 15 39 09 00 00 	lea    0x939(%rip),%rdx        # 266f <array.3089+0x1bf>
    1d36:	48 8d 35 b0 05 00 00 	lea    0x5b0(%rip),%rsi        # 22ed <_IO_stdin_used+0x1d>
    1d3d:	48 8b 3d 9c 2a 20 00 	mov    0x202a9c(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1d44:	b8 00 00 00 00       	mov    $0x0,%eax
    1d49:	e8 d2 f2 ff ff       	callq  1020 <fprintf@plt>
    1d4e:	45 85 ff             	test   %r15d,%r15d
    1d51:	74 08                	je     1d5b <send_msg+0x2f0>
    1d53:	44 89 ff             	mov    %r15d,%edi
    1d56:	e8 65 f2 ff ff       	callq  fc0 <close@plt>
    1d5b:	bf 01 00 00 00       	mov    $0x1,%edi
    1d60:	e8 5b f3 ff ff       	callq  10c0 <exit@plt>
    1d65:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
    1d6c:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
    1d73:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
    1d78:	e9 0d fe ff ff       	jmpq   1b8a <send_msg+0x11f>
    1d7d:	48 8d 15 31 09 00 00 	lea    0x931(%rip),%rdx        # 26b5 <array.3089+0x205>
    1d84:	48 8d 35 62 05 00 00 	lea    0x562(%rip),%rsi        # 22ed <_IO_stdin_used+0x1d>
    1d8b:	48 8b 3d 4e 2a 20 00 	mov    0x202a4e(%rip),%rdi        # 2047e0 <stdout@@GLIBC_2.2.5>
    1d92:	e8 89 f2 ff ff       	callq  1020 <fprintf@plt>
    1d97:	45 85 ff             	test   %r15d,%r15d
    1d9a:	74 08                	je     1da4 <send_msg+0x339>
    1d9c:	44 89 ff             	mov    %r15d,%edi
    1d9f:	e8 1c f2 ff ff       	callq  fc0 <close@plt>
    1da4:	bf 01 00 00 00       	mov    $0x1,%edi
    1da9:	e8 12 f3 ff ff       	callq  10c0 <exit@plt>

0000000000001dae <send_msg_2>:
    1dae:	41 57                	push   %r15
    1db0:	41 56                	push   %r14
    1db2:	41 55                	push   %r13
    1db4:	41 54                	push   %r12
    1db6:	55                   	push   %rbp
    1db7:	53                   	push   %rbx
    1db8:	48 83 ec 68          	sub    $0x68,%rsp
    1dbc:	89 fb                	mov    %edi,%ebx
    1dbe:	bf 00 00 00 00       	mov    $0x0,%edi
    1dc3:	e8 e8 f1 ff ff       	callq  fb0 <dup@plt>
    1dc8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1dcc:	83 f8 ff             	cmp    $0xffffffff,%eax
    1dcf:	0f 84 a6 01 00 00    	je     1f7b <send_msg_2+0x1cd>
    1dd5:	bf 00 00 00 00       	mov    $0x0,%edi
    1dda:	e8 e1 f1 ff ff       	callq  fc0 <close@plt>
    1ddf:	83 f8 ff             	cmp    $0xffffffff,%eax
    1de2:	0f 84 a9 01 00 00    	je     1f91 <send_msg_2+0x1e3>
    1de8:	e8 03 f2 ff ff       	callq  ff0 <tmpfile@plt>
    1ded:	48 89 c5             	mov    %rax,%rbp
    1df0:	48 85 c0             	test   %rax,%rax
    1df3:	0f 84 ae 01 00 00    	je     1fa7 <send_msg_2+0x1f9>
    1df9:	48 89 c1             	mov    %rax,%rcx
    1dfc:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1e01:	be 01 00 00 00       	mov    $0x1,%esi
    1e06:	48 8d 3d f7 08 00 00 	lea    0x8f7(%rip),%rdi        # 2704 <array.3089+0x254>
    1e0d:	e8 ce f2 ff ff       	callq  10e0 <fwrite@plt>
    1e12:	48 89 ee             	mov    %rbp,%rsi
    1e15:	bf 0a 00 00 00       	mov    $0xa,%edi
    1e1a:	e8 b1 f1 ff ff       	callq  fd0 <fputc@plt>
    1e1f:	bf 00 00 00 00       	mov    $0x0,%edi
    1e24:	e8 57 f2 ff ff       	callq  1080 <cuserid@plt>
    1e29:	48 85 c0             	test   %rax,%rax
    1e2c:	0f 84 8b 01 00 00    	je     1fbd <send_msg_2+0x20f>
    1e32:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1e37:	48 89 c6             	mov    %rax,%rsi
    1e3a:	e8 01 f1 ff ff       	callq  f40 <strcpy@plt>
    1e3f:	85 db                	test   %ebx,%ebx
    1e41:	48 8d 05 11 08 00 00 	lea    0x811(%rip),%rax        # 2659 <array.3089+0x1a9>
    1e48:	4c 8d 0d 02 08 00 00 	lea    0x802(%rip),%r9        # 2651 <array.3089+0x1a1>
    1e4f:	4c 0f 44 c8          	cmove  %rax,%r9
    1e53:	48 83 ec 08          	sub    $0x8,%rsp
    1e57:	8b 05 9f 29 20 00    	mov    0x20299f(%rip),%eax        # 2047fc <num_input_strings>
    1e5d:	50                   	push   %rax
    1e5e:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
    1e63:	8b 0d f7 27 20 00    	mov    0x2027f7(%rip),%ecx        # 204660 <bomb_id>
    1e69:	48 8d 15 f0 23 20 00 	lea    0x2023f0(%rip),%rdx        # 204260 <lab_id>
    1e70:	48 8d 35 06 08 00 00 	lea    0x806(%rip),%rsi        # 267d <array.3089+0x1cd>
    1e77:	48 89 ef             	mov    %rbp,%rdi
    1e7a:	b8 00 00 00 00       	mov    $0x0,%eax
    1e7f:	e8 9c f1 ff ff       	callq  1020 <fprintf@plt>
    1e84:	48 83 c4 10          	add    $0x10,%rsp
    1e88:	83 3d 6d 29 20 00 00 	cmpl   $0x0,0x20296d(%rip)        # 2047fc <num_input_strings>
    1e8f:	7e 60                	jle    1ef1 <send_msg_2+0x143>
    1e91:	bb 00 00 00 00       	mov    $0x0,%ebx
    1e96:	4c 8d 3d 83 29 20 00 	lea    0x202983(%rip),%r15        # 204820 <input_strings>
    1e9d:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    1ea2:	4c 8d 2d b7 23 20 00 	lea    0x2023b7(%rip),%r13        # 204260 <lab_id>
    1ea9:	4c 8d 25 e9 07 00 00 	lea    0x7e9(%rip),%r12        # 2699 <array.3089+0x1e9>
    1eb0:	48 63 c3             	movslq %ebx,%rax
    1eb3:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1eb7:	48 c1 e0 04          	shl    $0x4,%rax
    1ebb:	4c 01 f8             	add    %r15,%rax
    1ebe:	83 c3 01             	add    $0x1,%ebx
    1ec1:	48 83 ec 08          	sub    $0x8,%rsp
    1ec5:	50                   	push   %rax
    1ec6:	41 89 d9             	mov    %ebx,%r9d
    1ec9:	4d 89 f0             	mov    %r14,%r8
    1ecc:	8b 0d 8e 27 20 00    	mov    0x20278e(%rip),%ecx        # 204660 <bomb_id>
    1ed2:	4c 89 ea             	mov    %r13,%rdx
    1ed5:	4c 89 e6             	mov    %r12,%rsi
    1ed8:	48 89 ef             	mov    %rbp,%rdi
    1edb:	b8 00 00 00 00       	mov    $0x0,%eax
    1ee0:	e8 3b f1 ff ff       	callq  1020 <fprintf@plt>
    1ee5:	48 83 c4 10          	add    $0x10,%rsp
    1ee9:	39 1d 0d 29 20 00    	cmp    %ebx,0x20290d(%rip)        # 2047fc <num_input_strings>
    1eef:	7f bf                	jg     1eb0 <send_msg_2+0x102>
    1ef1:	48 89 ef             	mov    %rbp,%rdi
    1ef4:	e8 a7 f0 ff ff       	callq  fa0 <rewind@plt>
    1ef9:	4c 8d 05 20 08 00 00 	lea    0x820(%rip),%r8        # 2720 <array.3089+0x270>
    1f00:	48 8d 0d 23 08 00 00 	lea    0x823(%rip),%rcx        # 272a <array.3089+0x27a>
    1f07:	48 8d 15 24 08 00 00 	lea    0x824(%rip),%rdx        # 2732 <array.3089+0x282>
    1f0e:	48 8d 35 34 08 00 00 	lea    0x834(%rip),%rsi        # 2749 <array.3089+0x299>
    1f15:	48 8d 3d 44 2f 20 00 	lea    0x202f44(%rip),%rdi        # 204e60 <scratch>
    1f1c:	b8 00 00 00 00       	mov    $0x0,%eax
    1f21:	e8 8a f1 ff ff       	callq  10b0 <sprintf@plt>
    1f26:	48 8d 3d 33 2f 20 00 	lea    0x202f33(%rip),%rdi        # 204e60 <scratch>
    1f2d:	e8 4e f0 ff ff       	callq  f80 <system@plt>
    1f32:	85 c0                	test   %eax,%eax
    1f34:	0f 85 9c 00 00 00    	jne    1fd6 <send_msg_2+0x228>
    1f3a:	48 89 ef             	mov    %rbp,%rdi
    1f3d:	e8 2e f0 ff ff       	callq  f70 <fclose@plt>
    1f42:	85 c0                	test   %eax,%eax
    1f44:	0f 85 a2 00 00 00    	jne    1fec <send_msg_2+0x23e>
    1f4a:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1f4e:	e8 5d f0 ff ff       	callq  fb0 <dup@plt>
    1f53:	85 c0                	test   %eax,%eax
    1f55:	0f 85 a7 00 00 00    	jne    2002 <send_msg_2+0x254>
    1f5b:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1f5f:	e8 5c f0 ff ff       	callq  fc0 <close@plt>
    1f64:	85 c0                	test   %eax,%eax
    1f66:	0f 85 ac 00 00 00    	jne    2018 <send_msg_2+0x26a>
    1f6c:	48 83 c4 68          	add    $0x68,%rsp
    1f70:	5b                   	pop    %rbx
    1f71:	5d                   	pop    %rbp
    1f72:	41 5c                	pop    %r12
    1f74:	41 5d                	pop    %r13
    1f76:	41 5e                	pop    %r14
    1f78:	41 5f                	pop    %r15
    1f7a:	c3                   	retq   
    1f7b:	48 8d 3d 46 07 00 00 	lea    0x746(%rip),%rdi        # 26c8 <array.3089+0x218>
    1f82:	e8 c9 ef ff ff       	callq  f50 <puts@plt>
    1f87:	bf 08 00 00 00       	mov    $0x8,%edi
    1f8c:	e8 2f f1 ff ff       	callq  10c0 <exit@plt>
    1f91:	48 8d 3d 44 07 00 00 	lea    0x744(%rip),%rdi        # 26dc <array.3089+0x22c>
    1f98:	e8 b3 ef ff ff       	callq  f50 <puts@plt>
    1f9d:	bf 08 00 00 00       	mov    $0x8,%edi
    1fa2:	e8 19 f1 ff ff       	callq  10c0 <exit@plt>
    1fa7:	48 8d 3d 41 07 00 00 	lea    0x741(%rip),%rdi        # 26ef <array.3089+0x23f>
    1fae:	e8 9d ef ff ff       	callq  f50 <puts@plt>
    1fb3:	bf 08 00 00 00       	mov    $0x8,%edi
    1fb8:	e8 03 f1 ff ff       	callq  10c0 <exit@plt>
    1fbd:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
    1fc4:	6f 
    1fc5:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
    1fcc:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
    1fd1:	e9 69 fe ff ff       	jmpq   1e3f <send_msg_2+0x91>
    1fd6:	48 8d 3d 75 07 00 00 	lea    0x775(%rip),%rdi        # 2752 <array.3089+0x2a2>
    1fdd:	e8 6e ef ff ff       	callq  f50 <puts@plt>
    1fe2:	bf 08 00 00 00       	mov    $0x8,%edi
    1fe7:	e8 d4 f0 ff ff       	callq  10c0 <exit@plt>
    1fec:	48 8d 3d 79 07 00 00 	lea    0x779(%rip),%rdi        # 276c <array.3089+0x2bc>
    1ff3:	e8 58 ef ff ff       	callq  f50 <puts@plt>
    1ff8:	bf 08 00 00 00       	mov    $0x8,%edi
    1ffd:	e8 be f0 ff ff       	callq  10c0 <exit@plt>
    2002:	48 8d 3d 7c 07 00 00 	lea    0x77c(%rip),%rdi        # 2785 <array.3089+0x2d5>
    2009:	e8 42 ef ff ff       	callq  f50 <puts@plt>
    200e:	bf 08 00 00 00       	mov    $0x8,%edi
    2013:	e8 a8 f0 ff ff       	callq  10c0 <exit@plt>
    2018:	48 8d 3d 81 07 00 00 	lea    0x781(%rip),%rdi        # 27a0 <array.3089+0x2f0>
    201f:	e8 2c ef ff ff       	callq  f50 <puts@plt>
    2024:	bf 08 00 00 00       	mov    $0x8,%edi
    2029:	e8 92 f0 ff ff       	callq  10c0 <exit@plt>

000000000000202e <explode_bomb>:
    202e:	48 83 ec 08          	sub    $0x8,%rsp
    2032:	48 8d 3d 7e 07 00 00 	lea    0x77e(%rip),%rdi        # 27b7 <array.3089+0x307>
    2039:	e8 12 ef ff ff       	callq  f50 <puts@plt>
    203e:	48 8d 3d 7b 07 00 00 	lea    0x77b(%rip),%rdi        # 27c0 <array.3089+0x310>
    2045:	e8 06 ef ff ff       	callq  f50 <puts@plt>
    204a:	bf 00 00 00 00       	mov    $0x0,%edi
    204f:	e8 17 fa ff ff       	callq  1a6b <send_msg>
    2054:	48 8d 3d 9d 04 00 00 	lea    0x49d(%rip),%rdi        # 24f8 <array.3089+0x48>
    205b:	e8 f0 ee ff ff       	callq  f50 <puts@plt>
    2060:	bf 08 00 00 00       	mov    $0x8,%edi
    2065:	e8 56 f0 ff ff       	callq  10c0 <exit@plt>

000000000000206a <read_six_numbers>:
    206a:	48 83 ec 08          	sub    $0x8,%rsp
    206e:	48 89 f2             	mov    %rsi,%rdx
    2071:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    2075:	48 8d 46 14          	lea    0x14(%rsi),%rax
    2079:	50                   	push   %rax
    207a:	48 8d 46 10          	lea    0x10(%rsi),%rax
    207e:	50                   	push   %rax
    207f:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    2083:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    2087:	48 8d 35 49 07 00 00 	lea    0x749(%rip),%rsi        # 27d7 <array.3089+0x327>
    208e:	b8 00 00 00 00       	mov    $0x0,%eax
    2093:	e8 c8 ef ff ff       	callq  1060 <__isoc99_sscanf@plt>
    2098:	48 83 c4 10          	add    $0x10,%rsp
    209c:	83 f8 05             	cmp    $0x5,%eax
    209f:	7e 05                	jle    20a6 <read_six_numbers+0x3c>
    20a1:	48 83 c4 08          	add    $0x8,%rsp
    20a5:	c3                   	retq   
    20a6:	e8 83 ff ff ff       	callq  202e <explode_bomb>

00000000000020ab <read_line>:
    20ab:	48 83 ec 08          	sub    $0x8,%rsp
    20af:	b8 00 00 00 00       	mov    $0x0,%eax
    20b4:	e8 04 f9 ff ff       	callq  19bd <skip>
    20b9:	48 85 c0             	test   %rax,%rax
    20bc:	74 6f                	je     212d <read_line+0x82>
    20be:	8b 35 38 27 20 00    	mov    0x202738(%rip),%esi        # 2047fc <num_input_strings>
    20c4:	48 63 c6             	movslq %esi,%rax
    20c7:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    20cb:	48 c1 e2 04          	shl    $0x4,%rdx
    20cf:	48 8d 05 4a 27 20 00 	lea    0x20274a(%rip),%rax        # 204820 <input_strings>
    20d6:	48 01 c2             	add    %rax,%rdx
    20d9:	b8 00 00 00 00       	mov    $0x0,%eax
    20de:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    20e5:	48 89 d7             	mov    %rdx,%rdi
    20e8:	f2 ae                	repnz scas %es:(%rdi),%al
    20ea:	48 f7 d1             	not    %rcx
    20ed:	48 83 e9 01          	sub    $0x1,%rcx
    20f1:	83 f9 4f             	cmp    $0x4f,%ecx
    20f4:	0f 84 a1 00 00 00    	je     219b <read_line+0xf0>
    20fa:	83 e9 01             	sub    $0x1,%ecx
    20fd:	48 63 c9             	movslq %ecx,%rcx
    2100:	48 63 c6             	movslq %esi,%rax
    2103:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    2107:	48 c1 e0 04          	shl    $0x4,%rax
    210b:	48 89 c7             	mov    %rax,%rdi
    210e:	48 8d 05 0b 27 20 00 	lea    0x20270b(%rip),%rax        # 204820 <input_strings>
    2115:	48 01 f8             	add    %rdi,%rax
    2118:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    211c:	83 c6 01             	add    $0x1,%esi
    211f:	89 35 d7 26 20 00    	mov    %esi,0x2026d7(%rip)        # 2047fc <num_input_strings>
    2125:	48 89 d0             	mov    %rdx,%rax
    2128:	48 83 c4 08          	add    $0x8,%rsp
    212c:	c3                   	retq   
    212d:	48 8b 05 bc 26 20 00 	mov    0x2026bc(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    2134:	48 39 05 c5 26 20 00 	cmp    %rax,0x2026c5(%rip)        # 204800 <infile>
    213b:	74 43                	je     2180 <read_line+0xd5>
    213d:	48 8d 3d c3 06 00 00 	lea    0x6c3(%rip),%rdi        # 2807 <array.3089+0x357>
    2144:	e8 d7 ed ff ff       	callq  f20 <getenv@plt>
    2149:	48 85 c0             	test   %rax,%rax
    214c:	75 43                	jne    2191 <read_line+0xe6>
    214e:	48 8b 05 9b 26 20 00 	mov    0x20269b(%rip),%rax        # 2047f0 <stdin@@GLIBC_2.2.5>
    2155:	48 89 05 a4 26 20 00 	mov    %rax,0x2026a4(%rip)        # 204800 <infile>
    215c:	b8 00 00 00 00       	mov    $0x0,%eax
    2161:	e8 57 f8 ff ff       	callq  19bd <skip>
    2166:	48 85 c0             	test   %rax,%rax
    2169:	0f 85 4f ff ff ff    	jne    20be <read_line+0x13>
    216f:	48 8d 3d 73 06 00 00 	lea    0x673(%rip),%rdi        # 27e9 <array.3089+0x339>
    2176:	e8 d5 ed ff ff       	callq  f50 <puts@plt>
    217b:	e8 ae fe ff ff       	callq  202e <explode_bomb>
    2180:	48 8d 3d 62 06 00 00 	lea    0x662(%rip),%rdi        # 27e9 <array.3089+0x339>
    2187:	e8 c4 ed ff ff       	callq  f50 <puts@plt>
    218c:	e8 9d fe ff ff       	callq  202e <explode_bomb>
    2191:	bf 00 00 00 00       	mov    $0x0,%edi
    2196:	e8 25 ef ff ff       	callq  10c0 <exit@plt>
    219b:	48 8d 3d 70 06 00 00 	lea    0x670(%rip),%rdi        # 2812 <array.3089+0x362>
    21a2:	e8 a9 ed ff ff       	callq  f50 <puts@plt>
    21a7:	e8 82 fe ff ff       	callq  202e <explode_bomb>

00000000000021ac <phase_defused>:
    21ac:	48 83 ec 68          	sub    $0x68,%rsp
    21b0:	bf 01 00 00 00       	mov    $0x1,%edi
    21b5:	e8 b1 f8 ff ff       	callq  1a6b <send_msg>
    21ba:	83 3d 3b 26 20 00 06 	cmpl   $0x6,0x20263b(%rip)        # 2047fc <num_input_strings>
    21c1:	74 05                	je     21c8 <phase_defused+0x1c>
    21c3:	48 83 c4 68          	add    $0x68,%rsp
    21c7:	c3                   	retq   
    21c8:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    21cd:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    21d2:	48 8d 35 54 06 00 00 	lea    0x654(%rip),%rsi        # 282d <array.3089+0x37d>
    21d9:	48 8d 3d 30 27 20 00 	lea    0x202730(%rip),%rdi        # 204910 <input_strings+0xf0>
    21e0:	b8 00 00 00 00       	mov    $0x0,%eax
    21e5:	e8 76 ee ff ff       	callq  1060 <__isoc99_sscanf@plt>
    21ea:	83 f8 02             	cmp    $0x2,%eax
    21ed:	74 1a                	je     2209 <phase_defused+0x5d>
    21ef:	48 8d 3d 8a 03 00 00 	lea    0x38a(%rip),%rdi        # 2580 <array.3089+0xd0>
    21f6:	e8 55 ed ff ff       	callq  f50 <puts@plt>
    21fb:	48 8d 3d ae 03 00 00 	lea    0x3ae(%rip),%rdi        # 25b0 <array.3089+0x100>
    2202:	e8 49 ed ff ff       	callq  f50 <puts@plt>
    2207:	eb ba                	jmp    21c3 <phase_defused+0x17>
    2209:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    220e:	48 8d 35 1e 06 00 00 	lea    0x61e(%rip),%rsi        # 2833 <array.3089+0x383>
    2215:	e8 04 f6 ff ff       	callq  181e <strings_not_equal>
    221a:	85 c0                	test   %eax,%eax
    221c:	75 d1                	jne    21ef <phase_defused+0x43>
    221e:	48 8d 3d fb 02 00 00 	lea    0x2fb(%rip),%rdi        # 2520 <array.3089+0x70>
    2225:	e8 26 ed ff ff       	callq  f50 <puts@plt>
    222a:	48 8d 3d 17 03 00 00 	lea    0x317(%rip),%rdi        # 2548 <array.3089+0x98>
    2231:	e8 1a ed ff ff       	callq  f50 <puts@plt>
    2236:	b8 00 00 00 00       	mov    $0x0,%eax
    223b:	e8 f0 f4 ff ff       	callq  1730 <secret_phase>
    2240:	eb ad                	jmp    21ef <phase_defused+0x43>
    2242:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    2249:	00 00 00 
    224c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000002250 <__libc_csu_init>:
    2250:	41 57                	push   %r15
    2252:	41 56                	push   %r14
    2254:	41 89 ff             	mov    %edi,%r15d
    2257:	41 55                	push   %r13
    2259:	41 54                	push   %r12
    225b:	4c 8d 25 76 1b 20 00 	lea    0x201b76(%rip),%r12        # 203dd8 <__frame_dummy_init_array_entry>
    2262:	55                   	push   %rbp
    2263:	48 8d 2d 76 1b 20 00 	lea    0x201b76(%rip),%rbp        # 203de0 <__init_array_end>
    226a:	53                   	push   %rbx
    226b:	49 89 f6             	mov    %rsi,%r14
    226e:	49 89 d5             	mov    %rdx,%r13
    2271:	4c 29 e5             	sub    %r12,%rbp
    2274:	48 83 ec 08          	sub    $0x8,%rsp
    2278:	48 c1 fd 03          	sar    $0x3,%rbp
    227c:	e8 77 ec ff ff       	callq  ef8 <_init>
    2281:	48 85 ed             	test   %rbp,%rbp
    2284:	74 20                	je     22a6 <__libc_csu_init+0x56>
    2286:	31 db                	xor    %ebx,%ebx
    2288:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    228f:	00 
    2290:	4c 89 ea             	mov    %r13,%rdx
    2293:	4c 89 f6             	mov    %r14,%rsi
    2296:	44 89 ff             	mov    %r15d,%edi
    2299:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    229d:	48 83 c3 01          	add    $0x1,%rbx
    22a1:	48 39 dd             	cmp    %rbx,%rbp
    22a4:	75 ea                	jne    2290 <__libc_csu_init+0x40>
    22a6:	48 83 c4 08          	add    $0x8,%rsp
    22aa:	5b                   	pop    %rbx
    22ab:	5d                   	pop    %rbp
    22ac:	41 5c                	pop    %r12
    22ae:	41 5d                	pop    %r13
    22b0:	41 5e                	pop    %r14
    22b2:	41 5f                	pop    %r15
    22b4:	c3                   	retq   
    22b5:	90                   	nop
    22b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    22bd:	00 00 00 

00000000000022c0 <__libc_csu_fini>:
    22c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000022c4 <_fini>:
    22c4:	48 83 ec 08          	sub    $0x8,%rsp
    22c8:	48 83 c4 08          	add    $0x8,%rsp
    22cc:	c3                   	retq   

Disassembly of section .rodata:

00000000000022d0 <_IO_stdin_used>:
    22d0:	01 00                	add    %eax,(%rax)
    22d2:	02 00                	add    (%rax),%al
    22d4:	25 73 3a 20 45       	and    $0x45203a73,%eax
    22d9:	72 72                	jb     234d <_IO_stdin_used+0x7d>
    22db:	6f                   	outsl  %ds:(%rsi),(%dx)
    22dc:	72 3a                	jb     2318 <_IO_stdin_used+0x48>
    22de:	20 43 6f             	and    %al,0x6f(%rbx)
    22e1:	75 6c                	jne    234f <_IO_stdin_used+0x7f>
    22e3:	64 6e                	outsb  %fs:(%rsi),(%dx)
    22e5:	27                   	(bad)  
    22e6:	74 20                	je     2308 <_IO_stdin_used+0x38>
    22e8:	6f                   	outsl  %ds:(%rsi),(%dx)
    22e9:	70 65                	jo     2350 <_IO_stdin_used+0x80>
    22eb:	6e                   	outsb  %ds:(%rsi),(%dx)
    22ec:	20 25 73 0a 00 55    	and    %ah,0x55000a73(%rip)        # 55002d65 <_end+0x54dfdeb5>
    22f2:	73 61                	jae    2355 <_IO_stdin_used+0x85>
    22f4:	67 65 3a 20          	cmp    %gs:(%eax),%ah
    22f8:	25 73 20 5b 3c       	and    $0x3c5b2073,%eax
    22fd:	69 6e 70 75 74 5f 66 	imul   $0x665f7475,0x70(%rsi),%ebp
    2304:	69 6c 65 3e 5d 0a 00 	imul   $0x54000a5d,0x3e(%rbp,%riz,2),%ebp
    230b:	54 
    230c:	68 61 74 27 73       	pushq  $0x73277461
    2311:	20 6e 75             	and    %ch,0x75(%rsi)
    2314:	6d                   	insl   (%dx),%es:(%rdi)
    2315:	62                   	(bad)  
    2316:	65 72 20             	gs jb  2339 <_IO_stdin_used+0x69>
    2319:	32 2e                	xor    (%rsi),%ch
    231b:	20 20                	and    %ah,(%rax)
    231d:	4b                   	rex.WXB
    231e:	65 65 70 20          	gs gs jo 2342 <_IO_stdin_used+0x72>
    2322:	67 6f                	outsl  %ds:(%esi),(%dx)
    2324:	69 6e 67 21 00 48 61 	imul   $0x61480021,0x67(%rsi),%ebp
    232b:	6c                   	insb   (%dx),%es:(%rdi)
    232c:	66 77 61             	data16 ja 2390 <_IO_stdin_used+0xc0>
    232f:	79 20                	jns    2351 <_IO_stdin_used+0x81>
    2331:	74 68                	je     239b <_IO_stdin_used+0xcb>
    2333:	65 72 65             	gs jb  239b <_IO_stdin_used+0xcb>
    2336:	21 00                	and    %eax,(%rax)
    2338:	47 6f                	rex.RXB outsl %ds:(%rsi),(%dx)
    233a:	6f                   	outsl  %ds:(%rsi),(%dx)
    233b:	64 20 77 6f          	and    %dh,%fs:0x6f(%rdi)
    233f:	72 6b                	jb     23ac <_IO_stdin_used+0xdc>
    2341:	21 20                	and    %esp,(%rax)
    2343:	20 4f 6e             	and    %cl,0x6e(%rdi)
    2346:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
    234a:	74 68                	je     23b4 <_IO_stdin_used+0xe4>
    234c:	65 20 6e 65          	and    %ch,%gs:0x65(%rsi)
    2350:	78 74                	js     23c6 <_IO_stdin_used+0xf6>
    2352:	2e 2e 2e 00 00       	cs cs add %al,%cs:(%rax)
    2357:	00 57 65             	add    %dl,0x65(%rdi)
    235a:	6c                   	insb   (%dx),%es:(%rdi)
    235b:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
    235e:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    2363:	6d                   	insl   (%dx),%es:(%rdi)
    2364:	79 20                	jns    2386 <_IO_stdin_used+0xb6>
    2366:	66 69 65 6e 64 69    	imul   $0x6964,0x6e(%rbp),%sp
    236c:	73 68                	jae    23d6 <_IO_stdin_used+0x106>
    236e:	20 6c 69 74          	and    %ch,0x74(%rcx,%rbp,2)
    2372:	74 6c                	je     23e0 <_IO_stdin_used+0x110>
    2374:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    2378:	6d                   	insl   (%dx),%es:(%rdi)
    2379:	62                   	(bad)  
    237a:	2e 20 59 6f          	and    %bl,%cs:0x6f(%rcx)
    237e:	75 20                	jne    23a0 <_IO_stdin_used+0xd0>
    2380:	68 61 76 65 20       	pushq  $0x20657661
    2385:	36 20 70 68          	and    %dh,%ss:0x68(%rax)
    2389:	61                   	(bad)  
    238a:	73 65                	jae    23f1 <_IO_stdin_used+0x121>
    238c:	73 20                	jae    23ae <_IO_stdin_used+0xde>
    238e:	77 69                	ja     23f9 <_IO_stdin_used+0x129>
    2390:	74 68                	je     23fa <_IO_stdin_used+0x12a>
    2392:	00 00                	add    %al,(%rax)
    2394:	00 00                	add    %al,(%rax)
    2396:	00 00                	add    %al,(%rax)
    2398:	77 68                	ja     2402 <_IO_stdin_used+0x132>
    239a:	69 63 68 20 74 6f 20 	imul   $0x206f7420,0x68(%rbx),%esp
    23a1:	62                   	(bad)  
    23a2:	6c                   	insb   (%dx),%es:(%rdi)
    23a3:	6f                   	outsl  %ds:(%rsi),(%dx)
    23a4:	77 20                	ja     23c6 <_IO_stdin_used+0xf6>
    23a6:	79 6f                	jns    2417 <_IO_stdin_used+0x147>
    23a8:	75 72                	jne    241c <_IO_stdin_used+0x14c>
    23aa:	73 65                	jae    2411 <_IO_stdin_used+0x141>
    23ac:	6c                   	insb   (%dx),%es:(%rdi)
    23ad:	66 20 75 70          	data16 and %dh,0x70(%rbp)
    23b1:	2e 20 48 61          	and    %cl,%cs:0x61(%rax)
    23b5:	76 65                	jbe    241c <_IO_stdin_used+0x14c>
    23b7:	20 61 20             	and    %ah,0x20(%rcx)
    23ba:	6e                   	outsb  %ds:(%rsi),(%dx)
    23bb:	69 63 65 20 64 61 79 	imul   $0x79616420,0x65(%rbx),%esp
    23c2:	21 00                	and    %eax,(%rax)
    23c4:	00 00                	add    %al,(%rax)
    23c6:	00 00                	add    %al,(%rax)
    23c8:	50                   	push   %rax
    23c9:	68 61 73 65 20       	pushq  $0x20657361
    23ce:	31 20                	xor    %esp,(%rax)
    23d0:	64 65 66 75 73       	fs gs data16 jne 2448 <_IO_stdin_used+0x178>
    23d5:	65 64 2e 20 48 6f    	gs fs and %cl,%cs:0x6f(%rax)
    23db:	77 20                	ja     23fd <_IO_stdin_used+0x12d>
    23dd:	61                   	(bad)  
    23de:	62                   	(bad)  
    23df:	6f                   	outsl  %ds:(%rsi),(%dx)
    23e0:	75 74                	jne    2456 <_IO_stdin_used+0x186>
    23e2:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    23e6:	20 6e 65             	and    %ch,0x65(%rsi)
    23e9:	78 74                	js     245f <_IO_stdin_used+0x18f>
    23eb:	20 6f 6e             	and    %ch,0x6e(%rdi)
    23ee:	65 3f                	gs (bad) 
	...
    23f8:	53                   	push   %rbx
    23f9:	6f                   	outsl  %ds:(%rsi),(%dx)
    23fa:	20 79 6f             	and    %bh,0x6f(%rcx)
    23fd:	75 20                	jne    241f <_IO_stdin_used+0x14f>
    23ff:	67 6f                	outsl  %ds:(%esi),(%dx)
    2401:	74 20                	je     2423 <_IO_stdin_used+0x153>
    2403:	74 68                	je     246d <_IO_stdin_used+0x19d>
    2405:	61                   	(bad)  
    2406:	74 20                	je     2428 <_IO_stdin_used+0x158>
    2408:	6f                   	outsl  %ds:(%rsi),(%dx)
    2409:	6e                   	outsb  %ds:(%rsi),(%dx)
    240a:	65 2e 20 20          	gs and %ah,%cs:(%rax)
    240e:	54                   	push   %rsp
    240f:	72 79                	jb     248a <_IO_stdin_used+0x1ba>
    2411:	20 74 68 69          	and    %dh,0x69(%rax,%rbp,2)
    2415:	73 20                	jae    2437 <_IO_stdin_used+0x167>
    2417:	6f                   	outsl  %ds:(%rsi),(%dx)
    2418:	6e                   	outsb  %ds:(%rsi),(%dx)
    2419:	65 2e 00 00          	gs add %al,%cs:(%rax)
    241d:	00 00                	add    %al,(%rax)
    241f:	00 57 68             	add    %dl,0x68(%rdi)
    2422:	79 20                	jns    2444 <_IO_stdin_used+0x174>
    2424:	6d                   	insl   (%dx),%es:(%rdi)
    2425:	61                   	(bad)  
    2426:	6b 65 20 74          	imul   $0x74,0x20(%rbp),%esp
    242a:	72 69                	jb     2495 <_IO_stdin_used+0x1c5>
    242c:	6c                   	insb   (%dx),%es:(%rdi)
    242d:	6c                   	insb   (%dx),%es:(%rdi)
    242e:	69 6f 6e 73 20 77 68 	imul   $0x68772073,0x6e(%rdi),%ebp
    2435:	65 6e                	outsb  %gs:(%rsi),(%dx)
    2437:	20 77 65             	and    %dh,0x65(%rdi)
    243a:	20 63 6f             	and    %ah,0x6f(%rbx)
    243d:	75 6c                	jne    24ab <_IO_stdin_used+0x1db>
    243f:	64 20 6d 61          	and    %ch,%fs:0x61(%rbp)
    2443:	6b 65 2e 2e          	imul   $0x2e,0x2e(%rbp),%esp
    2447:	2e 20 62 69          	and    %ah,%cs:0x69(%rdx)
    244b:	6c                   	insb   (%dx),%es:(%rdi)
    244c:	6c                   	insb   (%dx),%es:(%rdi)
    244d:	69 6f 6e 73 3f 00 00 	imul   $0x3f73,0x6e(%rdi),%ebp
    2454:	00 00                	add    %al,(%rax)
    2456:	00 00                	add    %al,(%rax)
    2458:	57                   	push   %rdi
    2459:	6f                   	outsl  %ds:(%rsi),(%dx)
    245a:	77 21                	ja     247d <_IO_stdin_used+0x1ad>
    245c:	20 59 6f             	and    %bl,0x6f(%rcx)
    245f:	75 27                	jne    2488 <_IO_stdin_used+0x1b8>
    2461:	76 65                	jbe    24c8 <array.3089+0x18>
    2463:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    2467:	75 73                	jne    24dc <array.3089+0x2c>
    2469:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    246f:	20 73 65             	and    %dh,0x65(%rbx)
    2472:	63 72 65             	movslq 0x65(%rdx),%esi
    2475:	74 20                	je     2497 <_IO_stdin_used+0x1c7>
    2477:	73 74                	jae    24ed <array.3089+0x3d>
    2479:	61                   	(bad)  
    247a:	67 65 21 00          	and    %eax,%gs:(%eax)
    247e:	25 64 20 25 63       	and    $0x63252064,%eax
    2483:	20 25 64 00 73 61    	and    %ah,0x61730064(%rip)        # 617324ed <_end+0x6152d63d>
    2489:	69 6e 74 73 00 00 00 	imul   $0x73,0x74(%rsi),%ebp
    2490:	d7                   	xlat   %ds:(%rbx)
    2491:	ef                   	out    %eax,(%dx)
    2492:	ff                   	(bad)  
    2493:	ff                   	(bad)  
    2494:	f9                   	stc    
    2495:	ef                   	out    %eax,(%dx)
    2496:	ff                   	(bad)  
    2497:	ff 1b                	lcall  *(%rbx)
    2499:	f0 ff                	lock (bad) 
    249b:	ff                   	(bad)  
    249c:	3d f0 ff ff 5c       	cmp    $0x5cfffff0,%eax
    24a1:	f0 ff                	lock (bad) 
    24a3:	ff 77 f0             	pushq  -0x10(%rdi)
    24a6:	ff                   	(bad)  
    24a7:	ff 92 f0 ff ff ad    	callq  *-0x52000010(%rdx)
    24ad:	f0 ff                	lock (bad) 
    24af:	ff               	ljmp   *0x73(%rcx)

00000000000024b0 <array.3089>:
    24b0:	69 73 72 76 65 61 77 	imul   $0x77616576,0x72(%rbx),%esi
    24b7:	68 6f 62 70 6e       	pushq  $0x6e70626f
    24bc:	75 74                	jne    2532 <array.3089+0x82>
    24be:	66 67 53             	addr32 push %bx
    24c1:	6f                   	outsl  %ds:(%rsi),(%dx)
    24c2:	20 79 6f             	and    %bh,0x6f(%rcx)
    24c5:	75 20                	jne    24e7 <array.3089+0x37>
    24c7:	74 68                	je     2531 <array.3089+0x81>
    24c9:	69 6e 6b 20 79 6f 75 	imul   $0x756f7920,0x6b(%rsi),%ebp
    24d0:	20 63 61             	and    %ah,0x61(%rbx)
    24d3:	6e                   	outsb  %ds:(%rsi),(%dx)
    24d4:	20 73 74             	and    %dh,0x74(%rbx)
    24d7:	6f                   	outsl  %ds:(%rsi),(%dx)
    24d8:	70 20                	jo     24fa <array.3089+0x4a>
    24da:	74 68                	je     2544 <array.3089+0x94>
    24dc:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    24e0:	6d                   	insl   (%dx),%es:(%rdi)
    24e1:	62                   	(bad)  
    24e2:	20 77 69             	and    %dh,0x69(%rdi)
    24e5:	74 68                	je     254f <array.3089+0x9f>
    24e7:	20 63 74             	and    %ah,0x74(%rbx)
    24ea:	72 6c                	jb     2558 <array.3089+0xa8>
    24ec:	2d 63 2c 20 64       	sub    $0x64202c63,%eax
    24f1:	6f                   	outsl  %ds:(%rsi),(%dx)
    24f2:	20 79 6f             	and    %bh,0x6f(%rcx)
    24f5:	75 3f                	jne    2536 <array.3089+0x86>
    24f7:	00 59 6f             	add    %bl,0x6f(%rcx)
    24fa:	75 72                	jne    256e <array.3089+0xbe>
    24fc:	20 69 6e             	and    %ch,0x6e(%rcx)
    24ff:	73 74                	jae    2575 <array.3089+0xc5>
    2501:	72 75                	jb     2578 <array.3089+0xc8>
    2503:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
    2507:	20 68 61             	and    %ch,0x61(%rax)
    250a:	73 20                	jae    252c <array.3089+0x7c>
    250c:	62                   	(bad)  
    250d:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    2510:	20 6e 6f             	and    %ch,0x6f(%rsi)
    2513:	74 69                	je     257e <array.3089+0xce>
    2515:	66 69 65 64 2e 00    	imul   $0x2e,0x64(%rbp),%sp
    251b:	00 00                	add    %al,(%rax)
    251d:	00 00                	add    %al,(%rax)
    251f:	00 43 75             	add    %al,0x75(%rbx)
    2522:	72 73                	jb     2597 <array.3089+0xe7>
    2524:	65 73 2c             	gs jae 2553 <array.3089+0xa3>
    2527:	20 79 6f             	and    %bh,0x6f(%rcx)
    252a:	75 27                	jne    2553 <array.3089+0xa3>
    252c:	76 65                	jbe    2593 <array.3089+0xe3>
    252e:	20 66 6f             	and    %ah,0x6f(%rsi)
    2531:	75 6e                	jne    25a1 <array.3089+0xf1>
    2533:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
    2538:	20 73 65             	and    %dh,0x65(%rbx)
    253b:	63 72 65             	movslq 0x65(%rdx),%esi
    253e:	74 20                	je     2560 <array.3089+0xb0>
    2540:	70 68                	jo     25aa <array.3089+0xfa>
    2542:	61                   	(bad)  
    2543:	73 65                	jae    25aa <array.3089+0xfa>
    2545:	21 00                	and    %eax,(%rax)
    2547:	00 42 75             	add    %al,0x75(%rdx)
    254a:	74 20                	je     256c <array.3089+0xbc>
    254c:	66 69 6e 64 69 6e    	imul   $0x6e69,0x64(%rsi),%bp
    2552:	67 20 69 74          	and    %ch,0x74(%ecx)
    2556:	20 61 6e             	and    %ah,0x6e(%rcx)
    2559:	64 20 73 6f          	and    %dh,%fs:0x6f(%rbx)
    255d:	6c                   	insb   (%dx),%es:(%rdi)
    255e:	76 69                	jbe    25c9 <array.3089+0x119>
    2560:	6e                   	outsb  %ds:(%rsi),(%dx)
    2561:	67 20 69 74          	and    %ch,0x74(%ecx)
    2565:	20 61 72             	and    %ah,0x72(%rcx)
    2568:	65 20 71 75          	and    %dh,%gs:0x75(%rcx)
    256c:	69 74 65 20 64 69 66 	imul   $0x66666964,0x20(%rbp,%riz,2),%esi
    2573:	66 
    2574:	65 72 65             	gs jb  25dc <array.3089+0x12c>
    2577:	6e                   	outsb  %ds:(%rsi),(%dx)
    2578:	74 2e                	je     25a8 <array.3089+0xf8>
    257a:	2e 2e 00 00          	cs add %al,%cs:(%rax)
    257e:	00 00                	add    %al,(%rax)
    2580:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
    2582:	6e                   	outsb  %ds:(%rsi),(%dx)
    2583:	67 72 61             	addr32 jb 25e7 <array.3089+0x137>
    2586:	74 75                	je     25fd <array.3089+0x14d>
    2588:	6c                   	insb   (%dx),%es:(%rdi)
    2589:	61                   	(bad)  
    258a:	74 69                	je     25f5 <array.3089+0x145>
    258c:	6f                   	outsl  %ds:(%rsi),(%dx)
    258d:	6e                   	outsb  %ds:(%rsi),(%dx)
    258e:	73 21                	jae    25b1 <array.3089+0x101>
    2590:	20 59 6f             	and    %bl,0x6f(%rcx)
    2593:	75 27                	jne    25bc <array.3089+0x10c>
    2595:	76 65                	jbe    25fc <array.3089+0x14c>
    2597:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    259b:	75 73                	jne    2610 <array.3089+0x160>
    259d:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    25a3:	20 62 6f             	and    %ah,0x6f(%rdx)
    25a6:	6d                   	insl   (%dx),%es:(%rdi)
    25a7:	62 21                	(bad)  
    25a9:	00 00                	add    %al,(%rax)
    25ab:	00 00                	add    %al,(%rax)
    25ad:	00 00                	add    %al,(%rax)
    25af:	00 59 6f             	add    %bl,0x6f(%rcx)
    25b2:	75 72                	jne    2626 <array.3089+0x176>
    25b4:	20 69 6e             	and    %ch,0x6e(%rcx)
    25b7:	73 74                	jae    262d <array.3089+0x17d>
    25b9:	72 75                	jb     2630 <array.3089+0x180>
    25bb:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
    25bf:	20 68 61             	and    %ch,0x61(%rax)
    25c2:	73 20                	jae    25e4 <array.3089+0x134>
    25c4:	62                   	(bad)  
    25c5:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    25c8:	20 6e 6f             	and    %ch,0x6f(%rsi)
    25cb:	74 69                	je     2636 <array.3089+0x186>
    25cd:	66 69 65 64 20 61    	imul   $0x6120,0x64(%rbp),%sp
    25d3:	6e                   	outsb  %ds:(%rsi),(%dx)
    25d4:	64 20 77 69          	and    %dh,%fs:0x69(%rdi)
    25d8:	6c                   	insb   (%dx),%es:(%rdi)
    25d9:	6c                   	insb   (%dx),%es:(%rdi)
    25da:	20 76 65             	and    %dh,0x65(%rsi)
    25dd:	72 69                	jb     2648 <array.3089+0x198>
    25df:	66 79 20             	data16 jns 2602 <array.3089+0x152>
    25e2:	79 6f                	jns    2653 <array.3089+0x1a3>
    25e4:	75 72                	jne    2658 <array.3089+0x1a8>
    25e6:	20 73 6f             	and    %dh,0x6f(%rbx)
    25e9:	6c                   	insb   (%dx),%es:(%rdi)
    25ea:	75 74                	jne    2660 <array.3089+0x1b0>
    25ec:	69 6f 6e 2e 00 00 00 	imul   $0x2e,0x6e(%rdi),%ebp
    25f3:	00 00                	add    %al,(%rax)
    25f5:	00 00                	add    %al,(%rax)
    25f7:	00 57 65             	add    %dl,0x65(%rdi)
    25fa:	6c                   	insb   (%dx),%es:(%rdi)
    25fb:	6c                   	insb   (%dx),%es:(%rdi)
    25fc:	2e 2e 2e 00 4f 4b    	cs cs add %cl,%cs:0x4b(%rdi)
    2602:	2e 20 3a             	and    %bh,%cs:(%rdx)
    2605:	2d 29 00 49 6e       	sub    $0x6e490029,%eax
    260a:	76 61                	jbe    266d <array.3089+0x1bd>
    260c:	6c                   	insb   (%dx),%es:(%rdi)
    260d:	69 64 20 70 68 61 73 	imul   $0x65736168,0x70(%rax,%riz,1),%esp
    2614:	65 
    2615:	25 73 0a 00 42       	and    $0x42000a73,%eax
    261a:	61                   	(bad)  
    261b:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    261f:	73 74                	jae    2695 <array.3089+0x1e5>
    2621:	20 28                	and    %ch,(%rax)
    2623:	31 29                	xor    %ebp,(%rcx)
    2625:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
    2629:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    262d:	73 74                	jae    26a3 <array.3089+0x1f3>
    262f:	20 28                	and    %ch,(%rax)
    2631:	32 29                	xor    (%rcx),%ch
    2633:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
    2637:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    263b:	73 74                	jae    26b1 <array.3089+0x201>
    263d:	20 28                	and    %ch,(%rax)
    263f:	33 29                	xor    (%rcx),%ebp
    2641:	2e 00 32             	add    %dh,%cs:(%rdx)
    2644:	30 32                	xor    %dh,(%rdx)
    2646:	2e 31 32             	xor    %esi,%cs:(%rdx)
    2649:	30 2e                	xor    %ch,(%rsi)
    264b:	34 30                	xor    $0x30,%al
    264d:	2e 38 35 00 64 65 66 	cmp    %dh,%cs:0x66656400(%rip)        # 66658a54 <_end+0x66453ba4>
    2654:	75 73                	jne    26c9 <array.3089+0x219>
    2656:	65 64 00 65 78       	gs add %ah,%fs:0x78(%rbp)
    265b:	70 6c                	jo     26c9 <array.3089+0x219>
    265d:	6f                   	outsl  %ds:(%rsi),(%dx)
    265e:	64 65 64 00 73 6f    	fs gs add %dh,%fs:0x6f(%rbx)
    2664:	63 6b 65             	movslq 0x65(%rbx),%ebp
    2667:	74 20                	je     2689 <array.3089+0x1d9>
    2669:	65 72 72             	gs jb  26de <array.3089+0x22e>
    266c:	6f                   	outsl  %ds:(%rsi),(%dx)
    266d:	72 00                	jb     266f <array.3089+0x1bf>
    266f:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
    2672:	6e                   	outsb  %ds:(%rsi),(%dx)
    2673:	65 63 74 20 65       	movslq %gs:0x65(%rax,%riz,1),%esi
    2678:	72 72                	jb     26ec <array.3089+0x23c>
    267a:	6f                   	outsl  %ds:(%rsi),(%dx)
    267b:	72 00                	jb     267d <array.3089+0x1cd>
    267d:	62                   	(bad)  
    267e:	6f                   	outsl  %ds:(%rsi),(%dx)
    267f:	6d                   	insl   (%dx),%es:(%rdi)
    2680:	62                   	(bad)  
    2681:	2d 68 65 61 64       	sub    $0x64616568,%eax
    2686:	65 72 3a             	gs jb  26c3 <array.3089+0x213>
    2689:	25 73 3a 25 64       	and    $0x64253a73,%eax
    268e:	3a 25 73 3a 25 73    	cmp    0x73253a73(%rip),%ah        # 73256107 <_end+0x73051257>
    2694:	3a 25 64 0a 00 62    	cmp    0x62000a64(%rip),%ah        # 620030fe <_end+0x61dfe24e>
    269a:	6f                   	outsl  %ds:(%rsi),(%dx)
    269b:	6d                   	insl   (%dx),%es:(%rdi)
    269c:	62                   	(bad)  
    269d:	2d 73 74 72 69       	sub    $0x69727473,%eax
    26a2:	6e                   	outsb  %ds:(%rsi),(%dx)
    26a3:	67 3a 25 73 3a 25 64 	cmp    0x64253a73(%eip),%ah        # 6425611d <_end+0x6405126d>
    26aa:	3a 25 73 3a 25 64    	cmp    0x64253a73(%rip),%ah        # 64256123 <_end+0x64051273>
    26b0:	3a 25 73 0a 00 73    	cmp    0x73000a73(%rip),%ah        # 73003129 <_end+0x72dfe279>
    26b6:	6f                   	outsl  %ds:(%rsi),(%dx)
    26b7:	63 6b 65             	movslq 0x65(%rbx),%ebp
    26ba:	74 20                	je     26dc <array.3089+0x22c>
    26bc:	77 72                	ja     2730 <array.3089+0x280>
    26be:	69 74 65 20 65 72 72 	imul   $0x6f727265,0x20(%rbp,%riz,2),%esi
    26c5:	6f 
    26c6:	72 00                	jb     26c8 <array.3089+0x218>
    26c8:	45 52                	rex.RB push %r10
    26ca:	52                   	push   %rdx
    26cb:	4f 52                	rex.WRXB push %r10
    26cd:	3a 20                	cmp    (%rax),%ah
    26cf:	64 75 70             	fs jne 2742 <array.3089+0x292>
    26d2:	28 30                	sub    %dh,(%rax)
    26d4:	29 20                	sub    %esp,(%rax)
    26d6:	65 72 72             	gs jb  274b <array.3089+0x29b>
    26d9:	6f                   	outsl  %ds:(%rsi),(%dx)
    26da:	72 00                	jb     26dc <array.3089+0x22c>
    26dc:	45 52                	rex.RB push %r10
    26de:	52                   	push   %rdx
    26df:	4f 52                	rex.WRXB push %r10
    26e1:	3a 20                	cmp    (%rax),%ah
    26e3:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
    26e7:	65 20 65 72          	and    %ah,%gs:0x72(%rbp)
    26eb:	72 6f                	jb     275c <array.3089+0x2ac>
    26ed:	72 00                	jb     26ef <array.3089+0x23f>
    26ef:	45 52                	rex.RB push %r10
    26f1:	52                   	push   %rdx
    26f2:	4f 52                	rex.WRXB push %r10
    26f4:	3a 20                	cmp    (%rax),%ah
    26f6:	74 6d                	je     2765 <array.3089+0x2b5>
    26f8:	70 66                	jo     2760 <array.3089+0x2b0>
    26fa:	69 6c 65 20 65 72 72 	imul   $0x6f727265,0x20(%rbp,%riz,2),%ebp
    2701:	6f 
    2702:	72 00                	jb     2704 <array.3089+0x254>
    2704:	53                   	push   %rbx
    2705:	75 62                	jne    2769 <array.3089+0x2b9>
    2707:	6a 65                	pushq  $0x65
    2709:	63 74 3a 20          	movslq 0x20(%rdx,%rdi,1),%esi
    270d:	42 6f                	rex.X outsl %ds:(%rsi),(%dx)
    270f:	6d                   	insl   (%dx),%es:(%rdi)
    2710:	62                   	(bad)  
    2711:	20 6e 6f             	and    %ch,0x6f(%rsi)
    2714:	74 69                	je     277f <array.3089+0x2cf>
    2716:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
    271c:	6f                   	outsl  %ds:(%rsi),(%dx)
    271d:	6e                   	outsb  %ds:(%rsi),(%dx)
    271e:	0a 00                	or     (%rax),%al
    2720:	6c                   	insb   (%dx),%es:(%rdi)
    2721:	6f                   	outsl  %ds:(%rsi),(%dx)
    2722:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2725:	68 6f 73 74 00       	pushq  $0x74736f
    272a:	69 63 73 62 6f 6d 62 	imul   $0x626d6f62,0x73(%rbx),%esp
    2731:	00 2f                	add    %ch,(%rdi)
    2733:	75 73                	jne    27a8 <array.3089+0x2f8>
    2735:	72 2f                	jb     2766 <array.3089+0x2b6>
    2737:	73 62                	jae    279b <array.3089+0x2eb>
    2739:	69 6e 2f 73 65 6e 64 	imul   $0x646e6573,0x2f(%rsi),%ebp
    2740:	6d                   	insl   (%dx),%es:(%rdi)
    2741:	61                   	(bad)  
    2742:	69 6c 20 2d 62 6d 00 	imul   $0x25006d62,0x2d(%rax,%riz,1),%ebp
    2749:	25 
    274a:	73 20                	jae    276c <array.3089+0x2bc>
    274c:	25 73 40 25 73       	and    $0x73254073,%eax
    2751:	00 45 52             	add    %al,0x52(%rbp)
    2754:	52                   	push   %rdx
    2755:	4f 52                	rex.WRXB push %r10
    2757:	3a 20                	cmp    (%rax),%ah
    2759:	6e                   	outsb  %ds:(%rsi),(%dx)
    275a:	6f                   	outsl  %ds:(%rsi),(%dx)
    275b:	74 69                	je     27c6 <array.3089+0x316>
    275d:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
    2763:	6f                   	outsl  %ds:(%rsi),(%dx)
    2764:	6e                   	outsb  %ds:(%rsi),(%dx)
    2765:	20 65 72             	and    %ah,0x72(%rbp)
    2768:	72 6f                	jb     27d9 <array.3089+0x329>
    276a:	72 00                	jb     276c <array.3089+0x2bc>
    276c:	45 52                	rex.RB push %r10
    276e:	52                   	push   %rdx
    276f:	4f 52                	rex.WRXB push %r10
    2771:	3a 20                	cmp    (%rax),%ah
    2773:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
    2778:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
    277d:	29 20                	sub    %esp,(%rax)
    277f:	65 72 72             	gs jb  27f4 <array.3089+0x344>
    2782:	6f                   	outsl  %ds:(%rsi),(%dx)
    2783:	72 00                	jb     2785 <array.3089+0x2d5>
    2785:	45 52                	rex.RB push %r10
    2787:	52                   	push   %rdx
    2788:	4f 52                	rex.WRXB push %r10
    278a:	3a 20                	cmp    (%rax),%ah
    278c:	64 75 70             	fs jne 27ff <array.3089+0x34f>
    278f:	28 74 6d 70          	sub    %dh,0x70(%rbp,%rbp,2)
    2793:	73 74                	jae    2809 <array.3089+0x359>
    2795:	64 69 6e 29 20 65 72 	imul   $0x72726520,%fs:0x29(%rsi),%ebp
    279c:	72 
    279d:	6f                   	outsl  %ds:(%rsi),(%dx)
    279e:	72 00                	jb     27a0 <array.3089+0x2f0>
    27a0:	45 52                	rex.RB push %r10
    27a2:	52                   	push   %rdx
    27a3:	4f 52                	rex.WRXB push %r10
    27a5:	3a 20                	cmp    (%rax),%ah
    27a7:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
    27ab:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
    27b0:	73 74                	jae    2826 <array.3089+0x376>
    27b2:	64 69 6e 29 00 0a 42 	imul   $0x4f420a00,%fs:0x29(%rsi),%ebp
    27b9:	4f 
    27ba:	4f                   	rex.WRXB
    27bb:	4d 21 21             	and    %r12,(%r9)
    27be:	21 00                	and    %eax,(%rax)
    27c0:	54                   	push   %rsp
    27c1:	68 65 20 62 6f       	pushq  $0x6f622065
    27c6:	6d                   	insl   (%dx),%es:(%rdi)
    27c7:	62                   	(bad)  
    27c8:	20 68 61             	and    %ch,0x61(%rax)
    27cb:	73 20                	jae    27ed <array.3089+0x33d>
    27cd:	62                   	(bad)  
    27ce:	6c                   	insb   (%dx),%es:(%rdi)
    27cf:	6f                   	outsl  %ds:(%rsi),(%dx)
    27d0:	77 6e                	ja     2840 <__GNU_EH_FRAME_HDR>
    27d2:	20 75 70             	and    %dh,0x70(%rbp)
    27d5:	2e 00 25 64 20 25 64 	add    %ah,%cs:0x64252064(%rip)        # 64254840 <_end+0x6404f990>
    27dc:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 64254846 <_end+0x6404f996>
    27e2:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 6425484c <_end+0x6404f99c>
    27e8:	00 45 72             	add    %al,0x72(%rbp)
    27eb:	72 6f                	jb     285c <__GNU_EH_FRAME_HDR+0x1c>
    27ed:	72 3a                	jb     2829 <array.3089+0x379>
    27ef:	20 50 72             	and    %dl,0x72(%rax)
    27f2:	65 6d                	gs insl (%dx),%es:(%rdi)
    27f4:	61                   	(bad)  
    27f5:	74 75                	je     286c <__GNU_EH_FRAME_HDR+0x2c>
    27f7:	72 65                	jb     285e <__GNU_EH_FRAME_HDR+0x1e>
    27f9:	20 45 4f             	and    %al,0x4f(%rbp)
    27fc:	46 20 6f 6e          	rex.RX and %r13b,0x6e(%rdi)
    2800:	20 73 74             	and    %dh,0x74(%rbx)
    2803:	64 69 6e 00 47 52 41 	imul   $0x44415247,%fs:0x0(%rsi),%ebp
    280a:	44 
    280b:	45 5f                	rex.RB pop %r15
    280d:	42                   	rex.X
    280e:	4f                   	rex.WRXB
    280f:	4d                   	rex.WRB
    2810:	42 00 45 72          	rex.X add %al,0x72(%rbp)
    2814:	72 6f                	jb     2885 <__GNU_EH_FRAME_HDR+0x45>
    2816:	72 3a                	jb     2852 <__GNU_EH_FRAME_HDR+0x12>
    2818:	20 49 6e             	and    %cl,0x6e(%rcx)
    281b:	70 75                	jo     2892 <__GNU_EH_FRAME_HDR+0x52>
    281d:	74 20                	je     283f <array.3089+0x38f>
    281f:	6c                   	insb   (%dx),%es:(%rdi)
    2820:	69 6e 65 20 74 6f 6f 	imul   $0x6f6f7420,0x65(%rsi),%ebp
    2827:	20 6c 6f 6e          	and    %ch,0x6e(%rdi,%rbp,2)
    282b:	67 00 25 64 20 25 73 	add    %ah,0x73252064(%eip)        # 73254896 <_end+0x7304f9e6>
    2832:	00 61 75             	add    %ah,0x75(%rcx)
    2835:	73 74                	jae    28ab <__GNU_EH_FRAME_HDR+0x6b>
    2837:	69 6e 70 6f 77 65 72 	imul   $0x7265776f,0x70(%rsi),%ebp
    283e:	73 00                	jae    2840 <__GNU_EH_FRAME_HDR>

Disassembly of section .eh_frame_hdr:

0000000000002840 <__GNU_EH_FRAME_HDR>:
    2840:	01 1b                	add    %ebx,(%rbx)
    2842:	03 3b                	add    (%rbx),%edi
    2844:	04 01                	add    $0x1,%al
    2846:	00 00                	add    %al,(%rax)
    2848:	1f                   	(bad)  
    2849:	00 00                	add    %al,(%rax)
    284b:	00 d0                	add    %dl,%al
    284d:	e6 ff                	out    %al,$0xff
    284f:	ff 50 01             	callq  *0x1(%rax)
    2852:	00 00                	add    %al,(%rax)
    2854:	e0 e8                	loopne 283e <array.3089+0x38e>
    2856:	ff                   	(bad)  
    2857:	ff                   	(bad)  
    2858:	78 01                	js     285b <__GNU_EH_FRAME_HDR+0x1b>
    285a:	00 00                	add    %al,(%rax)
    285c:	f0 e8 ff ff 20 01    	lock callq 1212861 <_end+0x100d9b1>
    2862:	00 00                	add    %al,(%rax)
    2864:	20 ea                	and    %ch,%dl
    2866:	ff                   	(bad)  
    2867:	ff 90 01 00 00 70    	callq  *0x70000001(%rax)
    286d:	eb ff                	jmp    286e <__GNU_EH_FRAME_HDR+0x2e>
    286f:	ff b0 01 00 00 90    	pushq  -0x6fffffff(%rax)
    2875:	eb ff                	jmp    2876 <__GNU_EH_FRAME_HDR+0x36>
    2877:	ff d0                	callq  *%rax
    2879:	01 00                	add    %eax,(%rax)
    287b:	00 d8                	add    %bl,%al
    287d:	eb ff                	jmp    287e <__GNU_EH_FRAME_HDR+0x3e>
    287f:	ff                   	(bad)  
    2880:	f8                   	clc    
    2881:	01 00                	add    %eax,(%rax)
    2883:	00 32                	add    %dh,(%rdx)
    2885:	ed                   	in     (%dx),%eax
    2886:	ff                   	(bad)  
    2887:	ff 18                	lcall  *(%rax)
    2889:	02 00                	add    (%rax),%al
    288b:	00 58 ed             	add    %bl,-0x13(%rax)
    288e:	ff                   	(bad)  
    288f:	ff 30                	pushq  (%rax)
    2891:	02 00                	add    (%rax),%al
    2893:	00 9f ed ff ff 50    	add    %bl,0x50ffffed(%rdi)
    2899:	02 00                	add    (%rax),%al
    289b:	00 02                	add    %al,(%rdx)
    289d:	ee                   	out    %al,(%dx)
    289e:	ff                   	(bad)  
    289f:	ff                   	(bad)  
    28a0:	78 02                	js     28a4 <__GNU_EH_FRAME_HDR+0x64>
    28a2:	00 00                	add    %al,(%rax)
    28a4:	6a ee                	pushq  $0xffffffffffffffee
    28a6:	ff                   	(bad)  
    28a7:	ff 90 02 00 00 b3    	callq  *-0x4cfffffe(%rax)
    28ad:	ee                   	out    %al,(%dx)
    28ae:	ff                   	(bad)  
    28af:	ff a8 02 00 00 f0    	ljmp   *-0xffffffe(%rax)
    28b5:	ee                   	out    %al,(%dx)
    28b6:	ff                   	(bad)  
    28b7:	ff c8                	dec    %eax
    28b9:	02 00                	add    (%rax),%al
    28bb:	00 47 ef             	add    %al,-0x11(%rdi)
    28be:	ff                   	(bad)  
    28bf:	ff                   	(bad)  
    28c0:	e8 02 00 00 9e       	callq  ffffffff9e0028c7 <_end+0xffffffff9ddfda17>
    28c5:	ef                   	out    %eax,(%dx)
    28c6:	ff                   	(bad)  
    28c7:	ff 00                	incl   (%rax)
    28c9:	03 00                	add    (%rax),%eax
    28cb:	00 c0                	add    %al,%al
    28cd:	ef                   	out    %eax,(%dx)
    28ce:	ff                   	(bad)  
    28cf:	ff 18                	lcall  *(%rax)
    28d1:	03 00                	add    (%rax),%eax
    28d3:	00 de                	add    %bl,%dh
    28d5:	ef                   	out    %eax,(%dx)
    28d6:	ff                   	(bad)  
    28d7:	ff 30                	pushq  (%rax)
    28d9:	03 00                	add    (%rax),%eax
    28db:	00 45 f0             	add    %al,-0x10(%rbp)
    28de:	ff                   	(bad)  
    28df:	ff 60 03             	jmpq   *0x3(%rax)
    28e2:	00 00                	add    %al,(%rax)
    28e4:	10 f1                	adc    %dh,%cl
    28e6:	ff                   	(bad)  
    28e7:	ff 98 03 00 00 42    	lcall  *0x42000003(%rax)
    28ed:	f1                   	icebp  
    28ee:	ff                   	(bad)  
    28ef:	ff b0 03 00 00 7d    	pushq  0x7d000003(%rax)
    28f5:	f1                   	icebp  
    28f6:	ff                   	(bad)  
    28f7:	ff                   	(bad)  
    28f8:	d8 03                	fadds  (%rbx)
    28fa:	00 00                	add    %al,(%rax)
    28fc:	cb                   	lret   
    28fd:	f1                   	icebp  
    28fe:	ff                   	(bad)  
    28ff:	ff 00                	incl   (%rax)
    2901:	04 00                	add    $0x0,%al
    2903:	00 2b                	add    %ch,(%rbx)
    2905:	f2 ff                	repnz (bad) 
    2907:	ff 40 04             	incl   0x4(%rax)
    290a:	00 00                	add    %al,(%rax)
    290c:	6e                   	outsb  %ds:(%rsi),(%dx)
    290d:	f5                   	cmc    
    290e:	ff                   	(bad)  
    290f:	ff a8 04 00 00 ee    	ljmp   *-0x11fffffc(%rax)
    2915:	f7 ff                	idiv   %edi
    2917:	ff 10                	callq  *(%rax)
    2919:	05 00 00 2a f8       	add    $0xf82a0000,%eax
    291e:	ff                   	(bad)  
    291f:	ff 28                	ljmp   *(%rax)
    2921:	05 00 00 6b f8       	add    $0xf86b0000,%eax
    2926:	ff                   	(bad)  
    2927:	ff 50 05             	callq  *0x5(%rax)
    292a:	00 00                	add    %al,(%rax)
    292c:	6c                   	insb   (%dx),%es:(%rdi)
    292d:	f9                   	stc    
    292e:	ff                   	(bad)  
    292f:	ff 70 05             	pushq  0x5(%rax)
    2932:	00 00                	add    %al,(%rax)
    2934:	10 fa                	adc    %bh,%dl
    2936:	ff                   	(bad)  
    2937:	ff 90 05 00 00 80    	callq  *-0x7ffffffb(%rax)
    293d:	fa                   	cli    
    293e:	ff                   	(bad)  
    293f:	ff                   	(bad)  
    2940:	d8                   	.byte 0xd8
    2941:	05                   	.byte 0x5
	...

Disassembly of section .eh_frame:

0000000000002948 <__FRAME_END__-0x4e8>:
    2948:	14 00                	adc    $0x0,%al
    294a:	00 00                	add    %al,(%rax)
    294c:	00 00                	add    %al,(%rax)
    294e:	00 00                	add    %al,(%rax)
    2950:	01 7a 52             	add    %edi,0x52(%rdx)
    2953:	00 01                	add    %al,(%rcx)
    2955:	78 10                	js     2967 <__GNU_EH_FRAME_HDR+0x127>
    2957:	01 1b                	add    %ebx,(%rbx)
    2959:	0c 07                	or     $0x7,%al
    295b:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    2961:	00 00                	add    %al,(%rax)
    2963:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2966:	00 00                	add    %al,(%rax)
    2968:	c8 e7 ff ff          	enterq $0xffe7,$0xff
    296c:	2b 00                	sub    (%rax),%eax
	...
    2976:	00 00                	add    %al,(%rax)
    2978:	14 00                	adc    $0x0,%al
    297a:	00 00                	add    %al,(%rax)
    297c:	00 00                	add    %al,(%rax)
    297e:	00 00                	add    %al,(%rax)
    2980:	01 7a 52             	add    %edi,0x52(%rdx)
    2983:	00 01                	add    %al,(%rcx)
    2985:	78 10                	js     2997 <__GNU_EH_FRAME_HDR+0x157>
    2987:	01 1b                	add    %ebx,(%rbx)
    2989:	0c 07                	or     $0x7,%al
    298b:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    2991:	00 00                	add    %al,(%rax)
    2993:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2996:	00 00                	add    %al,(%rax)
    2998:	78 e5                	js     297f <__GNU_EH_FRAME_HDR+0x13f>
    299a:	ff                   	(bad)  
    299b:	ff 10                	callq  *(%rax)
    299d:	02 00                	add    (%rax),%al
    299f:	00 00                	add    %al,(%rax)
    29a1:	0e                   	(bad)  
    29a2:	10 46 0e             	adc    %al,0xe(%rsi)
    29a5:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    29a8:	0b 77 08             	or     0x8(%rdi),%esi
    29ab:	80 00 3f             	addb   $0x3f,(%rax)
    29ae:	1a 3b                	sbb    (%rbx),%bh
    29b0:	2a 33                	sub    (%rbx),%dh
    29b2:	24 22                	and    $0x22,%al
    29b4:	00 00                	add    %al,(%rax)
    29b6:	00 00                	add    %al,(%rax)
    29b8:	14 00                	adc    $0x0,%al
    29ba:	00 00                	add    %al,(%rax)
    29bc:	44 00 00             	add    %r8b,(%rax)
    29bf:	00 60 e7             	add    %ah,-0x19(%rax)
    29c2:	ff                   	(bad)  
    29c3:	ff 08                	decl   (%rax)
	...
    29cd:	00 00                	add    %al,(%rax)
    29cf:	00 1c 00             	add    %bl,(%rax,%rax,1)
    29d2:	00 00                	add    %al,(%rax)
    29d4:	5c                   	pop    %rsp
    29d5:	00 00                	add    %al,(%rax)
    29d7:	00 88 e8 ff ff 50    	add    %cl,0x50ffffe8(%rax)
    29dd:	01 00                	add    %eax,(%rax)
    29df:	00 00                	add    %al,(%rax)
    29e1:	41 0e                	rex.B (bad) 
    29e3:	10 83 02 03 00 01    	adc    %al,0x1000302(%rbx)
    29e9:	0a 0e                	or     (%rsi),%cl
    29eb:	08 41 0b             	or     %al,0xb(%rcx)
    29ee:	00 00                	add    %al,(%rax)
    29f0:	1c 00                	sbb    $0x0,%al
    29f2:	00 00                	add    %al,(%rax)
    29f4:	7c 00                	jl     29f6 <__GNU_EH_FRAME_HDR+0x1b6>
    29f6:	00 00                	add    %al,(%rax)
    29f8:	b8 e9 ff ff 20       	mov    $0x20ffffe9,%eax
    29fd:	00 00                	add    %al,(%rax)
    29ff:	00 00                	add    %al,(%rax)
    2a01:	44 0e                	rex.R (bad) 
    2a03:	10 54 0a 0e          	adc    %dl,0xe(%rdx,%rcx,1)
    2a07:	08 41 0b             	or     %al,0xb(%rcx)
    2a0a:	00 00                	add    %al,(%rax)
    2a0c:	00 00                	add    %al,(%rax)
    2a0e:	00 00                	add    %al,(%rax)
    2a10:	24 00                	and    $0x0,%al
    2a12:	00 00                	add    %al,(%rax)
    2a14:	9c                   	pushfq 
    2a15:	00 00                	add    %al,(%rax)
    2a17:	00 b8 e9 ff ff 48    	add    %bh,0x48ffffe9(%rax)
    2a1d:	00 00                	add    %al,(%rax)
    2a1f:	00 00                	add    %al,(%rax)
    2a21:	41 0e                	rex.B (bad) 
    2a23:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2a29:	83 03 44             	addl   $0x44,(%rbx)
    2a2c:	0e                   	(bad)  
    2a2d:	40 7f 0e             	rex jg 2a3e <__GNU_EH_FRAME_HDR+0x1fe>
    2a30:	18 41 0e             	sbb    %al,0xe(%rcx)
    2a33:	10 41 0e             	adc    %al,0xe(%rcx)
    2a36:	08 00                	or     %al,(%rax)
    2a38:	1c 00                	sbb    $0x0,%al
    2a3a:	00 00                	add    %al,(%rax)
    2a3c:	c4                   	(bad)  
    2a3d:	00 00                	add    %al,(%rax)
    2a3f:	00 d8                	add    %bl,%al
    2a41:	e9 ff ff 5a 01       	jmpq   15b2a45 <_end+0x13adb95>
    2a46:	00 00                	add    %al,(%rax)
    2a48:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
    2a4c:	03 55 01             	add    0x1(%rbp),%edx
    2a4f:	0e                   	(bad)  
    2a50:	08 00                	or     %al,(%rax)
    2a52:	00 00                	add    %al,(%rax)
    2a54:	00 00                	add    %al,(%rax)
    2a56:	00 00                	add    %al,(%rax)
    2a58:	14 00                	adc    $0x0,%al
    2a5a:	00 00                	add    %al,(%rax)
    2a5c:	e4 00                	in     $0x0,%al
    2a5e:	00 00                	add    %al,(%rax)
    2a60:	12 eb                	adc    %bl,%ch
    2a62:	ff                   	(bad)  
    2a63:	ff 26                	jmpq   *(%rsi)
    2a65:	00 00                	add    %al,(%rax)
    2a67:	00 00                	add    %al,(%rax)
    2a69:	4d 0e                	rex.WRB (bad) 
    2a6b:	10 57 0e             	adc    %dl,0xe(%rdi)
    2a6e:	08 00                	or     %al,(%rax)
    2a70:	1c 00                	sbb    $0x0,%al
    2a72:	00 00                	add    %al,(%rax)
    2a74:	fc                   	cld    
    2a75:	00 00                	add    %al,(%rax)
    2a77:	00 20                	add    %ah,(%rax)
    2a79:	eb ff                	jmp    2a7a <__GNU_EH_FRAME_HDR+0x23a>
    2a7b:	ff 47 00             	incl   0x0(%rdi)
    2a7e:	00 00                	add    %al,(%rax)
    2a80:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
    2a84:	79 0a                	jns    2a90 <__GNU_EH_FRAME_HDR+0x250>
    2a86:	0e                   	(bad)  
    2a87:	08 41 0b             	or     %al,0xb(%rcx)
    2a8a:	00 00                	add    %al,(%rax)
    2a8c:	00 00                	add    %al,(%rax)
    2a8e:	00 00                	add    %al,(%rax)
    2a90:	24 00                	and    $0x0,%al
    2a92:	00 00                	add    %al,(%rax)
    2a94:	1c 01                	sbb    $0x1,%al
    2a96:	00 00                	add    %al,(%rax)
    2a98:	47 eb ff             	rex.RXB jmp 2a9a <__GNU_EH_FRAME_HDR+0x25a>
    2a9b:	ff 63 00             	jmpq   *0x0(%rbx)
    2a9e:	00 00                	add    %al,(%rax)
    2aa0:	00 41 0e             	add    %al,0xe(%rcx)
    2aa3:	10 83 02 44 0e 20    	adc    %al,0x200e4402(%rbx)
    2aa9:	02 55 0a             	add    0xa(%rbp),%dl
    2aac:	0e                   	(bad)  
    2aad:	10 41 0e             	adc    %al,0xe(%rcx)
    2ab0:	08 41 0b             	or     %al,0xb(%rcx)
    2ab3:	00 00                	add    %al,(%rax)
    2ab5:	00 00                	add    %al,(%rax)
    2ab7:	00 14 00             	add    %dl,(%rax,%rax,1)
    2aba:	00 00                	add    %al,(%rax)
    2abc:	44 01 00             	add    %r8d,(%rax)
    2abf:	00 82 eb ff ff 68    	add    %al,0x68ffffeb(%rdx)
	...
    2acd:	00 00                	add    %al,(%rax)
    2acf:	00 14 00             	add    %dl,(%rax,%rax,1)
    2ad2:	00 00                	add    %al,(%rax)
    2ad4:	5c                   	pop    %rsp
    2ad5:	01 00                	add    %eax,(%rax)
    2ad7:	00 d2                	add    %dl,%dl
    2ad9:	eb ff                	jmp    2ada <__GNU_EH_FRAME_HDR+0x29a>
    2adb:	ff 49 00             	decl   0x0(%rcx)
    2ade:	00 00                	add    %al,(%rax)
    2ae0:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2ae4:	02 44 0e 08          	add    0x8(%rsi,%rcx,1),%al
    2ae8:	1c 00                	sbb    $0x0,%al
    2aea:	00 00                	add    %al,(%rax)
    2aec:	74 01                	je     2aef <__GNU_EH_FRAME_HDR+0x2af>
    2aee:	00 00                	add    %al,(%rax)
    2af0:	03 ec                	add    %esp,%ebp
    2af2:	ff                   	(bad)  
    2af3:	ff                   	(bad)  
    2af4:	3d 00 00 00 00       	cmp    $0x0,%eax
    2af9:	49 0e                	rex.WB (bad) 
    2afb:	10 60 0a             	adc    %ah,0xa(%rax)
    2afe:	0e                   	(bad)  
    2aff:	08 41 0b             	or     %al,0xb(%rcx)
    2b02:	4d 0e                	rex.WRB (bad) 
    2b04:	08 00                	or     %al,(%rax)
    2b06:	00 00                	add    %al,(%rax)
    2b08:	1c 00                	sbb    $0x0,%al
    2b0a:	00 00                	add    %al,(%rax)
    2b0c:	94                   	xchg   %eax,%esp
    2b0d:	01 00                	add    %eax,(%rax)
    2b0f:	00 20                	add    %ah,(%rax)
    2b11:	ec                   	in     (%dx),%al
    2b12:	ff                   	(bad)  
    2b13:	ff 57 00             	callq  *0x0(%rdi)
    2b16:	00 00                	add    %al,(%rax)
    2b18:	00 41 0e             	add    %al,0xe(%rcx)
    2b1b:	10 83 02 02 4e 0a    	adc    %al,0xa4e0202(%rbx)
    2b21:	0e                   	(bad)  
    2b22:	08 41 0b             	or     %al,0xb(%rcx)
    2b25:	00 00                	add    %al,(%rax)
    2b27:	00 14 00             	add    %dl,(%rax,%rax,1)
    2b2a:	00 00                	add    %al,(%rax)
    2b2c:	b4 01                	mov    $0x1,%ah
    2b2e:	00 00                	add    %al,(%rax)
    2b30:	57                   	push   %rdi
    2b31:	ec                   	in     (%dx),%al
    2b32:	ff                   	(bad)  
    2b33:	ff 57 00             	callq  *0x0(%rdi)
    2b36:	00 00                	add    %al,(%rax)
    2b38:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2b3c:	00 00                	add    %al,(%rax)
    2b3e:	00 00                	add    %al,(%rax)
    2b40:	14 00                	adc    $0x0,%al
    2b42:	00 00                	add    %al,(%rax)
    2b44:	cc                   	int3   
    2b45:	01 00                	add    %eax,(%rax)
    2b47:	00 96 ec ff ff 22    	add    %dl,0x22ffffec(%rsi)
    2b4d:	00 00                	add    %al,(%rax)
    2b4f:	00 00                	add    %al,(%rax)
    2b51:	44 0e                	rex.R (bad) 
    2b53:	10 00                	adc    %al,(%rax)
    2b55:	00 00                	add    %al,(%rax)
    2b57:	00 14 00             	add    %dl,(%rax,%rax,1)
    2b5a:	00 00                	add    %al,(%rax)
    2b5c:	e4 01                	in     $0x1,%al
    2b5e:	00 00                	add    %al,(%rax)
    2b60:	a0 ec ff ff 1e 00 00 	movabs 0x1effffec,%al
    2b67:	00 00 
    2b69:	00 00                	add    %al,(%rax)
    2b6b:	00 00                	add    %al,(%rax)
    2b6d:	00 00                	add    %al,(%rax)
    2b6f:	00 2c 00             	add    %ch,(%rax,%rax,1)
    2b72:	00 00                	add    %al,(%rax)
    2b74:	fc                   	cld    
    2b75:	01 00                	add    %eax,(%rax)
    2b77:	00 a6 ec ff ff 67    	add    %ah,0x67ffffec(%rsi)
    2b7d:	00 00                	add    %al,(%rax)
    2b7f:	00 00                	add    %al,(%rax)
    2b81:	42 0e                	rex.X (bad) 
    2b83:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    2b8a:	03 41 0e             	add    0xe(%rcx),%eax
    2b8d:	20 83 04 63 0a 0e    	and    %al,0xe0a6304(%rbx)
    2b93:	18 41 0e             	sbb    %al,0xe(%rcx)
    2b96:	10 42 0e             	adc    %al,0xe(%rdx)
    2b99:	08 41 0b             	or     %al,0xb(%rcx)
    2b9c:	00 00                	add    %al,(%rax)
    2b9e:	00 00                	add    %al,(%rax)
    2ba0:	34 00                	xor    $0x0,%al
    2ba2:	00 00                	add    %al,(%rax)
    2ba4:	2c 02                	sub    $0x2,%al
    2ba6:	00 00                	add    %al,(%rax)
    2ba8:	dd ec                	fucomp %st(4)
    2baa:	ff                   	(bad)  
    2bab:	ff cb                	dec    %ebx
    2bad:	00 00                	add    %al,(%rax)
    2baf:	00 00                	add    %al,(%rax)
    2bb1:	42 0e                	rex.X (bad) 
    2bb3:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    2bba:	03 41 0e             	add    0xe(%rcx),%eax
    2bbd:	20 83 04 44 0e 30    	and    %al,0x300e4404(%rbx)
    2bc3:	02 7c 0a 0e          	add    0xe(%rdx,%rcx,1),%bh
    2bc7:	20 41 0e             	and    %al,0xe(%rcx)
    2bca:	18 41 0e             	sbb    %al,0xe(%rcx)
    2bcd:	10 42 0e             	adc    %al,0xe(%rdx)
    2bd0:	08 41 0b             	or     %al,0xb(%rcx)
    2bd3:	00 00                	add    %al,(%rax)
    2bd5:	00 00                	add    %al,(%rax)
    2bd7:	00 14 00             	add    %dl,(%rax,%rax,1)
    2bda:	00 00                	add    %al,(%rax)
    2bdc:	64 02 00             	add    %fs:(%rax),%al
    2bdf:	00 70 ed             	add    %dh,-0x13(%rax)
    2be2:	ff                   	(bad)  
    2be3:	ff 32                	pushq  (%rdx)
    2be5:	00 00                	add    %al,(%rax)
    2be7:	00 00                	add    %al,(%rax)
    2be9:	44 0e                	rex.R (bad) 
    2beb:	10 6d 0e             	adc    %ch,0xe(%rbp)
    2bee:	08 00                	or     %al,(%rax)
    2bf0:	24 00                	and    $0x0,%al
    2bf2:	00 00                	add    %al,(%rax)
    2bf4:	7c 02                	jl     2bf8 <__GNU_EH_FRAME_HDR+0x3b8>
    2bf6:	00 00                	add    %al,(%rax)
    2bf8:	8a ed                	mov    %ch,%ch
    2bfa:	ff                   	(bad)  
    2bfb:	ff                   	(bad)  
    2bfc:	3b 00                	cmp    (%rax),%eax
    2bfe:	00 00                	add    %al,(%rax)
    2c00:	00 41 0e             	add    %al,0xe(%rcx)
    2c03:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2c09:	83 03 44             	addl   $0x44,(%rbx)
    2c0c:	0e                   	(bad)  
    2c0d:	20 72 0e             	and    %dh,0xe(%rdx)
    2c10:	18 41 0e             	sbb    %al,0xe(%rcx)
    2c13:	10 41 0e             	adc    %al,0xe(%rcx)
    2c16:	08 00                	or     %al,(%rax)
    2c18:	24 00                	and    $0x0,%al
    2c1a:	00 00                	add    %al,(%rax)
    2c1c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    2c1d:	02 00                	add    (%rax),%al
    2c1f:	00 9d ed ff ff 4e    	add    %bl,0x4effffed(%rbp)
    2c25:	00 00                	add    %al,(%rax)
    2c27:	00 00                	add    %al,(%rax)
    2c29:	41 0e                	rex.B (bad) 
    2c2b:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2c31:	83 03 44             	addl   $0x44,(%rbx)
    2c34:	0e                   	(bad)  
    2c35:	20 02                	and    %al,(%rdx)
    2c37:	45 0e                	rex.RB (bad) 
    2c39:	18 41 0e             	sbb    %al,0xe(%rcx)
    2c3c:	10 41 0e             	adc    %al,0xe(%rcx)
    2c3f:	08 3c 00             	or     %bh,(%rax,%rax,1)
    2c42:	00 00                	add    %al,(%rax)
    2c44:	cc                   	int3   
    2c45:	02 00                	add    (%rax),%al
    2c47:	00 c3                	add    %al,%bl
    2c49:	ed                   	in     (%dx),%eax
    2c4a:	ff                   	(bad)  
    2c4b:	ff 60 00             	jmpq   *0x0(%rax)
    2c4e:	00 00                	add    %al,(%rax)
    2c50:	00 42 0e             	add    %al,0xe(%rdx)
    2c53:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    2c59:	8d 03                	lea    (%rbx),%eax
    2c5b:	42 0e                	rex.X (bad) 
    2c5d:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    2c64:	05 41 0e 30 83       	add    $0x83300e41,%eax
    2c69:	06                   	(bad)  
    2c6a:	02 47 0a             	add    0xa(%rdi),%al
    2c6d:	0e                   	(bad)  
    2c6e:	28 41 0e             	sub    %al,0xe(%rcx)
    2c71:	20 42 0e             	and    %al,0xe(%rdx)
    2c74:	18 42 0e             	sbb    %al,0xe(%rdx)
    2c77:	10 42 0e             	adc    %al,0xe(%rdx)
    2c7a:	08 41 0b             	or     %al,0xb(%rcx)
    2c7d:	00 00                	add    %al,(%rax)
    2c7f:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
    2c83:	00 0c 03             	add    %cl,(%rbx,%rax,1)
    2c86:	00 00                	add    %al,(%rax)
    2c88:	e3 ed                	jrcxz  2c77 <__GNU_EH_FRAME_HDR+0x437>
    2c8a:	ff                   	(bad)  
    2c8b:	ff 43 03             	incl   0x3(%rbx)
    2c8e:	00 00                	add    %al,(%rax)
    2c90:	00 42 0e             	add    %al,0xe(%rdx)
    2c93:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2c99:	8e 03                	mov    (%rbx),%es
    2c9b:	42 0e                	rex.X (bad) 
    2c9d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2ca3:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86303aea <_end+0xffffffff860fec3a>
    2ca9:	06                   	(bad)  
    2caa:	41 0e                	rex.B (bad) 
    2cac:	38 83 07 47 0e a0    	cmp    %al,-0x5ff1b8f9(%rbx)
    2cb2:	49 03 2c 01          	add    (%r9,%rax,1),%rbp
    2cb6:	0e                   	(bad)  
    2cb7:	a8 49                	test   $0x49,%al
    2cb9:	47 0e                	rex.RXB (bad) 
    2cbb:	b0 49                	mov    $0x49,%al
    2cbd:	7a 0e                	jp     2ccd <__GNU_EH_FRAME_HDR+0x48d>
    2cbf:	a0 49 7a 0e a8 49 41 	movabs 0xb00e4149a80e7a49,%al
    2cc6:	0e b0 
    2cc8:	49 76 0e             	rex.WB jbe 2cd9 <__GNU_EH_FRAME_HDR+0x499>
    2ccb:	a0 49 02 63 0a 0e 38 	movabs 0xe41380e0a630249,%al
    2cd2:	41 0e 
    2cd4:	30 41 0e             	xor    %al,0xe(%rcx)
    2cd7:	28 42 0e             	sub    %al,0xe(%rdx)
    2cda:	20 42 0e             	and    %al,0xe(%rdx)
    2cdd:	18 42 0e             	sbb    %al,0xe(%rdx)
    2ce0:	10 42 0e             	adc    %al,0xe(%rdx)
    2ce3:	08 41 0b             	or     %al,0xb(%rcx)
    2ce6:	00 00                	add    %al,(%rax)
    2ce8:	64 00 00             	add    %al,%fs:(%rax)
    2ceb:	00 74 03 00          	add    %dh,0x0(%rbx,%rax,1)
    2cef:	00 be f0 ff ff 80    	add    %bh,-0x7f000010(%rsi)
    2cf5:	02 00                	add    (%rax),%al
    2cf7:	00 00                	add    %al,(%rax)
    2cf9:	42 0e                	rex.X (bad) 
    2cfb:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2d01:	8e 03                	mov    (%rbx),%es
    2d03:	42 0e                	rex.X (bad) 
    2d05:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2d0b:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86303b52 <_end+0xffffffff860feca2>
    2d11:	06                   	(bad)  
    2d12:	41 0e                	rex.B (bad) 
    2d14:	38 83 07 44 0e a0    	cmp    %al,-0x5ff1bbf9(%rbx)
    2d1a:	01 02                	add    %eax,(%rdx)
    2d1c:	9b                   	fwait
    2d1d:	0e                   	(bad)  
    2d1e:	a8 01                	test   $0x1,%al
    2d20:	47 0e                	rex.RXB (bad) 
    2d22:	b0 01                	mov    $0x1,%al
    2d24:	6a 0e                	pushq  $0xe
    2d26:	a0 01 7d 0e a8 01 41 	movabs 0xb00e4101a80e7d01,%al
    2d2d:	0e b0 
    2d2f:	01 63 0e             	add    %esp,0xe(%rbx)
    2d32:	a0 01 02 87 0a 0e 38 	movabs 0xe41380e0a870201,%al
    2d39:	41 0e 
    2d3b:	30 41 0e             	xor    %al,0xe(%rcx)
    2d3e:	28 42 0e             	sub    %al,0xe(%rdx)
    2d41:	20 42 0e             	and    %al,0xe(%rdx)
    2d44:	18 42 0e             	sbb    %al,0xe(%rdx)
    2d47:	10 42 0e             	adc    %al,0xe(%rdx)
    2d4a:	08 41 0b             	or     %al,0xb(%rcx)
    2d4d:	00 00                	add    %al,(%rax)
    2d4f:	00 14 00             	add    %dl,(%rax,%rax,1)
    2d52:	00 00                	add    %al,(%rax)
    2d54:	dc 03                	faddl  (%rbx)
    2d56:	00 00                	add    %al,(%rax)
    2d58:	d6                   	(bad)  
    2d59:	f2 ff                	repnz (bad) 
    2d5b:	ff                   	(bad)  
    2d5c:	3c 00                	cmp    $0x0,%al
    2d5e:	00 00                	add    %al,(%rax)
    2d60:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2d64:	00 00                	add    %al,(%rax)
    2d66:	00 00                	add    %al,(%rax)
    2d68:	24 00                	and    $0x0,%al
    2d6a:	00 00                	add    %al,(%rax)
    2d6c:	f4                   	hlt    
    2d6d:	03 00                	add    (%rax),%eax
    2d6f:	00 fa                	add    %bh,%dl
    2d71:	f2 ff                	repnz (bad) 
    2d73:	ff 41 00             	incl   0x0(%rcx)
    2d76:	00 00                	add    %al,(%rax)
    2d78:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2d7c:	4c 0e                	rex.WR (bad) 
    2d7e:	18 45 0e             	sbb    %al,0xe(%rbp)
    2d81:	20 5d 0e             	and    %bl,0xe(%rbp)
    2d84:	10 49 0a             	adc    %cl,0xa(%rcx)
    2d87:	0e                   	(bad)  
    2d88:	08 41 0b             	or     %al,0xb(%rcx)
    2d8b:	00 00                	add    %al,(%rax)
    2d8d:	00 00                	add    %al,(%rax)
    2d8f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2d92:	00 00                	add    %al,(%rax)
    2d94:	1c 04                	sbb    $0x4,%al
    2d96:	00 00                	add    %al,(%rax)
    2d98:	13 f3                	adc    %ebx,%esi
    2d9a:	ff                   	(bad)  
    2d9b:	ff 01                	incl   (%rcx)
    2d9d:	01 00                	add    %eax,(%rax)
    2d9f:	00 00                	add    %al,(%rax)
    2da1:	44 0e                	rex.R (bad) 
    2da3:	10 02                	adc    %al,(%rdx)
    2da5:	7d 0a                	jge    2db1 <__GNU_EH_FRAME_HDR+0x571>
    2da7:	0e                   	(bad)  
    2da8:	08 41 0b             	or     %al,0xb(%rcx)
    2dab:	00 00                	add    %al,(%rax)
    2dad:	00 00                	add    %al,(%rax)
    2daf:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2db2:	00 00                	add    %al,(%rax)
    2db4:	3c 04                	cmp    $0x4,%al
    2db6:	00 00                	add    %al,(%rax)
    2db8:	f4                   	hlt    
    2db9:	f3 ff                	repz (bad) 
    2dbb:	ff 96 00 00 00 00    	callq  *0x0(%rsi)
    2dc1:	44 0e                	rex.R (bad) 
    2dc3:	70 57                	jo     2e1c <__GNU_EH_FRAME_HDR+0x5dc>
    2dc5:	0a 0e                	or     (%rsi),%cl
    2dc7:	08 41 0b             	or     %al,0xb(%rcx)
    2dca:	00 00                	add    %al,(%rax)
    2dcc:	00 00                	add    %al,(%rax)
    2dce:	00 00                	add    %al,(%rax)
    2dd0:	44 00 00             	add    %r8b,(%rax)
    2dd3:	00 5c 04 00          	add    %bl,0x0(%rsp,%rax,1)
    2dd7:	00 78 f4             	add    %bh,-0xc(%rax)
    2dda:	ff                   	(bad)  
    2ddb:	ff 65 00             	jmpq   *0x0(%rbp)
    2dde:	00 00                	add    %al,(%rax)
    2de0:	00 42 0e             	add    %al,0xe(%rdx)
    2de3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2de9:	8e 03                	mov    (%rbx),%es
    2deb:	45 0e                	rex.RB (bad) 
    2ded:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2df3:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86303c41 <_end+0xffffffff860fed91>
    2df9:	06                   	(bad)  
    2dfa:	48 0e                	rex.W (bad) 
    2dfc:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
    2e02:	72 0e                	jb     2e12 <__GNU_EH_FRAME_HDR+0x5d2>
    2e04:	38 41 0e             	cmp    %al,0xe(%rcx)
    2e07:	30 41 0e             	xor    %al,0xe(%rcx)
    2e0a:	28 42 0e             	sub    %al,0xe(%rdx)
    2e0d:	20 42 0e             	and    %al,0xe(%rdx)
    2e10:	18 42 0e             	sbb    %al,0xe(%rdx)
    2e13:	10 42 0e             	adc    %al,0xe(%rdx)
    2e16:	08 00                	or     %al,(%rax)
    2e18:	14 00                	adc    $0x0,%al
    2e1a:	00 00                	add    %al,(%rax)
    2e1c:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
    2e1d:	04 00                	add    $0x0,%al
    2e1f:	00 a0 f4 ff ff 02    	add    %ah,0x2fffff4(%rax)
	...

0000000000002e30 <__FRAME_END__>:
    2e30:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000203dd8 <__frame_dummy_init_array_entry>:
  203dd8:	30 12                	xor    %dl,(%rdx)
  203dda:	00 00                	add    %al,(%rax)
  203ddc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000203de0 <__do_global_dtors_aux_fini_array_entry>:
  203de0:	f0 11 00             	lock adc %eax,(%rax)
  203de3:	00 00                	add    %al,(%rax)
  203de5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000203de8 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000203df0 <_DYNAMIC>:
  203df0:	01 00                	add    %eax,(%rax)
  203df2:	00 00                	add    %al,(%rax)
  203df4:	00 00                	add    %al,(%rax)
  203df6:	00 00                	add    %al,(%rax)
  203df8:	01 00                	add    %eax,(%rax)
  203dfa:	00 00                	add    %al,(%rax)
  203dfc:	00 00                	add    %al,(%rax)
  203dfe:	00 00                	add    %al,(%rax)
  203e00:	0c 00                	or     $0x0,%al
  203e02:	00 00                	add    %al,(%rax)
  203e04:	00 00                	add    %al,(%rax)
  203e06:	00 00                	add    %al,(%rax)
  203e08:	f8                   	clc    
  203e09:	0e                   	(bad)  
  203e0a:	00 00                	add    %al,(%rax)
  203e0c:	00 00                	add    %al,(%rax)
  203e0e:	00 00                	add    %al,(%rax)
  203e10:	0d 00 00 00 00       	or     $0x0,%eax
  203e15:	00 00                	add    %al,(%rax)
  203e17:	00 c4                	add    %al,%ah
  203e19:	22 00                	and    (%rax),%al
  203e1b:	00 00                	add    %al,(%rax)
  203e1d:	00 00                	add    %al,(%rax)
  203e1f:	00 19                	add    %bl,(%rcx)
  203e21:	00 00                	add    %al,(%rax)
  203e23:	00 00                	add    %al,(%rax)
  203e25:	00 00                	add    %al,(%rax)
  203e27:	00 d8                	add    %bl,%al
  203e29:	3d 20 00 00 00       	cmp    $0x20,%eax
  203e2e:	00 00                	add    %al,(%rax)
  203e30:	1b 00                	sbb    (%rax),%eax
  203e32:	00 00                	add    %al,(%rax)
  203e34:	00 00                	add    %al,(%rax)
  203e36:	00 00                	add    %al,(%rax)
  203e38:	08 00                	or     %al,(%rax)
  203e3a:	00 00                	add    %al,(%rax)
  203e3c:	00 00                	add    %al,(%rax)
  203e3e:	00 00                	add    %al,(%rax)
  203e40:	1a 00                	sbb    (%rax),%al
  203e42:	00 00                	add    %al,(%rax)
  203e44:	00 00                	add    %al,(%rax)
  203e46:	00 00                	add    %al,(%rax)
  203e48:	e0 3d                	loopne 203e87 <_DYNAMIC+0x97>
  203e4a:	20 00                	and    %al,(%rax)
  203e4c:	00 00                	add    %al,(%rax)
  203e4e:	00 00                	add    %al,(%rax)
  203e50:	1c 00                	sbb    $0x0,%al
  203e52:	00 00                	add    %al,(%rax)
  203e54:	00 00                	add    %al,(%rax)
  203e56:	00 00                	add    %al,(%rax)
  203e58:	08 00                	or     %al,(%rax)
  203e5a:	00 00                	add    %al,(%rax)
  203e5c:	00 00                	add    %al,(%rax)
  203e5e:	00 00                	add    %al,(%rax)
  203e60:	f5                   	cmc    
  203e61:	fe                   	(bad)  
  203e62:	ff 6f 00             	ljmp   *0x0(%rdi)
  203e65:	00 00                	add    %al,(%rax)
  203e67:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  203e6d:	00 00                	add    %al,(%rax)
  203e6f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 203e75 <_DYNAMIC+0x85>
  203e75:	00 00                	add    %al,(%rax)
  203e77:	00 98 06 00 00 00    	add    %bl,0x6(%rax)
  203e7d:	00 00                	add    %al,(%rax)
  203e7f:	00 06                	add    %al,(%rsi)
  203e81:	00 00                	add    %al,(%rax)
  203e83:	00 00                	add    %al,(%rax)
  203e85:	00 00                	add    %al,(%rax)
  203e87:	00 c0                	add    %al,%al
  203e89:	02 00                	add    (%rax),%al
  203e8b:	00 00                	add    %al,(%rax)
  203e8d:	00 00                	add    %al,(%rax)
  203e8f:	00 0a                	add    %cl,(%rdx)
  203e91:	00 00                	add    %al,(%rax)
  203e93:	00 00                	add    %al,(%rax)
  203e95:	00 00                	add    %al,(%rax)
  203e97:	00 9a 01 00 00 00    	add    %bl,0x1(%rdx)
  203e9d:	00 00                	add    %al,(%rax)
  203e9f:	00 0b                	add    %cl,(%rbx)
  203ea1:	00 00                	add    %al,(%rax)
  203ea3:	00 00                	add    %al,(%rax)
  203ea5:	00 00                	add    %al,(%rax)
  203ea7:	00 18                	add    %bl,(%rax)
  203ea9:	00 00                	add    %al,(%rax)
  203eab:	00 00                	add    %al,(%rax)
  203ead:	00 00                	add    %al,(%rax)
  203eaf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 203eb5 <_DYNAMIC+0xc5>
	...
  203ebd:	00 00                	add    %al,(%rax)
  203ebf:	00 03                	add    %al,(%rbx)
	...
  203ec9:	40 20 00             	and    %al,(%rax)
  203ecc:	00 00                	add    %al,(%rax)
  203ece:	00 00                	add    %al,(%rax)
  203ed0:	02 00                	add    (%rax),%al
  203ed2:	00 00                	add    %al,(%rax)
  203ed4:	00 00                	add    %al,(%rax)
  203ed6:	00 00                	add    %al,(%rax)
  203ed8:	00 03                	add    %al,(%rbx)
  203eda:	00 00                	add    %al,(%rax)
  203edc:	00 00                	add    %al,(%rax)
  203ede:	00 00                	add    %al,(%rax)
  203ee0:	14 00                	adc    $0x0,%al
  203ee2:	00 00                	add    %al,(%rax)
  203ee4:	00 00                	add    %al,(%rax)
  203ee6:	00 00                	add    %al,(%rax)
  203ee8:	07                   	(bad)  
  203ee9:	00 00                	add    %al,(%rax)
  203eeb:	00 00                	add    %al,(%rax)
  203eed:	00 00                	add    %al,(%rax)
  203eef:	00 17                	add    %dl,(%rdi)
  203ef1:	00 00                	add    %al,(%rax)
  203ef3:	00 00                	add    %al,(%rax)
  203ef5:	00 00                	add    %al,(%rax)
  203ef7:	00 f8                	add    %bh,%al
  203ef9:	0b 00                	or     (%rax),%eax
  203efb:	00 00                	add    %al,(%rax)
  203efd:	00 00                	add    %al,(%rax)
  203eff:	00 07                	add    %al,(%rdi)
  203f01:	00 00                	add    %al,(%rax)
  203f03:	00 00                	add    %al,(%rax)
  203f05:	00 00                	add    %al,(%rax)
  203f07:	00 c8                	add    %cl,%al
  203f09:	08 00                	or     %al,(%rax)
  203f0b:	00 00                	add    %al,(%rax)
  203f0d:	00 00                	add    %al,(%rax)
  203f0f:	00 08                	add    %cl,(%rax)
  203f11:	00 00                	add    %al,(%rax)
  203f13:	00 00                	add    %al,(%rax)
  203f15:	00 00                	add    %al,(%rax)
  203f17:	00 30                	add    %dh,(%rax)
  203f19:	03 00                	add    (%rax),%eax
  203f1b:	00 00                	add    %al,(%rax)
  203f1d:	00 00                	add    %al,(%rax)
  203f1f:	00 09                	add    %cl,(%rcx)
  203f21:	00 00                	add    %al,(%rax)
  203f23:	00 00                	add    %al,(%rax)
  203f25:	00 00                	add    %al,(%rax)
  203f27:	00 18                	add    %bl,(%rax)
  203f29:	00 00                	add    %al,(%rax)
  203f2b:	00 00                	add    %al,(%rax)
  203f2d:	00 00                	add    %al,(%rax)
  203f2f:	00 fb                	add    %bh,%bl
  203f31:	ff                   	(bad)  
  203f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  203f35:	00 00                	add    %al,(%rax)
  203f37:	00 00                	add    %al,(%rax)
  203f39:	00 00                	add    %al,(%rax)
  203f3b:	08 00                	or     %al,(%rax)
  203f3d:	00 00                	add    %al,(%rax)
  203f3f:	00 fe                	add    %bh,%dh
  203f41:	ff                   	(bad)  
  203f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  203f45:	00 00                	add    %al,(%rax)
  203f47:	00 88 08 00 00 00    	add    %cl,0x8(%rax)
  203f4d:	00 00                	add    %al,(%rax)
  203f4f:	00 ff                	add    %bh,%bh
  203f51:	ff                   	(bad)  
  203f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  203f55:	00 00                	add    %al,(%rax)
  203f57:	00 01                	add    %al,(%rcx)
  203f59:	00 00                	add    %al,(%rax)
  203f5b:	00 00                	add    %al,(%rax)
  203f5d:	00 00                	add    %al,(%rax)
  203f5f:	00 f0                	add    %dh,%al
  203f61:	ff                   	(bad)  
  203f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  203f65:	00 00                	add    %al,(%rax)
  203f67:	00 32                	add    %dh,(%rdx)
  203f69:	08 00                	or     %al,(%rax)
  203f6b:	00 00                	add    %al,(%rax)
  203f6d:	00 00                	add    %al,(%rax)
  203f6f:	00 f9                	add    %bh,%cl
  203f71:	ff                   	(bad)  
  203f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  203f75:	00 00                	add    %al,(%rax)
  203f77:	00 1a                	add    %bl,(%rdx)
	...

Disassembly of section .got:

0000000000203fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000204000 <_GLOBAL_OFFSET_TABLE_>:
  204000:	f0 3d 20 00 00 00    	lock cmp $0x20,%eax
	...
  204016:	00 00                	add    %al,(%rax)
  204018:	26 0f 00 00          	sldt   %es:(%rax)
  20401c:	00 00                	add    %al,(%rax)
  20401e:	00 00                	add    %al,(%rax)
  204020:	36 0f 00 00          	sldt   %ss:(%rax)
  204024:	00 00                	add    %al,(%rax)
  204026:	00 00                	add    %al,(%rax)
  204028:	46 0f 00 00          	rex.RX sldt (%rax)
  20402c:	00 00                	add    %al,(%rax)
  20402e:	00 00                	add    %al,(%rax)
  204030:	56                   	push   %rsi
  204031:	0f 00 00             	sldt   (%rax)
  204034:	00 00                	add    %al,(%rax)
  204036:	00 00                	add    %al,(%rax)
  204038:	66 0f 00 00          	data16 sldt (%rax)
  20403c:	00 00                	add    %al,(%rax)
  20403e:	00 00                	add    %al,(%rax)
  204040:	76 0f                	jbe    204051 <_GLOBAL_OFFSET_TABLE_+0x51>
  204042:	00 00                	add    %al,(%rax)
  204044:	00 00                	add    %al,(%rax)
  204046:	00 00                	add    %al,(%rax)
  204048:	86 0f                	xchg   %cl,(%rdi)
  20404a:	00 00                	add    %al,(%rax)
  20404c:	00 00                	add    %al,(%rax)
  20404e:	00 00                	add    %al,(%rax)
  204050:	96                   	xchg   %eax,%esi
  204051:	0f 00 00             	sldt   (%rax)
  204054:	00 00                	add    %al,(%rax)
  204056:	00 00                	add    %al,(%rax)
  204058:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  204059:	0f 00 00             	sldt   (%rax)
  20405c:	00 00                	add    %al,(%rax)
  20405e:	00 00                	add    %al,(%rax)
  204060:	b6 0f                	mov    $0xf,%dh
  204062:	00 00                	add    %al,(%rax)
  204064:	00 00                	add    %al,(%rax)
  204066:	00 00                	add    %al,(%rax)
  204068:	c6                   	(bad)  
  204069:	0f 00 00             	sldt   (%rax)
  20406c:	00 00                	add    %al,(%rax)
  20406e:	00 00                	add    %al,(%rax)
  204070:	d6                   	(bad)  
  204071:	0f 00 00             	sldt   (%rax)
  204074:	00 00                	add    %al,(%rax)
  204076:	00 00                	add    %al,(%rax)
  204078:	e6 0f                	out    %al,$0xf
  20407a:	00 00                	add    %al,(%rax)
  20407c:	00 00                	add    %al,(%rax)
  20407e:	00 00                	add    %al,(%rax)
  204080:	f6 0f 00             	testb  $0x0,(%rdi)
  204083:	00 00                	add    %al,(%rax)
  204085:	00 00                	add    %al,(%rax)
  204087:	00 06                	add    %al,(%rsi)
  204089:	10 00                	adc    %al,(%rax)
  20408b:	00 00                	add    %al,(%rax)
  20408d:	00 00                	add    %al,(%rax)
  20408f:	00 16                	add    %dl,(%rsi)
  204091:	10 00                	adc    %al,(%rax)
  204093:	00 00                	add    %al,(%rax)
  204095:	00 00                	add    %al,(%rax)
  204097:	00 26                	add    %ah,(%rsi)
  204099:	10 00                	adc    %al,(%rax)
  20409b:	00 00                	add    %al,(%rax)
  20409d:	00 00                	add    %al,(%rax)
  20409f:	00 36                	add    %dh,(%rsi)
  2040a1:	10 00                	adc    %al,(%rax)
  2040a3:	00 00                	add    %al,(%rax)
  2040a5:	00 00                	add    %al,(%rax)
  2040a7:	00 46 10             	add    %al,0x10(%rsi)
  2040aa:	00 00                	add    %al,(%rax)
  2040ac:	00 00                	add    %al,(%rax)
  2040ae:	00 00                	add    %al,(%rax)
  2040b0:	56                   	push   %rsi
  2040b1:	10 00                	adc    %al,(%rax)
  2040b3:	00 00                	add    %al,(%rax)
  2040b5:	00 00                	add    %al,(%rax)
  2040b7:	00 66 10             	add    %ah,0x10(%rsi)
  2040ba:	00 00                	add    %al,(%rax)
  2040bc:	00 00                	add    %al,(%rax)
  2040be:	00 00                	add    %al,(%rax)
  2040c0:	76 10                	jbe    2040d2 <_GLOBAL_OFFSET_TABLE_+0xd2>
  2040c2:	00 00                	add    %al,(%rax)
  2040c4:	00 00                	add    %al,(%rax)
  2040c6:	00 00                	add    %al,(%rax)
  2040c8:	86 10                	xchg   %dl,(%rax)
  2040ca:	00 00                	add    %al,(%rax)
  2040cc:	00 00                	add    %al,(%rax)
  2040ce:	00 00                	add    %al,(%rax)
  2040d0:	96                   	xchg   %eax,%esi
  2040d1:	10 00                	adc    %al,(%rax)
  2040d3:	00 00                	add    %al,(%rax)
  2040d5:	00 00                	add    %al,(%rax)
  2040d7:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
  2040dd:	00 00                	add    %al,(%rax)
  2040df:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
  2040e5:	00 00                	add    %al,(%rax)
  2040e7:	00 c6                	add    %al,%dh
  2040e9:	10 00                	adc    %al,(%rax)
  2040eb:	00 00                	add    %al,(%rax)
  2040ed:	00 00                	add    %al,(%rax)
  2040ef:	00 d6                	add    %dl,%dh
  2040f1:	10 00                	adc    %al,(%rax)
  2040f3:	00 00                	add    %al,(%rax)
  2040f5:	00 00                	add    %al,(%rax)
  2040f7:	00 e6                	add    %ah,%dh
  2040f9:	10 00                	adc    %al,(%rax)
  2040fb:	00 00                	add    %al,(%rax)
  2040fd:	00 00                	add    %al,(%rax)
  2040ff:	00 f6                	add    %dh,%dh
  204101:	10 00                	adc    %al,(%rax)
  204103:	00 00                	add    %al,(%rax)
  204105:	00 00                	add    %al,(%rax)
  204107:	00 06                	add    %al,(%rsi)
  204109:	11 00                	adc    %eax,(%rax)
  20410b:	00 00                	add    %al,(%rax)
  20410d:	00 00                	add    %al,(%rax)
  20410f:	00 16                	add    %dl,(%rsi)
  204111:	11 00                	adc    %eax,(%rax)
  204113:	00 00                	add    %al,(%rax)
  204115:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000204120 <__data_start>:
	...

0000000000204128 <__dso_handle>:
  204128:	28 41 20             	sub    %al,0x20(%rcx)
	...

0000000000204140 <n45>:
  204140:	28 00                	sub    %al,(%rax)
	...

0000000000204160 <n41>:
  204160:	01 00                	add    %eax,(%rax)
	...

0000000000204180 <n47>:
  204180:	63 00                	movslq (%rax),%eax
	...

00000000002041a0 <n44>:
  2041a0:	23 00                	and    (%rax),%eax
	...

00000000002041c0 <n42>:
  2041c0:	07                   	(bad)  
	...

00000000002041e0 <n43>:
  2041e0:	14 00                	adc    $0x0,%al
	...

0000000000204200 <n46>:
  204200:	2f                   	(bad)  
	...

0000000000204220 <n48>:
  204220:	e9 03 00 00 00       	jmpq   204228 <n48+0x8>
	...

0000000000204240 <node9>:
  204240:	d4                   	(bad)  
  204241:	03 00                	add    (%rax),%eax
  204243:	00 09                	add    %cl,(%rcx)
	...

0000000000204260 <lab_id>:
  204260:	53                   	push   %rbx
  204261:	45 31 38             	xor    %r15d,(%r8)
  204264:	32 30                	xor    (%rax),%dh
  204266:	31 39                	xor    %edi,(%rcx)
  204268:	4c 61                	rex.WR (bad) 
  20426a:	62 32                	(bad)  
	...

0000000000204660 <bomb_id>:
  204660:	7c 13                	jl     204675 <n1+0x5>
  204662:	34 01                	xor    $0x1,%al
	...

0000000000204670 <n1>:
  204670:	24 00                	and    $0x0,%al
  204672:	00 00                	add    %al,(%rax)
  204674:	00 00                	add    %al,(%rax)
  204676:	00 00                	add    %al,(%rax)
  204678:	90                   	nop
  204679:	46 20 00             	rex.RX and %r8b,(%rax)
  20467c:	00 00                	add    %al,(%rax)
  20467e:	00 00                	add    %al,(%rax)
  204680:	b0 46                	mov    $0x46,%al
  204682:	20 00                	and    %al,(%rax)
	...

0000000000204690 <n21>:
  204690:	08 00                	or     %al,(%rax)
  204692:	00 00                	add    %al,(%rax)
  204694:	00 00                	add    %al,(%rax)
  204696:	00 00                	add    %al,(%rax)
  204698:	10 47 20             	adc    %al,0x20(%rdi)
  20469b:	00 00                	add    %al,(%rax)
  20469d:	00 00                	add    %al,(%rax)
  20469f:	00 d0                	add    %dl,%al
  2046a1:	46 20 00             	rex.RX and %r8b,(%rax)
	...

00000000002046b0 <n22>:
  2046b0:	32 00                	xor    (%rax),%al
  2046b2:	00 00                	add    %al,(%rax)
  2046b4:	00 00                	add    %al,(%rax)
  2046b6:	00 00                	add    %al,(%rax)
  2046b8:	f0 46 20 00          	lock rex.RX and %r8b,(%rax)
  2046bc:	00 00                	add    %al,(%rax)
  2046be:	00 00                	add    %al,(%rax)
  2046c0:	30 47 20             	xor    %al,0x20(%rdi)
	...

00000000002046d0 <n32>:
  2046d0:	16                   	(bad)  
  2046d1:	00 00                	add    %al,(%rax)
  2046d3:	00 00                	add    %al,(%rax)
  2046d5:	00 00                	add    %al,(%rax)
  2046d7:	00 e0                	add    %ah,%al
  2046d9:	41 20 00             	and    %al,(%r8)
  2046dc:	00 00                	add    %al,(%rax)
  2046de:	00 00                	add    %al,(%rax)
  2046e0:	a0 41 20 00 00 00 00 	movabs 0x2041,%al
  2046e7:	00 00 
  2046e9:	00 00                	add    %al,(%rax)
  2046eb:	00 00                	add    %al,(%rax)
  2046ed:	00 00                	add    %al,(%rax)
	...

00000000002046f0 <n33>:
  2046f0:	2d 00 00 00 00       	sub    $0x0,%eax
  2046f5:	00 00                	add    %al,(%rax)
  2046f7:	00 40 41             	add    %al,0x41(%rax)
  2046fa:	20 00                	and    %al,(%rax)
  2046fc:	00 00                	add    %al,(%rax)
  2046fe:	00 00                	add    %al,(%rax)
  204700:	00 42 20             	add    %al,0x20(%rdx)
	...

0000000000204710 <n31>:
  204710:	06                   	(bad)  
  204711:	00 00                	add    %al,(%rax)
  204713:	00 00                	add    %al,(%rax)
  204715:	00 00                	add    %al,(%rax)
  204717:	00 60 41             	add    %ah,0x41(%rax)
  20471a:	20 00                	and    %al,(%rax)
  20471c:	00 00                	add    %al,(%rax)
  20471e:	00 00                	add    %al,(%rax)
  204720:	c0 41 20 00          	rolb   $0x0,0x20(%rcx)
	...

0000000000204730 <n34>:
  204730:	6b 00 00             	imul   $0x0,(%rax),%eax
  204733:	00 00                	add    %al,(%rax)
  204735:	00 00                	add    %al,(%rax)
  204737:	00 80 41 20 00 00    	add    %al,0x2041(%rax)
  20473d:	00 00                	add    %al,(%rax)
  20473f:	00 20                	add    %ah,(%rax)
  204741:	42 20 00             	rex.X and %al,(%rax)
	...

0000000000204750 <node0>:
	...
  204758:	60                   	(bad)  
  204759:	47 20 00             	rex.RXB and %r8b,(%r8)
  20475c:	00 00                	add    %al,(%rax)
	...

0000000000204760 <node1>:
  204760:	cb                   	lret   
  204761:	02 00                	add    (%rax),%al
  204763:	00 01                	add    %al,(%rcx)
  204765:	00 00                	add    %al,(%rax)
  204767:	00 70 47             	add    %dh,0x47(%rax)
  20476a:	20 00                	and    %al,(%rax)
  20476c:	00 00                	add    %al,(%rax)
	...

0000000000204770 <node2>:
  204770:	4b 01 00             	rex.WXB add %rax,(%r8)
  204773:	00 02                	add    %al,(%rdx)
  204775:	00 00                	add    %al,(%rax)
  204777:	00 80 47 20 00 00    	add    %al,0x2047(%rax)
  20477d:	00 00                	add    %al,(%rax)
	...

0000000000204780 <node3>:
  204780:	19 02                	sbb    %eax,(%rdx)
  204782:	00 00                	add    %al,(%rax)
  204784:	03 00                	add    (%rax),%eax
  204786:	00 00                	add    %al,(%rax)
  204788:	90                   	nop
  204789:	47 20 00             	rex.RXB and %r8b,(%r8)
  20478c:	00 00                	add    %al,(%rax)
	...

0000000000204790 <node4>:
  204790:	1e                   	(bad)  
  204791:	01 00                	add    %eax,(%rax)
  204793:	00 04 00             	add    %al,(%rax,%rax,1)
  204796:	00 00                	add    %al,(%rax)
  204798:	a0 47 20 00 00 00 00 	movabs 0x7c00000000002047,%al
  20479f:	00  

00000000002047a0 <node5>:
  2047a0:	7c 01                	jl     2047a3 <node5+0x3>
  2047a2:	00 00                	add    %al,(%rax)
  2047a4:	05 00 00 00 b0       	add    $0xb0000000,%eax
  2047a9:	47 20 00             	rex.RXB and %r8b,(%r8)
  2047ac:	00 00                	add    %al,(%rax)
	...

00000000002047b0 <node6>:
  2047b0:	24 02                	and    $0x2,%al
  2047b2:	00 00                	add    %al,(%rax)
  2047b4:	06                   	(bad)  
  2047b5:	00 00                	add    %al,(%rax)
  2047b7:	00 c0                	add    %al,%al
  2047b9:	47 20 00             	rex.RXB and %r8b,(%r8)
  2047bc:	00 00                	add    %al,(%rax)
	...

00000000002047c0 <node7>:
  2047c0:	d0 03                	rolb   (%rbx)
  2047c2:	00 00                	add    %al,(%rax)
  2047c4:	07                   	(bad)  
  2047c5:	00 00                	add    %al,(%rax)
  2047c7:	00 d0                	add    %dl,%al
  2047c9:	47 20 00             	rex.RXB and %r8b,(%r8)
  2047cc:	00 00                	add    %al,(%rax)
	...

00000000002047d0 <node8>:
  2047d0:	28 02                	sub    %al,(%rdx)
  2047d2:	00 00                	add    %al,(%rax)
  2047d4:	08 00                	or     %al,(%rax)
  2047d6:	00 00                	add    %al,(%rax)
  2047d8:	40                   	rex
  2047d9:	42 20 00             	rex.X and %al,(%rax)
  2047dc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

00000000002047e0 <stdout@@GLIBC_2.2.5>:
	...

00000000002047f0 <stdin@@GLIBC_2.2.5>:
	...

00000000002047f8 <completed.6972>:
  2047f8:	00 00                	add    %al,(%rax)
	...

00000000002047fc <num_input_strings>:
  2047fc:	00 00                	add    %al,(%rax)
	...

0000000000204800 <infile>:
	...

0000000000204820 <input_strings>:
	...

0000000000204e60 <scratch>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 36 2e 33 	imul   $0x332e3620,0x6e(%rcx),%esp
  10:	2e 30 2d 31 38 2b 64 	xor    %ch,%cs:0x642b3831(%rip)        # 642b3848 <_end+0x640ae998>
  17:	65 62                	gs (bad) 
  19:	39 75 31             	cmp    %esi,0x31(%rbp)
  1c:	29 20                	sub    %esp,(%rax)
  1e:	36 2e 33 2e          	ss xor %cs:(%rsi),%ebp
  22:	30 20                	xor    %ah,(%rax)
  24:	32 30                	xor    (%rax),%dh
  26:	31 37                	xor    %esi,(%rdi)
  28:	30                   	.byte 0x30
  29:	35                   	.byte 0x35
  2a:	31 36                	xor    %esi,(%rsi)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	60                   	(bad)  
  11:	12 00                	adc    (%rax),%al
  13:	00 00                	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 50 01             	add    %dl,0x1(%rax)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	b1 06                	mov    $0x6,%cl
   2:	00 00                	add    %al,(%rax)
   4:	04 00                	add    $0x0,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	f2 02 00             	repnz add (%rax),%al
   f:	00 0c 71             	add    %cl,(%rcx,%rsi,2)
  12:	00 00                	add    %al,(%rax)
  14:	00 a2 00 00 00 60    	add    %ah,0x60000000(%rdx)
  1a:	12 00                	adc    (%rax),%al
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 50 01             	add    %dl,0x1(%rax)
	...
  2b:	00 00                	add    %al,(%rax)
  2d:	02 4d 00             	add    0x0(%rbp),%cl
  30:	00 00                	add    %al,(%rax)
  32:	02 d8                	add    %al,%bl
  34:	38 00                	cmp    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	03 08                	add    (%rax),%ecx
  3a:	07                   	(bad)  
  3b:	fd                   	std    
  3c:	01 00                	add    %eax,(%rax)
  3e:	00 03                	add    %al,(%rbx)
  40:	01 08                	add    %ecx,(%rax)
  42:	60                   	(bad)  
  43:	01 00                	add    %eax,(%rax)
  45:	00 03                	add    %al,(%rbx)
  47:	02 07                	add    (%rdi),%al
  49:	bc 01 00 00 03       	mov    $0x3000001,%esp
  4e:	04 07                	add    $0x7,%al
  50:	02 02                	add    (%rdx),%al
  52:	00 00                	add    %al,(%rax)
  54:	03 01                	add    (%rcx),%eax
  56:	06                   	(bad)  
  57:	62 01                	(bad)  
  59:	00 00                	add    %al,(%rax)
  5b:	03 02                	add    (%rdx),%eax
  5d:	05 43 00 00 00       	add    $0x43,%eax
  62:	04 04                	add    $0x4,%al
  64:	05 69 6e 74 00       	add    $0x746e69,%eax
  69:	03 08                	add    (%rax),%ecx
  6b:	05 fa 00 00 00       	add    $0xfa,%eax
  70:	02 3f                	add    (%rdi),%bh
  72:	02 00                	add    (%rax),%al
  74:	00 03                	add    %al,(%rbx)
  76:	83 69 00 00          	subl   $0x0,0x0(%rcx)
  7a:	00 02                	add    %al,(%rdx)
  7c:	35 02 00 00 03       	xor    $0x3000002,%eax
  81:	84 69 00             	test   %ch,0x0(%rcx)
  84:	00 00                	add    %al,(%rax)
  86:	03 08                	add    (%rax),%ecx
  88:	07                   	(bad)  
  89:	5a                   	pop    %rdx
  8a:	00 00                	add    %al,(%rax)
  8c:	00 05 08 06 08 95    	add    %al,-0x6af7f9f8(%rip)        # ffffffff9508069a <_end+0xffffffff94e7b7ea>
  92:	00 00                	add    %al,(%rax)
  94:	00 03                	add    %al,(%rbx)
  96:	01 06                	add    %eax,(%rsi)
  98:	69 01 00 00 07 95    	imul   $0x95070000,(%rcx),%eax
  9e:	00 00                	add    %al,(%rax)
  a0:	00 02                	add    %al,(%rdx)
  a2:	5b                   	pop    %rbx
  a3:	01 00                	add    %eax,(%rax)
  a5:	00 04 30             	add    %al,(%rax,%rsi,1)
  a8:	ac                   	lods   %ds:(%rsi),%al
  a9:	00 00                	add    %al,(%rax)
  ab:	00 08                	add    %cl,(%rax)
  ad:	57                   	push   %rdi
  ae:	01 00                	add    %eax,(%rax)
  b0:	00 d8                	add    %bl,%al
  b2:	05 f1 29 02 00       	add    $0x229f1,%eax
  b7:	00 09                	add    %cl,(%rcx)
  b9:	c9                   	leaveq 
  ba:	02 00                	add    (%rax),%al
  bc:	00 05 f2 62 00 00    	add    %al,0x62f2(%rip)        # 63b4 <__FRAME_END__+0x3584>
  c2:	00 00                	add    %al,(%rax)
  c4:	09 af 01 00 00 05    	or     %ebp,0x5000001(%rdi)
  ca:	f7 8f 00 00 00 08 09 	testl  $0x9509,0x8000000(%rdi)
  d1:	95 00 00 
  d4:	00 05 f8 8f 00 00    	add    %al,0x8ff8(%rip)        # 90d2 <__FRAME_END__+0x62a2>
  da:	00 10                	add    %dl,(%rax)
  dc:	09 82 02 00 00 05    	or     %eax,0x5000002(%rdx)
  e2:	f9                   	stc    
  e3:	8f 00                	popq   (%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	18 09                	sbb    %cl,(%rcx)
  e9:	97                   	xchg   %eax,%edi
  ea:	01 00                	add    %eax,(%rax)
  ec:	00 05 fa 8f 00 00    	add    %al,0x8ffa(%rip)        # 90ec <__FRAME_END__+0x62bc>
  f2:	00 20                	add    %ah,(%rax)
  f4:	09 63 00             	or     %esp,0x0(%rbx)
  f7:	00 00                	add    %al,(%rax)
  f9:	05 fb 8f 00 00       	add    $0x8ffb,%eax
  fe:	00 28                	add    %ch,(%rax)
 100:	09 1f                	or     %ebx,(%rdi)
 102:	02 00                	add    (%rax),%al
 104:	00 05 fc 8f 00 00    	add    %al,0x8ffc(%rip)        # 9106 <__FRAME_END__+0x62d6>
 10a:	00 30                	add    %dh,(%rax)
 10c:	09 78 00             	or     %edi,0x0(%rax)
 10f:	00 00                	add    %al,(%rax)
 111:	05 fd 8f 00 00       	add    $0x8ffd,%eax
 116:	00 38                	add    %bh,(%rax)
 118:	09 00                	or     %eax,(%rax)
 11a:	00 00                	add    %al,(%rax)
 11c:	00 05 fe 8f 00 00    	add    %al,0x8ffe(%rip)        # 9120 <__FRAME_END__+0x62f0>
 122:	00 40 0a             	add    %al,0xa(%rax)
 125:	9f                   	lahf   
 126:	02 00                	add    (%rax),%al
 128:	00 05 00 01 8f 00    	add    %al,0x8f0100(%rip)        # 8f022e <_end+0x6eb37e>
 12e:	00 00                	add    %al,(%rax)
 130:	48 0a 5e 02          	rex.W or 0x2(%rsi),%bl
 134:	00 00                	add    %al,(%rax)
 136:	05 01 01 8f 00       	add    $0x8f0101,%eax
 13b:	00 00                	add    %al,(%rax)
 13d:	50                   	push   %rax
 13e:	0a 36                	or     (%rsi),%dh
 140:	00 00                	add    %al,(%rax)
 142:	00 05 02 01 8f 00    	add    %al,0x8f0102(%rip)        # 8f024a <_end+0x6eb39a>
 148:	00 00                	add    %al,(%rax)
 14a:	58                   	pop    %rax
 14b:	0a 8c 00 00 00 05 04 	or     0x4050000(%rax,%rax,1),%cl
 152:	01 61 02             	add    %esp,0x2(%rcx)
 155:	00 00                	add    %al,(%rax)
 157:	60                   	(bad)  
 158:	0a 47 02             	or     0x2(%rdi),%al
 15b:	00 00                	add    %al,(%rax)
 15d:	05 06 01 67 02       	add    $0x2670106,%eax
 162:	00 00                	add    %al,(%rax)
 164:	68 0a b9 02 00       	pushq  $0x2b90a
 169:	00 05 08 01 62 00    	add    %al,0x620108(%rip)        # 620277 <_end+0x41b3c7>
 16f:	00 00                	add    %al,(%rax)
 171:	70 0a                	jo     17d <_init-0xd7b>
 173:	74 02                	je     177 <_init-0xd81>
 175:	00 00                	add    %al,(%rax)
 177:	05 0c 01 62 00       	add    $0x62010c,%eax
 17c:	00 00                	add    %al,(%rax)
 17e:	74 0a                	je     18a <_init-0xd6e>
 180:	12 00                	adc    (%rax),%al
 182:	00 00                	add    %al,(%rax)
 184:	05 0e 01 70 00       	add    $0x70010e,%eax
 189:	00 00                	add    %al,(%rax)
 18b:	78 0a                	js     197 <_init-0xd61>
 18d:	18 01                	sbb    %al,(%rcx)
 18f:	00 00                	add    %al,(%rax)
 191:	05 12 01 46 00       	add    $0x460112,%eax
 196:	00 00                	add    %al,(%rax)
 198:	80 0a 90             	orb    $0x90,(%rdx)
 19b:	02 00                	add    (%rax),%al
 19d:	00 05 13 01 54 00    	add    %al,0x540113(%rip)        # 5402b6 <_end+0x33b406>
 1a3:	00 00                	add    %al,(%rax)
 1a5:	82                   	(bad)  
 1a6:	0a 8d 01 00 00 05    	or     0x5000001(%rbp),%cl
 1ac:	14 01                	adc    $0x1,%al
 1ae:	6d                   	insl   (%dx),%es:(%rdi)
 1af:	02 00                	add    (%rax),%al
 1b1:	00 83 0a f4 00 00    	add    %al,0xf40a(%rbx)
 1b7:	00 05 18 01 7d 02    	add    %al,0x27d0118(%rip)        # 27d02d5 <_end+0x25cb425>
 1bd:	00 00                	add    %al,(%rax)
 1bf:	88 0a                	mov    %cl,(%rdx)
 1c1:	16                   	(bad)  
 1c2:	00 00                	add    %al,(%rax)
 1c4:	00 05 21 01 7b 00    	add    %al,0x7b0121(%rip)        # 7b02eb <_end+0x5ab43b>
 1ca:	00 00                	add    %al,(%rax)
 1cc:	90                   	nop
 1cd:	0a da                	or     %dl,%bl
 1cf:	01 00                	add    %eax,(%rax)
 1d1:	00 05 29 01 8d 00    	add    %al,0x8d0129(%rip)        # 8d0300 <_end+0x6cb450>
 1d7:	00 00                	add    %al,(%rax)
 1d9:	98                   	cwtl   
 1da:	0a e1                	or     %cl,%ah
 1dc:	01 00                	add    %eax,(%rax)
 1de:	00 05 2a 01 8d 00    	add    %al,0x8d012a(%rip)        # 8d030e <_end+0x6cb45e>
 1e4:	00 00                	add    %al,(%rax)
 1e6:	a0 0a e8 01 00 00 05 	movabs 0x12b05000001e80a,%al
 1ed:	2b 01 
 1ef:	8d 00                	lea    (%rax),%eax
 1f1:	00 00                	add    %al,(%rax)
 1f3:	a8 0a                	test   $0xa,%al
 1f5:	ef                   	out    %eax,(%dx)
 1f6:	01 00                	add    %eax,(%rax)
 1f8:	00 05 2c 01 8d 00    	add    %al,0x8d012c(%rip)        # 8d032a <_end+0x6cb47a>
 1fe:	00 00                	add    %al,(%rax)
 200:	b0 0a                	mov    $0xa,%al
 202:	f6 01 00             	testb  $0x0,(%rcx)
 205:	00 05 2e 01 2d 00    	add    %al,0x2d012e(%rip)        # 2d0339 <_end+0xcb489>
 20b:	00 00                	add    %al,(%rax)
 20d:	b8 0a 7c 02 00       	mov    $0x27c0a,%eax
 212:	00 05 2f 01 62 00    	add    %al,0x62012f(%rip)        # 620347 <_end+0x41b497>
 218:	00 00                	add    %al,(%rax)
 21a:	c0 0a a6             	rorb   $0xa6,(%rdx)
 21d:	01 00                	add    %eax,(%rax)
 21f:	00 05 31 01 83 02    	add    %al,0x2830131(%rip)        # 2830356 <_end+0x262b4a6>
 225:	00 00                	add    %al,(%rax)
 227:	c4                   	(bad)  
 228:	00 0b                	add    %cl,(%rbx)
 22a:	e7 02                	out    %eax,$0x2
 22c:	00 00                	add    %al,(%rax)
 22e:	05 96 08 82 01       	add    $0x1820896,%eax
 233:	00 00                	add    %al,(%rax)
 235:	18 05 9c 61 02 00    	sbb    %al,0x2619c(%rip)        # 263d7 <__FRAME_END__+0x235a7>
 23b:	00 09                	add    %cl,(%rcx)
 23d:	d4                   	(bad)  
 23e:	01 00                	add    %eax,(%rax)
 240:	00 05 9d 61 02 00    	add    %al,0x2619d(%rip)        # 263e3 <__FRAME_END__+0x235b3>
 246:	00 00                	add    %al,(%rax)
 248:	09 51 01             	or     %edx,0x1(%rcx)
 24b:	00 00                	add    %al,(%rax)
 24d:	05 9e 67 02 00       	add    $0x2679e,%eax
 252:	00 08                	add    %cl,(%rax)
 254:	09 42 01             	or     %eax,0x1(%rdx)
 257:	00 00                	add    %al,(%rax)
 259:	05 a2 62 00 00       	add    $0x62a2,%eax
 25e:	00 10                	add    %dl,(%rax)
 260:	00 06                	add    %al,(%rsi)
 262:	08 30                	or     %dh,(%rax)
 264:	02 00                	add    (%rax),%al
 266:	00 06                	add    %al,(%rsi)
 268:	08 ac 00 00 00 0c 95 	or     %ch,-0x6af40000(%rax,%rax,1)
 26f:	00 00                	add    %al,(%rax)
 271:	00 7d 02             	add    %bh,0x2(%rbp)
 274:	00 00                	add    %al,(%rax)
 276:	0d 86 00 00 00       	or     $0x86,%eax
 27b:	00 00                	add    %al,(%rax)
 27d:	06                   	(bad)  
 27e:	08 29                	or     %ch,(%rcx)
 280:	02 00                	add    (%rax),%al
 282:	00 0c 95 00 00 00 93 	add    %cl,-0x6d000000(,%rdx,4)
 289:	02 00                	add    (%rax),%al
 28b:	00 0d 86 00 00 00    	add    %cl,0x86(%rip)        # 317 <_init-0xbe1>
 291:	13 00                	adc    (%rax),%eax
 293:	0e                   	(bad)  
 294:	34 01                	xor    $0x1,%al
 296:	00 00                	add    %al,(%rax)
 298:	0f 73                	(bad)  
 29a:	01 00                	add    %eax,(%rax)
 29c:	00 05 3b 01 93 02    	add    %al,0x293013b(%rip)        # 29303dd <_end+0x272b52d>
 2a2:	00 00                	add    %al,(%rax)
 2a4:	0f d7                	(bad)  
 2a6:	02 00                	add    (%rax),%al
 2a8:	00 05 3c 01 93 02    	add    %al,0x293013c(%rip)        # 29303ea <_end+0x272b53a>
 2ae:	00 00                	add    %al,(%rax)
 2b0:	0f 24                	(bad)  
 2b2:	01 00                	add    %eax,(%rax)
 2b4:	00 05 3d 01 93 02    	add    %al,0x293013d(%rip)        # 29303f7 <_end+0x272b547>
 2ba:	00 00                	add    %al,(%rax)
 2bc:	06                   	(bad)  
 2bd:	08 9c 00 00 00 07 bc 	or     %bl,-0x43f90000(%rax,%rax,1)
 2c4:	02 00                	add    (%rax),%al
 2c6:	00 10                	add    %dl,(%rax)
 2c8:	6e                   	outsb  %ds:(%rsi),(%dx)
 2c9:	02 00                	add    (%rax),%al
 2cb:	00 04 aa             	add    %al,(%rdx,%rbp,4)
 2ce:	67 02 00             	add    (%eax),%al
 2d1:	00 10                	add    %dl,(%rax)
 2d3:	d0 02                	rolb   (%rdx)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	04 ab                	add    $0xab,%al
 2d9:	67 02 00             	add    (%eax),%al
 2dc:	00 10                	add    %dl,(%rax)
 2de:	e5 00                	in     $0x0,%eax
 2e0:	00 00                	add    %al,(%rax)
 2e2:	04 ac                	add    $0xac,%al
 2e4:	67 02 00             	add    (%eax),%al
 2e7:	00 10                	add    %dl,(%rax)
 2e9:	2d 00 00 00 06       	sub    $0x6000000,%eax
 2ee:	1a 62 00             	sbb    0x0(%rdx),%ah
 2f1:	00 00                	add    %al,(%rax)
 2f3:	0c c2                	or     $0xc2,%al
 2f5:	02 00                	add    (%rax),%al
 2f7:	00 fe                	add    %bh,%dh
 2f9:	02 00                	add    (%rax),%al
 2fb:	00 11                	add    %dl,(%rcx)
 2fd:	00 07                	add    %al,(%rdi)
 2ff:	f3 02 00             	repz add (%rax),%al
 302:	00 10                	add    %dl,(%rax)
 304:	ad                   	lods   %ds:(%rsi),%eax
 305:	02 00                	add    (%rax),%al
 307:	00 06                	add    %al,(%rsi)
 309:	1b fe                	sbb    %esi,%edi
 30b:	02 00                	add    (%rax),%al
 30d:	00 12                	add    %dl,(%rdx)
 30f:	85 00                	test   %eax,(%rax)
 311:	00 00                	add    %al,(%rax)
 313:	01 21                	add    %esp,(%rcx)
 315:	23 03                	and    (%rbx),%eax
 317:	00 00                	add    %al,(%rax)
 319:	09 03                	or     %eax,(%rbx)
 31b:	00 48 20             	add    %cl,0x20(%rax)
 31e:	00 00                	add    %al,(%rax)
 320:	00 00                	add    %al,(%rax)
 322:	00 06                	add    %al,(%rsi)
 324:	08 a1 00 00 00 13    	or     %ah,0x13000000(%rcx)
 32a:	cf                   	iret   
 32b:	01 00                	add    %eax,(%rax)
 32d:	00 01                	add    %al,(%rcx)
 32f:	23 62 00             	and    0x0(%rdx),%esp
 332:	00 00                	add    %al,(%rax)
 334:	60                   	(bad)  
 335:	12 00                	adc    (%rax),%al
 337:	00 00                	add    %al,(%rax)
 339:	00 00                	add    %al,(%rax)
 33b:	00 50 01             	add    %dl,0x1(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	00 00                	add    %al,(%rax)
 342:	00 00                	add    %al,(%rax)
 344:	01 9c 19 06 00 00 14 	add    %ebx,0x14000006(%rcx,%rbx,1)
 34b:	6e                   	outsb  %ds:(%rsi),(%dx)
 34c:	01 00                	add    %eax,(%rax)
 34e:	00 01                	add    %al,(%rcx)
 350:	23 62 00             	and    0x0(%rdx),%esp
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
 357:	00 00                	add    %al,(%rax)
 359:	14 47                	adc    $0x47,%al
 35b:	01 00                	add    %eax,(%rax)
 35d:	00 01                	add    %al,(%rcx)
 35f:	23 19                	and    (%rcx),%ebx
 361:	06                   	(bad)  
 362:	00 00                	add    %al,(%rax)
 364:	8b 00                	mov    (%rax),%eax
 366:	00 00                	add    %al,(%rax)
 368:	15 54 00 00 00       	adc    $0x54,%eax
 36d:	01 25 8f 00 00 00    	add    %esp,0x8f(%rip)        # 402 <_init-0xaf6>
 373:	fd                   	std    
 374:	00 00                	add    %al,(%rax)
 376:	00 16                	add    %dl,(%rsi)
 378:	75 13                	jne    38d <_init-0xb6b>
 37a:	00 00                	add    %al,(%rax)
 37c:	00 00                	add    %al,(%rax)
 37e:	00 00                	add    %al,(%rax)
 380:	1d 00 00 00 00       	sbb    $0x0,%eax
 385:	00 00                	add    %al,(%rax)
 387:	00 d0                	add    %dl,%al
 389:	03 00                	add    (%rax),%eax
 38b:	00 17                	add    %dl,(%rdi)
 38d:	4c 01 00             	add    %r8,(%rax)
 390:	00 07                	add    %al,(%rdi)
 392:	00 9d 03 00 00 18    	add    %bl,0x18000003(%rbp)
 398:	62                   	(bad)  
 399:	00 00                	add    %al,(%rax)
 39b:	00 00                	add    %al,(%rax)
 39d:	19 88 13 00 00 00    	sbb    %ecx,0x13(%rax)
 3a3:	00 00                	add    %al,(%rax)
 3a5:	00 1f                	add    %bl,(%rdi)
 3a7:	06                   	(bad)  
 3a8:	00 00                	add    %al,(%rax)
 3aa:	bc 03 00 00 1a       	mov    $0x1a000003,%esp
 3af:	01 55 09             	add    %edx,0x9(%rbp)
 3b2:	03 d4                	add    %esp,%edx
 3b4:	22 00                	and    (%rax),%al
 3b6:	00 00                	add    %al,(%rax)
 3b8:	00 00                	add    %al,(%rax)
 3ba:	00 00                	add    %al,(%rax)
 3bc:	1b 92 13 00 00 00    	sbb    0x13(%rdx),%edx
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 2b                	add    %ch,(%rbx)
 3c6:	06                   	(bad)  
 3c7:	00 00                	add    %al,(%rax)
 3c9:	1a 01                	sbb    (%rcx),%al
 3cb:	55                   	push   %rbp
 3cc:	01 38                	add    %edi,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	16                   	(bad)  
 3d1:	92                   	xchg   %eax,%edx
 3d2:	13 00                	adc    (%rax),%eax
 3d4:	00 00                	add    %al,(%rax)
 3d6:	00 00                	add    %al,(%rax)
 3d8:	00 1e                	add    %bl,(%rsi)
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 00                	add    %al,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	00 29                	add    %ch,(%rcx)
 3e2:	04 00                	add    $0x0,%al
 3e4:	00 17                	add    %dl,(%rdi)
 3e6:	4c 01 00             	add    %r8,(%rax)
 3e9:	00 07                	add    %al,(%rdi)
 3eb:	00 f6                	add    %dh,%dh
 3ed:	03 00                	add    (%rax),%eax
 3ef:	00 18                	add    %bl,(%rax)
 3f1:	62                   	(bad)  
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
 3f6:	19 a6 13 00 00 00    	sbb    %esp,0x13(%rsi)
 3fc:	00 00                	add    %al,(%rax)
 3fe:	00 1f                	add    %bl,(%rdi)
 400:	06                   	(bad)  
 401:	00 00                	add    %al,(%rax)
 403:	15 04 00 00 1a       	adc    $0x1a000004,%eax
 408:	01 55 09             	add    %edx,0x9(%rbp)
 40b:	03 f1                	add    %ecx,%esi
 40d:	22 00                	and    (%rax),%al
 40f:	00 00                	add    %al,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 00                	add    %al,(%rax)
 415:	1b b0 13 00 00 00    	sbb    0x13(%rax),%esi
 41b:	00 00                	add    %al,(%rax)
 41d:	00 2b                	add    %ch,(%rbx)
 41f:	06                   	(bad)  
 420:	00 00                	add    %al,(%rax)
 422:	1a 01                	sbb    (%rcx),%al
 424:	55                   	push   %rbp
 425:	01 38                	add    %edi,(%rax)
 427:	00 00                	add    %al,(%rax)
 429:	19 86 12 00 00 00    	sbb    %eax,0x12(%rsi)
 42f:	00 00                	add    %al,(%rax)
 431:	00 36                	add    %dh,(%rsi)
 433:	06                   	(bad)  
 434:	00 00                	add    %al,(%rax)
 436:	48 04 00             	rex.W add $0x0,%al
 439:	00 1a                	add    %bl,(%rdx)
 43b:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 43f:	da 26                	fisubl (%rsi)
 441:	00 00                	add    %al,(%rax)
 443:	00 00                	add    %al,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 1c 9b             	add    %bl,(%rbx,%rbx,4)
 44a:	12 00                	adc    (%rax),%al
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	00 42 06             	add    %al,0x6(%rdx)
 453:	00 00                	add    %al,(%rax)
 455:	19 a7 12 00 00 00    	sbb    %esp,0x12(%rdi)
 45b:	00 00                	add    %al,(%rax)
 45d:	00 4d 06             	add    %cl,0x6(%rbp)
 460:	00 00                	add    %al,(%rax)
 462:	74 04                	je     468 <_init-0xa90>
 464:	00 00                	add    %al,(%rax)
 466:	1a 01                	sbb    (%rcx),%al
 468:	55                   	push   %rbp
 469:	09 03                	or     %eax,(%rbx)
 46b:	58                   	pop    %rax
 46c:	23 00                	and    (%rax),%eax
 46e:	00 00                	add    %al,(%rax)
 470:	00 00                	add    %al,(%rax)
 472:	00 00                	add    %al,(%rax)
 474:	19 b3 12 00 00 00    	sbb    %esi,0x12(%rbx)
 47a:	00 00                	add    %al,(%rax)
 47c:	00 4d 06             	add    %cl,0x6(%rbp)
 47f:	00 00                	add    %al,(%rax)
 481:	93                   	xchg   %eax,%ebx
 482:	04 00                	add    $0x0,%al
 484:	00 1a                	add    %bl,(%rdx)
 486:	01 55 09             	add    %edx,0x9(%rbp)
 489:	03 98 23 00 00 00    	add    0x23(%rax),%ebx
 48f:	00 00                	add    %al,(%rax)
 491:	00 00                	add    %al,(%rax)
 493:	1c b8                	sbb    $0xb8,%al
 495:	12 00                	adc    (%rax),%al
 497:	00 00                	add    %al,(%rax)
 499:	00 00                	add    %al,(%rax)
 49b:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 49f:	00 1c c0             	add    %bl,(%rax,%rax,8)
 4a2:	12 00                	adc    (%rax),%al
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	00 67 06             	add    %ah,0x6(%rdi)
 4ab:	00 00                	add    %al,(%rax)
 4ad:	1c c5                	sbb    $0xc5,%al
 4af:	12 00                	adc    (%rax),%al
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 72 06             	add    %dh,0x6(%rdx)
 4b8:	00 00                	add    %al,(%rax)
 4ba:	19 d1                	sbb    %edx,%ecx
 4bc:	12 00                	adc    (%rax),%al
 4be:	00 00                	add    %al,(%rax)
 4c0:	00 00                	add    %al,(%rax)
 4c2:	00 4d 06             	add    %cl,0x6(%rbp)
 4c5:	00 00                	add    %al,(%rax)
 4c7:	d9 04 00             	flds   (%rax,%rax,1)
 4ca:	00 1a                	add    %bl,(%rdx)
 4cc:	01 55 09             	add    %edx,0x9(%rbp)
 4cf:	03 c8                	add    %eax,%ecx
 4d1:	23 00                	and    (%rax),%eax
 4d3:	00 00                	add    %al,(%rax)
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 00                	add    %al,(%rax)
 4d9:	1c d6                	sbb    $0xd6,%al
 4db:	12 00                	adc    (%rax),%al
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 00                	add    %al,(%rax)
 4e1:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 4e5:	00 1c de             	add    %bl,(%rsi,%rbx,8)
 4e8:	12 00                	adc    (%rax),%al
 4ea:	00 00                	add    %al,(%rax)
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 7d 06             	add    %bh,0x6(%rbp)
 4f1:	00 00                	add    %al,(%rax)
 4f3:	1c e3                	sbb    $0xe3,%al
 4f5:	12 00                	adc    (%rax),%al
 4f7:	00 00                	add    %al,(%rax)
 4f9:	00 00                	add    %al,(%rax)
 4fb:	00 72 06             	add    %dh,0x6(%rdx)
 4fe:	00 00                	add    %al,(%rax)
 500:	19 ef                	sbb    %ebp,%edi
 502:	12 00                	adc    (%rax),%al
 504:	00 00                	add    %al,(%rax)
 506:	00 00                	add    %al,(%rax)
 508:	00 4d 06             	add    %cl,0x6(%rbp)
 50b:	00 00                	add    %al,(%rax)
 50d:	1f                   	(bad)  
 50e:	05 00 00 1a 01       	add    $0x11a0000,%eax
 513:	55                   	push   %rbp
 514:	09 03                	or     %eax,(%rbx)
 516:	0b 23                	or     (%rbx),%esp
 518:	00 00                	add    %al,(%rax)
 51a:	00 00                	add    %al,(%rax)
 51c:	00 00                	add    %al,(%rax)
 51e:	00 1c f4             	add    %bl,(%rsp,%rsi,8)
 521:	12 00                	adc    (%rax),%al
 523:	00 00                	add    %al,(%rax)
 525:	00 00                	add    %al,(%rax)
 527:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 52b:	00 1c fc             	add    %bl,(%rsp,%rdi,8)
 52e:	12 00                	adc    (%rax),%al
 530:	00 00                	add    %al,(%rax)
 532:	00 00                	add    %al,(%rax)
 534:	00 88 06 00 00 1c    	add    %cl,0x1c000006(%rax)
 53a:	01 13                	add    %edx,(%rbx)
 53c:	00 00                	add    %al,(%rax)
 53e:	00 00                	add    %al,(%rax)
 540:	00 00                	add    %al,(%rax)
 542:	72 06                	jb     54a <_init-0x9ae>
 544:	00 00                	add    %al,(%rax)
 546:	19 0d 13 00 00 00    	sbb    %ecx,0x13(%rip)        # 55f <_init-0x999>
 54c:	00 00                	add    %al,(%rax)
 54e:	00 4d 06             	add    %cl,0x6(%rbp)
 551:	00 00                	add    %al,(%rax)
 553:	65 05 00 00 1a 01    	gs add $0x11a0000,%eax
 559:	55                   	push   %rbp
 55a:	09 03                	or     %eax,(%rbx)
 55c:	29 23                	sub    %esp,(%rbx)
 55e:	00 00                	add    %al,(%rax)
 560:	00 00                	add    %al,(%rax)
 562:	00 00                	add    %al,(%rax)
 564:	00 1c 12             	add    %bl,(%rdx,%rdx,1)
 567:	13 00                	adc    (%rax),%eax
 569:	00 00                	add    %al,(%rax)
 56b:	00 00                	add    %al,(%rax)
 56d:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 571:	00 1c 1a             	add    %bl,(%rdx,%rbx,1)
 574:	13 00                	adc    (%rax),%eax
 576:	00 00                	add    %al,(%rax)
 578:	00 00                	add    %al,(%rax)
 57a:	00 93 06 00 00 1c    	add    %dl,0x1c000006(%rbx)
 580:	1f                   	(bad)  
 581:	13 00                	adc    (%rax),%eax
 583:	00 00                	add    %al,(%rax)
 585:	00 00                	add    %al,(%rax)
 587:	00 72 06             	add    %dh,0x6(%rdx)
 58a:	00 00                	add    %al,(%rax)
 58c:	19 2b                	sbb    %ebp,(%rbx)
 58e:	13 00                	adc    (%rax),%eax
 590:	00 00                	add    %al,(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 4d 06             	add    %cl,0x6(%rbp)
 597:	00 00                	add    %al,(%rax)
 599:	ab                   	stos   %eax,%es:(%rdi)
 59a:	05 00 00 1a 01       	add    $0x11a0000,%eax
 59f:	55                   	push   %rbp
 5a0:	09 03                	or     %eax,(%rbx)
 5a2:	f8                   	clc    
 5a3:	23 00                	and    (%rax),%eax
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 00                	add    %al,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	1c 30                	sbb    $0x30,%al
 5ad:	13 00                	adc    (%rax),%eax
 5af:	00 00                	add    %al,(%rax)
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 5b7:	00 1c 38             	add    %bl,(%rax,%rdi,1)
 5ba:	13 00                	adc    (%rax),%eax
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	00 9e 06 00 00 1c    	add    %bl,0x1c000006(%rsi)
 5c6:	3d 13 00 00 00       	cmp    $0x13,%eax
 5cb:	00 00                	add    %al,(%rax)
 5cd:	00 72 06             	add    %dh,0x6(%rdx)
 5d0:	00 00                	add    %al,(%rax)
 5d2:	19 49 13             	sbb    %ecx,0x13(%rcx)
 5d5:	00 00                	add    %al,(%rax)
 5d7:	00 00                	add    %al,(%rax)
 5d9:	00 00                	add    %al,(%rax)
 5db:	4d 06                	rex.WRB (bad) 
 5dd:	00 00                	add    %al,(%rax)
 5df:	f1                   	icebp  
 5e0:	05 00 00 1a 01       	add    $0x11a0000,%eax
 5e5:	55                   	push   %rbp
 5e6:	09 03                	or     %eax,(%rbx)
 5e8:	38 23                	cmp    %ah,(%rbx)
 5ea:	00 00                	add    %al,(%rax)
 5ec:	00 00                	add    %al,(%rax)
 5ee:	00 00                	add    %al,(%rax)
 5f0:	00 1c 4e             	add    %bl,(%rsi,%rcx,2)
 5f3:	13 00                	adc    (%rax),%eax
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 00                	add    %al,(%rax)
 5f9:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 5fd:	00 1c 56             	add    %bl,(%rsi,%rdx,2)
 600:	13 00                	adc    (%rax),%eax
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 a9 06 00 00 1c    	add    %ch,0x1c000006(%rcx)
 60c:	5b                   	pop    %rbx
 60d:	13 00                	adc    (%rax),%eax
 60f:	00 00                	add    %al,(%rax)
 611:	00 00                	add    %al,(%rax)
 613:	00 72 06             	add    %dh,0x6(%rdx)
 616:	00 00                	add    %al,(%rax)
 618:	00 06                	add    %al,(%rsi)
 61a:	08 8f 00 00 00 1d    	or     %cl,0x1d000000(%rdi)
 620:	11 01                	adc    %eax,(%rcx)
 622:	00 00                	add    %al,(%rax)
 624:	11 01                	adc    %eax,(%rcx)
 626:	00 00                	add    %al,(%rax)
 628:	04 6c                	add    $0x6c,%al
 62a:	01 1e                	add    %ebx,(%rsi)
 62c:	4c 01 00             	add    %r8,(%rax)
 62f:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
 633:	00 07                	add    %al,(%rdi)
 635:	00 1d 0c 00 00 00    	add    %bl,0xc(%rip)        # 647 <_init-0x8b1>
 63b:	0c 00                	or     $0x0,%al
 63d:	00 00                	add    %al,(%rax)
 63f:	04 12                	add    $0x12,%al
 641:	01 1e                	add    %ebx,(%rsi)
 643:	4e 02 00             	rex.WRX add (%rax),%r8b
 646:	00 4e 02             	add    %cl,0x2(%rsi)
 649:	00 00                	add    %al,(%rax)
 64b:	08 09                	or     %cl,(%rcx)
 64d:	1f                   	(bad)  
 64e:	28 00                	sub    %al,(%rax)
 650:	00 00                	add    %al,(%rax)
 652:	1e                   	(bad)  
 653:	00 00                	add    %al,(%rax)
 655:	00 07                	add    %al,(%rdi)
 657:	00 28                	add    %ch,(%rax)
 659:	00 00                	add    %al,(%rax)
 65b:	00 1e                	add    %bl,(%rsi)
 65d:	d3 00                	roll   %cl,(%rax)
 65f:	00 00                	add    %al,(%rax)
 661:	d3 00                	roll   %cl,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	08 08                	or     %cl,(%rax)
 667:	1e                   	(bad)  
 668:	dd 00                	fldl   (%rax)
 66a:	00 00                	add    %al,(%rax)
 66c:	dd 00                	fldl   (%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	09 04 1e             	or     %eax,(%rsi,%rbx,1)
 673:	03 01                	add    (%rcx),%eax
 675:	00 00                	add    %al,(%rax)
 677:	03 01                	add    (%rcx),%eax
 679:	00 00                	add    %al,(%rax)
 67b:	08 0b                	or     %cl,(%rbx)
 67d:	1e                   	(bad)  
 67e:	0f 02 00             	lar    (%rax),%eax
 681:	00 0f                	add    %cl,(%rdi)
 683:	02 00                	add    (%rax),%al
 685:	00 09                	add    %cl,(%rcx)
 687:	05 1e 17 02 00       	add    $0x2171e,%eax
 68c:	00 17                	add    %dl,(%rdi)
 68e:	02 00                	add    (%rax),%al
 690:	00 09                	add    %cl,(%rcx)
 692:	06                   	(bad)  
 693:	1e                   	(bad)  
 694:	ec                   	in     (%dx),%al
 695:	00 00                	add    %al,(%rax)
 697:	00 ec                	add    %ch,%ah
 699:	00 00                	add    %al,(%rax)
 69b:	00 09                	add    %cl,(%rcx)
 69d:	07                   	(bad)  
 69e:	1e                   	(bad)  
 69f:	2d 02 00 00 2d       	sub    $0x2d000002,%eax
 6a4:	02 00                	add    (%rax),%al
 6a6:	00 09                	add    %cl,(%rcx)
 6a8:	08 1e                	or     %bl,(%rsi)
 6aa:	c1 02 00             	roll   $0x0,(%rdx)
 6ad:	00 c1                	add    %al,%cl
 6af:	02 00                	add    (%rax),%al
 6b1:	00 09                	add    %cl,(%rcx)
 6b3:	09 00                	or     %eax,(%rax)

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2eac466>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 16                	add    (%rsi),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	49 13 00             	adc    (%r8),%rax
  1f:	00 03                	add    %al,(%rbx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%rbx),%ecx
  25:	3e 0b 03             	or     %ds:(%rbx),%eax
  28:	0e                   	(bad)  
  29:	00 00                	add    %al,(%rax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%rbx)
  2f:	0b 3e                	or     (%rsi),%edi
  31:	0b 03                	or     (%rbx),%eax
  33:	08 00                	or     %al,(%rax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaeab19a>
  3b:	00 00                	add    %al,(%rax)
  3d:	06                   	(bad)  
  3e:	0f 00 0b             	str    (%rbx)
  41:	0b 49 13             	or     0x13(%rcx),%ecx
  44:	00 00                	add    %al,(%rax)
  46:	07                   	(bad)  
  47:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
  4b:	00 00                	add    %al,(%rax)
  4d:	08 13                	or     %dl,(%rbx)
  4f:	01 03                	add    %eax,(%rbx)
  51:	0e                   	(bad)  
  52:	0b 0b                	or     (%rbx),%ecx
  54:	3a 0b                	cmp    (%rbx),%cl
  56:	3b 0b                	cmp    (%rbx),%ecx
  58:	01 13                	add    %edx,(%rbx)
  5a:	00 00                	add    %al,(%rax)
  5c:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0362 <_end+0x39edb4b2>
  62:	0b 3b                	or     (%rbx),%edi
  64:	0b 49 13             	or     0x13(%rcx),%ecx
  67:	38 0b                	cmp    %cl,(%rbx)
  69:	00 00                	add    %al,(%rax)
  6b:	0a 0d 00 03 0e 3a    	or     0x3a0e0300(%rip),%cl        # 3a0e0371 <_end+0x39edb4c1>
  71:	0b 3b                	or     (%rbx),%edi
  73:	05 49 13 38 0b       	add    $0xb381349,%eax
  78:	00 00                	add    %al,(%rax)
  7a:	0b 16                	or     (%rsi),%edx
  7c:	00 03                	add    %al,(%rbx)
  7e:	0e                   	(bad)  
  7f:	3a 0b                	cmp    (%rbx),%cl
  81:	3b 0b                	cmp    (%rbx),%ecx
  83:	00 00                	add    %al,(%rax)
  85:	0c 01                	or     $0x1,%al
  87:	01 49 13             	add    %ecx,0x13(%rcx)
  8a:	01 13                	add    %edx,(%rbx)
  8c:	00 00                	add    %al,(%rax)
  8e:	0d 21 00 49 13       	or     $0x13490021,%eax
  93:	2f                   	(bad)  
  94:	0b 00                	or     (%rax),%eax
  96:	00 0e                	add    %cl,(%rsi)
  98:	13 00                	adc    (%rax),%eax
  9a:	03 0e                	add    (%rsi),%ecx
  9c:	3c 19                	cmp    $0x19,%al
  9e:	00 00                	add    %al,(%rax)
  a0:	0f 34                	sysenter 
  a2:	00 03                	add    %al,(%rbx)
  a4:	0e                   	(bad)  
  a5:	3a 0b                	cmp    (%rbx),%cl
  a7:	3b 05 49 13 3f 19    	cmp    0x193f1349(%rip),%eax        # 193f13f6 <_end+0x191ec546>
  ad:	3c 19                	cmp    $0x19,%al
  af:	00 00                	add    %al,(%rax)
  b1:	10 34 00             	adc    %dh,(%rax,%rax,1)
  b4:	03 0e                	add    (%rsi),%ecx
  b6:	3a 0b                	cmp    (%rbx),%cl
  b8:	3b 0b                	cmp    (%rbx),%ecx
  ba:	49 13 3f             	adc    (%r15),%rdi
  bd:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  c0:	00 00                	add    %al,(%rax)
  c2:	11 21                	adc    %esp,(%rcx)
  c4:	00 00                	add    %al,(%rax)
  c6:	00 12                	add    %dl,(%rdx)
  c8:	34 00                	xor    $0x0,%al
  ca:	03 0e                	add    (%rsi),%ecx
  cc:	3a 0b                	cmp    (%rbx),%cl
  ce:	3b 0b                	cmp    (%rbx),%ecx
  d0:	49 13 3f             	adc    (%r15),%rdi
  d3:	19 02                	sbb    %eax,(%rdx)
  d5:	18 00                	sbb    %al,(%rax)
  d7:	00 13                	add    %dl,(%rbx)
  d9:	2e 01 3f             	add    %edi,%cs:(%rdi)
  dc:	19 03                	sbb    %eax,(%rbx)
  de:	0e                   	(bad)  
  df:	3a 0b                	cmp    (%rbx),%cl
  e1:	3b 0b                	cmp    (%rbx),%ecx
  e3:	27                   	(bad)  
  e4:	19 49 13             	sbb    %ecx,0x13(%rcx)
  e7:	11 01                	adc    %eax,(%rcx)
  e9:	12 07                	adc    (%rdi),%al
  eb:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  f2:	00 00                	add    %al,(%rax)
  f4:	14 05                	adc    $0x5,%al
  f6:	00 03                	add    %al,(%rbx)
  f8:	0e                   	(bad)  
  f9:	3a 0b                	cmp    (%rbx),%cl
  fb:	3b 0b                	cmp    (%rbx),%ecx
  fd:	49 13 02             	adc    (%r10),%rax
 100:	17                   	(bad)  
 101:	00 00                	add    %al,(%rax)
 103:	15 34 00 03 0e       	adc    $0xe030034,%eax
 108:	3a 0b                	cmp    (%rbx),%cl
 10a:	3b 0b                	cmp    (%rbx),%ecx
 10c:	49 13 02             	adc    (%r10),%rax
 10f:	17                   	(bad)  
 110:	00 00                	add    %al,(%rax)
 112:	16                   	(bad)  
 113:	0b 01                	or     (%rcx),%eax
 115:	11 01                	adc    %eax,(%rcx)
 117:	12 07                	adc    (%rdi),%al
 119:	01 13                	add    %edx,(%rbx)
 11b:	00 00                	add    %al,(%rax)
 11d:	17                   	(bad)  
 11e:	2e 01 3f             	add    %edi,%cs:(%rdi)
 121:	19 03                	sbb    %eax,(%rbx)
 123:	0e                   	(bad)  
 124:	3a 0b                	cmp    (%rbx),%cl
 126:	3b 0b                	cmp    (%rbx),%ecx
 128:	27                   	(bad)  
 129:	19 87 01 19 3c 19    	sbb    %eax,0x193c1901(%rdi)
 12f:	01 13                	add    %edx,(%rbx)
 131:	00 00                	add    %al,(%rax)
 133:	18 05 00 49 13 00    	sbb    %al,0x134900(%rip)        # 134a39 <__FRAME_END__+0x131c09>
 139:	00 19                	add    %bl,(%rcx)
 13b:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 141:	31 13                	xor    %edx,(%rbx)
 143:	01 13                	add    %edx,(%rbx)
 145:	00 00                	add    %al,(%rax)
 147:	1a 8a 82 01 00 02    	sbb    0x2000182(%rdx),%cl
 14d:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 153:	1b 89 82 01 01 11    	sbb    0x11010182(%rcx),%ecx
 159:	01 31                	add    %esi,(%rcx)
 15b:	13 00                	adc    (%rax),%eax
 15d:	00 1c 89             	add    %bl,(%rcx,%rcx,4)
 160:	82                   	(bad)  
 161:	01 00                	add    %eax,(%rax)
 163:	11 01                	adc    %eax,(%rcx)
 165:	31 13                	xor    %edx,(%rbx)
 167:	00 00                	add    %al,(%rax)
 169:	1d 2e 00 3f 19       	sbb    $0x193f002e,%eax
 16e:	3c 19                	cmp    $0x19,%al
 170:	6e                   	outsb  %ds:(%rsi),(%dx)
 171:	0e                   	(bad)  
 172:	03 0e                	add    (%rsi),%ecx
 174:	3a 0b                	cmp    (%rbx),%cl
 176:	3b 05 00 00 1e 2e    	cmp    0x2e1e0000(%rip),%eax        # 2e1e017c <_end+0x2dfdb2cc>
 17c:	00 3f                	add    %bh,(%rdi)
 17e:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 181:	6e                   	outsb  %ds:(%rsi),(%dx)
 182:	0e                   	(bad)  
 183:	03 0e                	add    (%rsi),%ecx
 185:	3a 0b                	cmp    (%rbx),%cl
 187:	3b 0b                	cmp    (%rbx),%ecx
 189:	00 00                	add    %al,(%rax)
 18b:	1f                   	(bad)  
 18c:	2e 00 3f             	add    %bh,%cs:(%rdi)
 18f:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 192:	6e                   	outsb  %ds:(%rsi),(%dx)
 193:	0e                   	(bad)  
 194:	03 0e                	add    (%rsi),%ecx
 196:	3a 0b                	cmp    (%rbx),%cl
 198:	3b 0b                	cmp    (%rbx),%ecx
 19a:	6e                   	outsb  %ds:(%rsi),(%dx)
 19b:	0e                   	(bad)  
 19c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	21 01                	and    %eax,(%rcx)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	da 00                	fiaddl (%rax)
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0xe67>
  1e:	72 2f                	jb     4f <_init-0xea9>
  20:	6c                   	insb   (%dx),%es:(%rdi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  28:	78 38                	js     62 <_init-0xe96>
  2a:	36 5f                	ss pop %rdi
  2c:	36 34 2d             	ss xor $0x2d,%al
  2f:	6c                   	insb   (%dx),%es:(%rdi)
  30:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  37:	75 2f                	jne    68 <_init-0xe90>
  39:	36 2f                	ss (bad) 
  3b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  42:	00 2f                	add    %ch,(%rdi)
  44:	75 73                	jne    b9 <_init-0xe3f>
  46:	72 2f                	jb     77 <_init-0xe81>
  48:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  4f:	2f                   	(bad)  
  50:	78 38                	js     8a <_init-0xe6e>
  52:	36 5f                	ss pop %rdi
  54:	36 34 2d             	ss xor $0x2d,%al
  57:	6c                   	insb   (%dx),%es:(%rdi)
  58:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  5f:	75 2f                	jne    90 <_init-0xe68>
  61:	62                   	(bad)  
  62:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  69:	72 
  6a:	2f                   	(bad)  
  6b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  72:	00 00                	add    %al,(%rax)
  74:	62                   	(bad)  
  75:	6f                   	outsl  %ds:(%rsi),(%dx)
  76:	6d                   	insl   (%dx),%es:(%rdi)
  77:	62                   	(bad)  
  78:	2e 63 00             	movslq %cs:(%rax),%eax
  7b:	00 00                	add    %al,(%rax)
  7d:	00 73 74             	add    %dh,0x74(%rbx)
  80:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
  87:	01 
  88:	00 00                	add    %al,(%rax)
  8a:	74 79                	je     105 <_init-0xdf3>
  8c:	70 65                	jo     f3 <_init-0xe05>
  8e:	73 2e                	jae    be <_init-0xe3a>
  90:	68 00 02 00 00       	pushq  $0x200
  95:	73 74                	jae    10b <_init-0xded>
  97:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%rdi),%ebp
  9e:	00 
  9f:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  a3:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%rdi),%ebp
  aa:	00 73 79             	add    %dh,0x79(%rbx)
  ad:	73 5f                	jae    10e <_init-0xdea>
  af:	65 72 72             	gs jb  124 <_init-0xdd4>
  b2:	6c                   	insb   (%dx),%es:(%rdi)
  b3:	69 73 74 2e 68 00 02 	imul   $0x200682e,0x74(%rbx),%esi
  ba:	00 00                	add    %al,(%rax)
  bc:	3c 62                	cmp    $0x62,%al
  be:	75 69                	jne    129 <_init-0xdcf>
  c0:	6c                   	insb   (%dx),%es:(%rdi)
  c1:	74 2d                	je     f0 <_init-0xe08>
  c3:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
  ca:	73 75                	jae    141 <_init-0xdb7>
  cc:	70 70                	jo     13e <_init-0xdba>
  ce:	6f                   	outsl  %ds:(%rsi),(%dx)
  cf:	72 74                	jb     145 <_init-0xdb3>
  d1:	2e 68 00 00 00 00    	cs pushq $0x0
  d7:	70 68                	jo     141 <_init-0xdb7>
  d9:	61                   	(bad)  
  da:	73 65                	jae    141 <_init-0xdb7>
  dc:	73 2e                	jae    10c <_init-0xdec>
  de:	68 00 00 00 00       	pushq  $0x0
  e3:	00 00                	add    %al,(%rax)
  e5:	09 02                	or     %eax,(%rdx)
  e7:	60                   	(bad)  
  e8:	12 00                	adc    (%rax),%al
  ea:	00 00                	add    %al,(%rax)
  ec:	00 00                	add    %al,(%rax)
  ee:	00 03                	add    %al,(%rbx)
  f0:	23 01                	and    (%rcx),%eax
  f2:	28 c2                	sub    %al,%dl
  f4:	91                   	xchg   %eax,%ecx
  f5:	03 0d 08 e4 5a bb    	add    -0x44a51bf8(%rip),%ecx        # ffffffffbb5ae503 <_end+0xffffffffbb3a9653>
  fb:	bd 59 83 5a be       	mov    $0xbe5a8359,%ebp
 100:	59                   	pop    %rcx
 101:	83 59 be 59          	sbbl   $0x59,-0x42(%rcx)
 105:	83 59 bd 59          	sbbl   $0x59,-0x43(%rcx)
 109:	83 59 bd 59          	sbbl   $0x59,-0x43(%rcx)
 10d:	83 59 be 59          	sbbl   $0x59,-0x42(%rcx)
 111:	83 5e 03 bb          	sbbl   $0xffffffbb,0x3(%rsi)
 115:	7f 74                	jg     18b <_init-0xd6d>
 117:	03 09                	add    (%rcx),%ecx
 119:	08 2e                	or     %ch,(%rsi)
 11b:	08 2f                	or     %ch,(%rdi)
 11d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 11e:	08 3d 02 0a 00 01    	or     %bh,0x1000a02(%rip)        # 1000b26 <_end+0xdfbc76>
 124:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    %rdi
   1:	49                   	rex.WB
   2:	4f 5f                	rex.WRXB pop %r15
   4:	62                   	(bad)  
   5:	75 66                	jne    6d <_init-0xe8b>
   7:	5f                   	pop    %rdi
   8:	65 6e                	outsb  %gs:(%rsi),(%dx)
   a:	64 00 66 6f          	add    %ah,%fs:0x6f(%rsi)
   e:	70 65                	jo     75 <_init-0xe83>
  10:	6e                   	outsb  %ds:(%rsi),(%dx)
  11:	00 5f 6f             	add    %bl,0x6f(%rdi)
  14:	6c                   	insb   (%dx),%es:(%rdi)
  15:	64 5f                	fs pop %rdi
  17:	6f                   	outsl  %ds:(%rsi),(%dx)
  18:	66 66 73 65          	data16 data16 jae 81 <_init-0xe77>
  1c:	74 00                	je     1e <_init-0xeda>
  1e:	5f                   	pop    %rdi
  1f:	5f                   	pop    %rdi
  20:	62                   	(bad)  
  21:	75 69                	jne    8c <_init-0xe6c>
  23:	6c                   	insb   (%dx),%es:(%rdi)
  24:	74 69                	je     8f <_init-0xe69>
  26:	6e                   	outsb  %ds:(%rsi),(%dx)
  27:	5f                   	pop    %rdi
  28:	70 75                	jo     9f <_init-0xe59>
  2a:	74 73                	je     9f <_init-0xe59>
  2c:	00 73 79             	add    %dh,0x79(%rbx)
  2f:	73 5f                	jae    90 <_init-0xe68>
  31:	6e                   	outsb  %ds:(%rsi),(%dx)
  32:	65 72 72             	gs jb  a7 <_init-0xe51>
  35:	00 5f 49             	add    %bl,0x49(%rdi)
  38:	4f 5f                	rex.WRXB pop %r15
  3a:	73 61                	jae    9d <_init-0xe5b>
  3c:	76 65                	jbe    a3 <_init-0xe55>
  3e:	5f                   	pop    %rdi
  3f:	65 6e                	outsb  %gs:(%rsi),(%dx)
  41:	64 00 73 68          	add    %dh,%fs:0x68(%rbx)
  45:	6f                   	outsl  %ds:(%rsi),(%dx)
  46:	72 74                	jb     bc <_init-0xe3c>
  48:	20 69 6e             	and    %ch,0x6e(%rcx)
  4b:	74 00                	je     4d <_init-0xeab>
  4d:	73 69                	jae    b8 <_init-0xe40>
  4f:	7a 65                	jp     b6 <_init-0xe42>
  51:	5f                   	pop    %rdi
  52:	74 00                	je     54 <_init-0xea4>
  54:	69 6e 70 75 74 00 73 	imul   $0x73007475,0x70(%rsi),%ebp
  5b:	69 7a 65 74 79 70 65 	imul   $0x65707974,0x65(%rdx),%edi
  62:	00 5f 49             	add    %bl,0x49(%rdi)
  65:	4f 5f                	rex.WRXB pop %r15
  67:	77 72                	ja     db <_init-0xe1d>
  69:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
  70:	00 
  71:	62                   	(bad)  
  72:	6f                   	outsl  %ds:(%rsi),(%dx)
  73:	6d                   	insl   (%dx),%es:(%rdi)
  74:	62                   	(bad)  
  75:	2e 63 00             	movslq %cs:(%rax),%eax
  78:	5f                   	pop    %rdi
  79:	49                   	rex.WB
  7a:	4f 5f                	rex.WRXB pop %r15
  7c:	62                   	(bad)  
  7d:	75 66                	jne    e5 <_init-0xe13>
  7f:	5f                   	pop    %rdi
  80:	62 61                	(bad)  
  82:	73 65                	jae    e9 <_init-0xe0f>
  84:	00 69 6e             	add    %ch,0x6e(%rcx)
  87:	66 69 6c 65 00 5f 6d 	imul   $0x6d5f,0x0(%rbp,%riz,2),%bp
  8e:	61                   	(bad)  
  8f:	72 6b                	jb     fc <_init-0xdfc>
  91:	65 72 73             	gs jb  107 <_init-0xdf1>
  94:	00 5f 49             	add    %bl,0x49(%rdi)
  97:	4f 5f                	rex.WRXB pop %r15
  99:	72 65                	jb     100 <_init-0xdf8>
  9b:	61                   	(bad)  
  9c:	64 5f                	fs pop %rdi
  9e:	65 6e                	outsb  %gs:(%rsi),(%dx)
  a0:	64 00 2f             	add    %ch,%fs:(%rdi)
  a3:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  a8:	73 6a                	jae    114 <_init-0xde4>
  aa:	74 75                	je     121 <_init-0xdd7>
  ac:	2d 69 63 73 2d       	sub    $0x2d736369,%eax
  b1:	73 76                	jae    129 <_init-0xdcf>
  b3:	6e                   	outsb  %ds:(%rsi),(%dx)
  b4:	2f                   	(bad)  
  b5:	61                   	(bad)  
  b6:	72 63                	jb     11b <_init-0xddd>
  b8:	68 76 69 65 2f       	pushq  $0x2f656976
  bd:	53                   	push   %rbx
  be:	45 31 38             	xor    %r15d,(%r8)
  c1:	2d 6c 61 62 32       	sub    $0x3262616c,%eax
  c6:	2f                   	(bad)  
  c7:	62                   	(bad)  
  c8:	6f                   	outsl  %ds:(%rsi),(%dx)
  c9:	6d                   	insl   (%dx),%es:(%rdi)
  ca:	62                   	(bad)  
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	61                   	(bad)  
  cd:	62                   	(bad)  
  ce:	2f                   	(bad)  
  cf:	73 72                	jae    143 <_init-0xdb5>
  d1:	63 00                	movslq (%rax),%eax
  d3:	72 65                	jb     13a <_init-0xdbe>
  d5:	61                   	(bad)  
  d6:	64 5f                	fs pop %rdi
  d8:	6c                   	insb   (%dx),%es:(%rdi)
  d9:	69 6e 65 00 70 68 61 	imul   $0x61687000,0x65(%rsi),%ebp
  e0:	73 65                	jae    147 <_init-0xdb1>
  e2:	5f                   	pop    %rdi
  e3:	31 00                	xor    %eax,(%rax)
  e5:	73 74                	jae    15b <_init-0xd9d>
  e7:	64 65 72 72          	fs gs jb 15d <_init-0xd9b>
  eb:	00 70 68             	add    %dh,0x68(%rax)
  ee:	61                   	(bad)  
  ef:	73 65                	jae    156 <_init-0xda2>
  f1:	5f                   	pop    %rdi
  f2:	34 00                	xor    $0x0,%al
  f4:	5f                   	pop    %rdi
  f5:	6c                   	insb   (%dx),%es:(%rdi)
  f6:	6f                   	outsl  %ds:(%rsi),(%dx)
  f7:	63 6b 00             	movslq 0x0(%rbx),%ebp
  fa:	6c                   	insb   (%dx),%es:(%rdi)
  fb:	6f                   	outsl  %ds:(%rsi),(%dx)
  fc:	6e                   	outsb  %ds:(%rsi),(%dx)
  fd:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 101:	74 00                	je     103 <_init-0xdf5>
 103:	70 68                	jo     16d <_init-0xd8b>
 105:	61                   	(bad)  
 106:	73 65                	jae    16d <_init-0xd8b>
 108:	5f                   	pop    %rdi
 109:	64 65 66 75 73       	fs gs data16 jne 181 <_init-0xd77>
 10e:	65 64 00 70 72       	gs add %dh,%fs:0x72(%rax)
 113:	69 6e 74 66 00 5f 63 	imul   $0x635f0066,0x74(%rsi),%ebp
 11a:	75 72                	jne    18e <_init-0xd6a>
 11c:	5f                   	pop    %rdi
 11d:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
 120:	75 6d                	jne    18f <_init-0xd69>
 122:	6e                   	outsb  %ds:(%rsi),(%dx)
 123:	00 5f 49             	add    %bl,0x49(%rdi)
 126:	4f 5f                	rex.WRXB pop %r15
 128:	32 5f 31             	xor    0x31(%rdi),%bl
 12b:	5f                   	pop    %rdi
 12c:	73 74                	jae    1a2 <_init-0xd56>
 12e:	64 65 72 72          	fs gs jb 1a4 <_init-0xd54>
 132:	5f                   	pop    %rdi
 133:	00 5f 49             	add    %bl,0x49(%rdi)
 136:	4f 5f                	rex.WRXB pop %r15
 138:	46                   	rex.RX
 139:	49                   	rex.WB
 13a:	4c                   	rex.WR
 13b:	45 5f                	rex.RB pop %r15
 13d:	70 6c                	jo     1ab <_init-0xd4d>
 13f:	75 73                	jne    1b4 <_init-0xd44>
 141:	00 5f 70             	add    %bl,0x70(%rdi)
 144:	6f                   	outsl  %ds:(%rsi),(%dx)
 145:	73 00                	jae    147 <_init-0xdb1>
 147:	61                   	(bad)  
 148:	72 67                	jb     1b1 <_init-0xd47>
 14a:	76 00                	jbe    14c <_init-0xdac>
 14c:	65 78 69             	gs js  1b8 <_init-0xd40>
 14f:	74 00                	je     151 <_init-0xda7>
 151:	5f                   	pop    %rdi
 152:	73 62                	jae    1b6 <_init-0xd42>
 154:	75 66                	jne    1bc <_init-0xd3c>
 156:	00 5f 49             	add    %bl,0x49(%rdi)
 159:	4f 5f                	rex.WRXB pop %r15
 15b:	46                   	rex.RX
 15c:	49                   	rex.WB
 15d:	4c                   	rex.WR
 15e:	45 00 75 6e          	add    %r14b,0x6e(%r13)
 162:	73 69                	jae    1cd <_init-0xd2b>
 164:	67 6e                	outsb  %ds:(%esi),(%dx)
 166:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 16b:	61                   	(bad)  
 16c:	72 00                	jb     16e <_init-0xd8a>
 16e:	61                   	(bad)  
 16f:	72 67                	jb     1d8 <_init-0xd20>
 171:	63 00                	movslq (%rax),%eax
 173:	5f                   	pop    %rdi
 174:	49                   	rex.WB
 175:	4f 5f                	rex.WRXB pop %r15
 177:	32 5f 31             	xor    0x31(%rdi),%bl
 17a:	5f                   	pop    %rdi
 17b:	73 74                	jae    1f1 <_init-0xd07>
 17d:	64 69 6e 5f 00 5f 49 	imul   $0x4f495f00,%fs:0x5f(%rsi),%ebp
 184:	4f 
 185:	5f                   	pop    %rdi
 186:	6d                   	insl   (%dx),%es:(%rdi)
 187:	61                   	(bad)  
 188:	72 6b                	jb     1f5 <_init-0xd03>
 18a:	65 72 00             	gs jb  18d <_init-0xd6b>
 18d:	5f                   	pop    %rdi
 18e:	73 68                	jae    1f8 <_init-0xd00>
 190:	6f                   	outsl  %ds:(%rsi),(%dx)
 191:	72 74                	jb     207 <_init-0xcf1>
 193:	62                   	(bad)  
 194:	75 66                	jne    1fc <_init-0xcfc>
 196:	00 5f 49             	add    %bl,0x49(%rdi)
 199:	4f 5f                	rex.WRXB pop %r15
 19b:	77 72                	ja     20f <_init-0xce9>
 19d:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 1a4:	65 
 1a5:	00 5f 75             	add    %bl,0x75(%rdi)
 1a8:	6e                   	outsb  %ds:(%rsi),(%dx)
 1a9:	75 73                	jne    21e <_init-0xcda>
 1ab:	65 64 32 00          	gs xor %fs:(%rax),%al
 1af:	5f                   	pop    %rdi
 1b0:	49                   	rex.WB
 1b1:	4f 5f                	rex.WRXB pop %r15
 1b3:	72 65                	jb     21a <_init-0xcde>
 1b5:	61                   	(bad)  
 1b6:	64 5f                	fs pop %rdi
 1b8:	70 74                	jo     22e <_init-0xcca>
 1ba:	72 00                	jb     1bc <_init-0xd3c>
 1bc:	73 68                	jae    226 <_init-0xcd2>
 1be:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bf:	72 74                	jb     235 <_init-0xcc3>
 1c1:	20 75 6e             	and    %dh,0x6e(%rbp)
 1c4:	73 69                	jae    22f <_init-0xcc9>
 1c6:	67 6e                	outsb  %ds:(%esi),(%dx)
 1c8:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 1cd:	74 00                	je     1cf <_init-0xd29>
 1cf:	6d                   	insl   (%dx),%es:(%rdi)
 1d0:	61                   	(bad)  
 1d1:	69 6e 00 5f 6e 65 78 	imul   $0x78656e5f,0x0(%rsi),%ebp
 1d8:	74 00                	je     1da <_init-0xd1e>
 1da:	5f                   	pop    %rdi
 1db:	5f                   	pop    %rdi
 1dc:	70 61                	jo     23f <_init-0xcb9>
 1de:	64 31 00             	xor    %eax,%fs:(%rax)
 1e1:	5f                   	pop    %rdi
 1e2:	5f                   	pop    %rdi
 1e3:	70 61                	jo     246 <_init-0xcb2>
 1e5:	64 32 00             	xor    %fs:(%rax),%al
 1e8:	5f                   	pop    %rdi
 1e9:	5f                   	pop    %rdi
 1ea:	70 61                	jo     24d <_init-0xcab>
 1ec:	64 33 00             	xor    %fs:(%rax),%eax
 1ef:	5f                   	pop    %rdi
 1f0:	5f                   	pop    %rdi
 1f1:	70 61                	jo     254 <_init-0xca4>
 1f3:	64 34 00             	fs xor $0x0,%al
 1f6:	5f                   	pop    %rdi
 1f7:	5f                   	pop    %rdi
 1f8:	70 61                	jo     25b <_init-0xc9d>
 1fa:	64 35 00 6c 6f 6e    	fs xor $0x6e6f6c00,%eax
 200:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 204:	73 69                	jae    26f <_init-0xc89>
 206:	67 6e                	outsb  %ds:(%esi),(%dx)
 208:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 20d:	74 00                	je     20f <_init-0xce9>
 20f:	70 68                	jo     279 <_init-0xc7f>
 211:	61                   	(bad)  
 212:	73 65                	jae    279 <_init-0xc7f>
 214:	5f                   	pop    %rdi
 215:	32 00                	xor    (%rax),%al
 217:	70 68                	jo     281 <_init-0xc77>
 219:	61                   	(bad)  
 21a:	73 65                	jae    281 <_init-0xc77>
 21c:	5f                   	pop    %rdi
 21d:	33 00                	xor    (%rax),%eax
 21f:	5f                   	pop    %rdi
 220:	49                   	rex.WB
 221:	4f 5f                	rex.WRXB pop %r15
 223:	77 72                	ja     297 <_init-0xc61>
 225:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 22c:	00 
 22d:	70 68                	jo     297 <_init-0xc61>
 22f:	61                   	(bad)  
 230:	73 65                	jae    297 <_init-0xc61>
 232:	5f                   	pop    %rdi
 233:	35 00 5f 5f 6f       	xor    $0x6f5f5f00,%eax
 238:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 23d:	74 00                	je     23f <_init-0xcb9>
 23f:	5f                   	pop    %rdi
 240:	5f                   	pop    %rdi
 241:	6f                   	outsl  %ds:(%rsi),(%dx)
 242:	66 66 5f             	data16 pop %di
 245:	74 00                	je     247 <_init-0xcb1>
 247:	5f                   	pop    %rdi
 248:	63 68 61             	movslq 0x61(%rax),%ebp
 24b:	69 6e 00 69 6e 69 74 	imul   $0x74696e69,0x0(%rsi),%ebp
 252:	69 61 6c 69 7a 65 5f 	imul   $0x5f657a69,0x6c(%rcx),%esp
 259:	62                   	(bad)  
 25a:	6f                   	outsl  %ds:(%rsi),(%dx)
 25b:	6d                   	insl   (%dx),%es:(%rdi)
 25c:	62                   	(bad)  
 25d:	00 5f 49             	add    %bl,0x49(%rdi)
 260:	4f 5f                	rex.WRXB pop %r15
 262:	62 61                	(bad)  
 264:	63 6b 75             	movslq 0x75(%rbx),%ebp
 267:	70 5f                	jo     2c8 <_init-0xc30>
 269:	62 61                	(bad)  
 26b:	73 65                	jae    2d2 <_init-0xc26>
 26d:	00 73 74             	add    %dh,0x74(%rbx)
 270:	64 69 6e 00 5f 66 6c 	imul   $0x616c665f,%fs:0x0(%rsi),%ebp
 277:	61 
 278:	67 73 32             	addr32 jae 2ad <_init-0xc4b>
 27b:	00 5f 6d             	add    %bl,0x6d(%rdi)
 27e:	6f                   	outsl  %ds:(%rsi),(%dx)
 27f:	64 65 00 5f 49       	fs add %bl,%gs:0x49(%rdi)
 284:	4f 5f                	rex.WRXB pop %r15
 286:	72 65                	jb     2ed <_init-0xc0b>
 288:	61                   	(bad)  
 289:	64 5f                	fs pop %rdi
 28b:	62 61                	(bad)  
 28d:	73 65                	jae    2f4 <_init-0xc04>
 28f:	00 5f 76             	add    %bl,0x76(%rdi)
 292:	74 61                	je     2f5 <_init-0xc03>
 294:	62                   	(bad)  
 295:	6c                   	insb   (%dx),%es:(%rdi)
 296:	65 5f                	gs pop %rdi
 298:	6f                   	outsl  %ds:(%rsi),(%dx)
 299:	66 66 73 65          	data16 data16 jae 302 <_init-0xbf6>
 29d:	74 00                	je     29f <_init-0xc59>
 29f:	5f                   	pop    %rdi
 2a0:	49                   	rex.WB
 2a1:	4f 5f                	rex.WRXB pop %r15
 2a3:	73 61                	jae    306 <_init-0xbf2>
 2a5:	76 65                	jbe    30c <_init-0xbec>
 2a7:	5f                   	pop    %rdi
 2a8:	62 61                	(bad)  
 2aa:	73 65                	jae    311 <_init-0xbe7>
 2ac:	00 73 79             	add    %dh,0x79(%rbx)
 2af:	73 5f                	jae    310 <_init-0xbe8>
 2b1:	65 72 72             	gs jb  326 <_init-0xbd2>
 2b4:	6c                   	insb   (%dx),%es:(%rdi)
 2b5:	69 73 74 00 5f 66 69 	imul   $0x69665f00,0x74(%rbx),%esi
 2bc:	6c                   	insb   (%dx),%es:(%rdi)
 2bd:	65 6e                	outsb  %gs:(%rsi),(%dx)
 2bf:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c0:	00 70 68             	add    %dh,0x68(%rax)
 2c3:	61                   	(bad)  
 2c4:	73 65                	jae    32b <_init-0xbcd>
 2c6:	5f                   	pop    %rdi
 2c7:	36 00 5f 66          	add    %bl,%ss:0x66(%rdi)
 2cb:	6c                   	insb   (%dx),%es:(%rdi)
 2cc:	61                   	(bad)  
 2cd:	67 73 00             	addr32 jae 2d0 <_init-0xc28>
 2d0:	73 74                	jae    346 <_init-0xbb2>
 2d2:	64 6f                	outsl  %fs:(%rsi),(%dx)
 2d4:	75 74                	jne    34a <_init-0xbae>
 2d6:	00 5f 49             	add    %bl,0x49(%rdi)
 2d9:	4f 5f                	rex.WRXB pop %r15
 2db:	32 5f 31             	xor    0x31(%rdi),%bl
 2de:	5f                   	pop    %rdi
 2df:	73 74                	jae    355 <_init-0xba3>
 2e1:	64 6f                	outsl  %fs:(%rsi),(%dx)
 2e3:	75 74                	jne    359 <_init-0xb9f>
 2e5:	5f                   	pop    %rdi
 2e6:	00 5f 49             	add    %bl,0x49(%rdi)
 2e9:	4f 5f                	rex.WRXB pop %r15
 2eb:	6c                   	insb   (%dx),%es:(%rdi)
 2ec:	6f                   	outsl  %ds:(%rsi),(%dx)
 2ed:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 2f0:	74 00                	je     2f2 <_init-0xc06>
 2f2:	47                   	rex.RXB
 2f3:	4e 55                	rex.WRX push %rbp
 2f5:	20 43 31             	and    %al,0x31(%rbx)
 2f8:	31 20                	xor    %esp,(%rax)
 2fa:	36 2e 33 2e          	ss xor %cs:(%rsi),%ebp
 2fe:	30 20                	xor    %ah,(%rax)
 300:	32 30                	xor    (%rax),%dh
 302:	31 37                	xor    %esi,(%rdi)
 304:	30 35 31 36 20 2d    	xor    %dh,0x2d203631(%rip)        # 2d20393b <_end+0x2cffea8b>
 30a:	6d                   	insl   (%dx),%es:(%rdi)
 30b:	74 75                	je     382 <_init-0xb76>
 30d:	6e                   	outsb  %ds:(%rsi),(%dx)
 30e:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 314:	72 69                	jb     37f <_init-0xb79>
 316:	63 20                	movslq (%rax),%esp
 318:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 31d:	68 3d 78 38 36       	pushq  $0x3638783d
 322:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 327:	67 67 64 62          	addr32 addr32 fs (bad) 
 32b:	20                   	.byte 0x20
 32c:	2d                   	.byte 0x2d
 32d:	4f                   	rex.WRXB
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	1a 00                	sbb    (%rax),%al
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	01 00                	add    %eax,(%rax)
  12:	55                   	push   %rbp
  13:	1a 00                	sbb    (%rax),%al
  15:	00 00                	add    %al,(%rax)
  17:	00 00                	add    %al,(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	02 01                	add    (%rcx),%al
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	04 00                	add    $0x0,%al
  25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  29:	02 01                	add    (%rcx),%al
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 00                	add    %al,(%rax)
  31:	15 01 00 00 00       	adc    $0x1,%eax
  36:	00 00                	add    %al,(%rax)
  38:	00 01                	add    %al,(%rcx)
  3a:	00 55 15             	add    %dl,0x15(%rbp)
  3d:	01 00                	add    %eax,(%rax)
  3f:	00 00                	add    %al,(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	00 32                	add    %dh,(%rdx)
  45:	01 00                	add    %eax,(%rax)
  47:	00 00                	add    %al,(%rax)
  49:	00 00                	add    %al,(%rax)
  4b:	00 04 00             	add    %al,(%rax,%rax,1)
  4e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  52:	32 01                	xor    (%rcx),%al
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	00 00                	add    %al,(%rax)
  5a:	3c 01                	cmp    $0x1,%al
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	00 00                	add    %al,(%rax)
  62:	01 00                	add    %eax,(%rax)
  64:	55                   	push   %rbp
  65:	3c 01                	cmp    $0x1,%al
  67:	00 00                	add    %al,(%rax)
  69:	00 00                	add    %al,(%rax)
  6b:	00 00                	add    %al,(%rax)
  6d:	50                   	push   %rax
  6e:	01 00                	add    %eax,(%rax)
  70:	00 00                	add    %al,(%rax)
  72:	00 00                	add    %al,(%rax)
  74:	00 04 00             	add    %al,(%rax,%rax,1)
  77:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  93:	21 00                	and    %eax,(%rax)
  95:	00 00                	add    %al,(%rax)
  97:	00 00                	add    %al,(%rax)
  99:	00 00                	add    %al,(%rax)
  9b:	01 00                	add    %eax,(%rax)
  9d:	54                   	push   %rsp
  9e:	21 00                	and    %eax,(%rax)
  a0:	00 00                	add    %al,(%rax)
  a2:	00 00                	add    %al,(%rax)
  a4:	00 00                	add    %al,(%rax)
  a6:	36 00 00             	add    %al,%ss:(%rax)
  a9:	00 00                	add    %al,(%rax)
  ab:	00 00                	add    %al,(%rax)
  ad:	00 01                	add    %al,(%rcx)
  af:	00 53 36             	add    %dl,0x36(%rbx)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	00 02                	add    %al,(%rdx)
  ba:	01 00                	add    %eax,(%rax)
  bc:	00 00                	add    %al,(%rax)
  be:	00 00                	add    %al,(%rax)
  c0:	00 04 00             	add    %al,(%rax,%rax,1)
  c3:	f3 01 54 9f 02       	repz add %edx,0x2(%rdi,%rbx,4)
  c8:	01 00                	add    %eax,(%rax)
  ca:	00 00                	add    %al,(%rax)
  cc:	00 00                	add    %al,(%rax)
  ce:	00 15 01 00 00 00    	add    %dl,0x1(%rip)        # d5 <_init-0xe23>
  d4:	00 00                	add    %al,(%rax)
  d6:	00 01                	add    %al,(%rcx)
  d8:	00 54 15 01          	add    %dl,0x1(%rbp,%rdx,1)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	00 00                	add    %al,(%rax)
  e2:	50                   	push   %rax
  e3:	01 00                	add    %eax,(%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	00 00                	add    %al,(%rax)
  e9:	00 01                	add    %al,(%rcx)
  eb:	00 53 00             	add    %dl,0x0(%rbx)
	...
  fa:	00 00                	add    %al,(%rax)
  fc:	00 58 00             	add    %bl,0x0(%rax)
  ff:	00 00                	add    %al,(%rax)
 101:	00 00                	add    %al,(%rax)
 103:	00 00                	add    %al,(%rax)
 105:	5f                   	pop    %rdi
 106:	00 00                	add    %al,(%rax)
 108:	00 00                	add    %al,(%rax)
 10a:	00 00                	add    %al,(%rax)
 10c:	00 01                	add    %al,(%rcx)
 10e:	00 50 76             	add    %dl,0x76(%rax)
 111:	00 00                	add    %al,(%rax)
 113:	00 00                	add    %al,(%rax)
 115:	00 00                	add    %al,(%rax)
 117:	00 7d 00             	add    %bh,0x0(%rbp)
 11a:	00 00                	add    %al,(%rax)
 11c:	00 00                	add    %al,(%rax)
 11e:	00 00                	add    %al,(%rax)
 120:	01 00                	add    %eax,(%rax)
 122:	50                   	push   %rax
 123:	94                   	xchg   %eax,%esp
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	00 00                	add    %al,(%rax)
 12a:	00 9b 00 00 00 00    	add    %bl,0x0(%rbx)
 130:	00 00                	add    %al,(%rax)
 132:	00 01                	add    %al,(%rcx)
 134:	00 50 b2             	add    %dl,-0x4e(%rax)
 137:	00 00                	add    %al,(%rax)
 139:	00 00                	add    %al,(%rax)
 13b:	00 00                	add    %al,(%rax)
 13d:	00 b9 00 00 00 00    	add    %bh,0x0(%rcx)
 143:	00 00                	add    %al,(%rax)
 145:	00 01                	add    %al,(%rcx)
 147:	00 50 d0             	add    %dl,-0x30(%rax)
 14a:	00 00                	add    %al,(%rax)
 14c:	00 00                	add    %al,(%rax)
 14e:	00 00                	add    %al,(%rax)
 150:	00 d7                	add    %dl,%bh
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	00 00                	add    %al,(%rax)
 158:	00 01                	add    %al,(%rcx)
 15a:	00 50 ee             	add    %dl,-0x12(%rax)
 15d:	00 00                	add    %al,(%rax)
 15f:	00 00                	add    %al,(%rax)
 161:	00 00                	add    %al,(%rax)
 163:	00 f5                	add    %dh,%ch
 165:	00 00                	add    %al,(%rax)
 167:	00 00                	add    %al,(%rax)
 169:	00 00                	add    %al,(%rax)
 16b:	00 01                	add    %al,(%rcx)
 16d:	00 50 00             	add    %dl,0x0(%rax)
	...
