
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 44 20 00 	mov    0x20443d(%rip),%rax        # 604ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 02                	je     400bc2 <_init+0x12>
  400bc0:	ff d0                	callq  *%rax
  400bc2:	48 83 c4 08          	add    $0x8,%rsp
  400bc6:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 44 20 00    	pushq  0x204432(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 44 20 00    	jmpq   *0x204434(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 44 20 00    	jmpq   *0x204432(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 44 20 00    	jmpq   *0x20442a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 44 20 00    	jmpq   *0x204422(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 44 20 00    	jmpq   *0x20441a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 44 20 00    	jmpq   *0x204412(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 44 20 00    	jmpq   *0x20440a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 44 20 00    	jmpq   *0x204402(%rip)        # 605048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 43 20 00    	jmpq   *0x2043fa(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 43 20 00    	jmpq   *0x2043f2(%rip)        # 605058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 43 20 00    	jmpq   *0x2043ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 43 20 00    	jmpq   *0x2043e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 43 20 00    	jmpq   *0x2043da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 43 20 00    	jmpq   *0x2043d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <signal@plt>:
  400cb0:	ff 25 ca 43 20 00    	jmpq   *0x2043ca(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <gethostbyname@plt>:
  400cc0:	ff 25 c2 43 20 00    	jmpq   *0x2043c2(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <fprintf@plt>:
  400cd0:	ff 25 ba 43 20 00    	jmpq   *0x2043ba(%rip)        # 605090 <fprintf@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <strtol@plt>:
  400ce0:	ff 25 b2 43 20 00    	jmpq   *0x2043b2(%rip)        # 605098 <strtol@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <memcpy@plt>:
  400cf0:	ff 25 aa 43 20 00    	jmpq   *0x2043aa(%rip)        # 6050a0 <memcpy@GLIBC_2.14>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <time@plt>:
  400d00:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 6050a8 <time@GLIBC_2.2.5>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <random@plt>:
  400d10:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 6050b0 <random@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <_IO_getc@plt>:
  400d20:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 6050b8 <_IO_getc@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <__isoc99_sscanf@plt>:
  400d30:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 6050c0 <__isoc99_sscanf@GLIBC_2.7>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <munmap@plt>:
  400d40:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 6050c8 <munmap@GLIBC_2.2.5>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <bcopy@plt>:
  400d50:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 6050d0 <bcopy@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <fopen@plt>:
  400d60:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 6050d8 <fopen@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <getopt@plt>:
  400d70:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 6050e0 <getopt@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <strtoul@plt>:
  400d80:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 6050e8 <strtoul@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <gethostname@plt>:
  400d90:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <sprintf@plt>:
  400da0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 6050f8 <sprintf@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <exit@plt>:
  400db0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <connect@plt>:
  400dc0:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <socket@plt>:
  400dd0:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605110 <socket@GLIBC_2.2.5>
  400dd6:	68 1f 00 00 00       	pushq  $0x1f
  400ddb:	e9 f0 fd ff ff       	jmpq   400bd0 <.plt>

Disassembly of section .text:

0000000000400de0 <_start>:
  400de0:	31 ed                	xor    %ebp,%ebp
  400de2:	49 89 d1             	mov    %rdx,%r9
  400de5:	5e                   	pop    %rsi
  400de6:	48 89 e2             	mov    %rsp,%rdx
  400de9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ded:	50                   	push   %rax
  400dee:	54                   	push   %rsp
  400def:	49 c7 c0 00 2d 40 00 	mov    $0x402d00,%r8
  400df6:	48 c7 c1 90 2c 40 00 	mov    $0x402c90,%rcx
  400dfd:	48 c7 c7 8d 10 40 00 	mov    $0x40108d,%rdi
  400e04:	ff 15 e6 41 20 00    	callq  *0x2041e6(%rip)        # 604ff0 <__libc_start_main@GLIBC_2.2.5>
  400e0a:	f4                   	hlt    
  400e0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400e10 <deregister_tm_clones>:
  400e10:	b8 97 54 60 00       	mov    $0x605497,%eax
  400e15:	55                   	push   %rbp
  400e16:	48 2d 90 54 60 00    	sub    $0x605490,%rax
  400e1c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e20:	48 89 e5             	mov    %rsp,%rbp
  400e23:	76 1b                	jbe    400e40 <deregister_tm_clones+0x30>
  400e25:	b8 00 00 00 00       	mov    $0x0,%eax
  400e2a:	48 85 c0             	test   %rax,%rax
  400e2d:	74 11                	je     400e40 <deregister_tm_clones+0x30>
  400e2f:	5d                   	pop    %rbp
  400e30:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e35:	ff e0                	jmpq   *%rax
  400e37:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400e3e:	00 00 
  400e40:	5d                   	pop    %rbp
  400e41:	c3                   	retq   
  400e42:	0f 1f 40 00          	nopl   0x0(%rax)
  400e46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400e4d:	00 00 00 

0000000000400e50 <register_tm_clones>:
  400e50:	be 90 54 60 00       	mov    $0x605490,%esi
  400e55:	55                   	push   %rbp
  400e56:	48 81 ee 90 54 60 00 	sub    $0x605490,%rsi
  400e5d:	48 c1 fe 03          	sar    $0x3,%rsi
  400e61:	48 89 e5             	mov    %rsp,%rbp
  400e64:	48 89 f0             	mov    %rsi,%rax
  400e67:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e6b:	48 01 c6             	add    %rax,%rsi
  400e6e:	48 d1 fe             	sar    %rsi
  400e71:	74 15                	je     400e88 <register_tm_clones+0x38>
  400e73:	b8 00 00 00 00       	mov    $0x0,%eax
  400e78:	48 85 c0             	test   %rax,%rax
  400e7b:	74 0b                	je     400e88 <register_tm_clones+0x38>
  400e7d:	5d                   	pop    %rbp
  400e7e:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e83:	ff e0                	jmpq   *%rax
  400e85:	0f 1f 00             	nopl   (%rax)
  400e88:	5d                   	pop    %rbp
  400e89:	c3                   	retq   
  400e8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e90 <__do_global_dtors_aux>:
  400e90:	80 3d 31 46 20 00 00 	cmpb   $0x0,0x204631(%rip)        # 6054c8 <completed.6972>
  400e97:	75 11                	jne    400eaa <__do_global_dtors_aux+0x1a>
  400e99:	55                   	push   %rbp
  400e9a:	48 89 e5             	mov    %rsp,%rbp
  400e9d:	e8 6e ff ff ff       	callq  400e10 <deregister_tm_clones>
  400ea2:	5d                   	pop    %rbp
  400ea3:	c6 05 1e 46 20 00 01 	movb   $0x1,0x20461e(%rip)        # 6054c8 <completed.6972>
  400eaa:	f3 c3                	repz retq 
  400eac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400eb0 <frame_dummy>:
  400eb0:	bf 18 4e 60 00       	mov    $0x604e18,%edi
  400eb5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400eb9:	75 05                	jne    400ec0 <frame_dummy+0x10>
  400ebb:	eb 93                	jmp    400e50 <register_tm_clones>
  400ebd:	0f 1f 00             	nopl   (%rax)
  400ec0:	b8 00 00 00 00       	mov    $0x0,%eax
  400ec5:	48 85 c0             	test   %rax,%rax
  400ec8:	74 f1                	je     400ebb <frame_dummy+0xb>
  400eca:	55                   	push   %rbp
  400ecb:	48 89 e5             	mov    %rsp,%rbp
  400ece:	ff d0                	callq  *%rax
  400ed0:	5d                   	pop    %rbp
  400ed1:	e9 7a ff ff ff       	jmpq   400e50 <register_tm_clones>

0000000000400ed6 <usage>:
  400ed6:	48 83 ec 08          	sub    $0x8,%rsp
  400eda:	48 89 fe             	mov    %rdi,%rsi
  400edd:	83 3d 24 46 20 00 00 	cmpl   $0x0,0x204624(%rip)        # 605508 <is_checker>
  400ee4:	74 4b                	je     400f31 <usage+0x5b>
  400ee6:	48 8d 3d 2b 1e 00 00 	lea    0x1e2b(%rip),%rdi        # 402d18 <_IO_stdin_used+0x8>
  400eed:	b8 00 00 00 00       	mov    $0x0,%eax
  400ef2:	e8 69 fd ff ff       	callq  400c60 <printf@plt>
  400ef7:	48 8d 3d 52 1e 00 00 	lea    0x1e52(%rip),%rdi        # 402d50 <_IO_stdin_used+0x40>
  400efe:	e8 2d fd ff ff       	callq  400c30 <puts@plt>
  400f03:	48 8d 3d 7e 1f 00 00 	lea    0x1f7e(%rip),%rdi        # 402e88 <_IO_stdin_used+0x178>
  400f0a:	e8 21 fd ff ff       	callq  400c30 <puts@plt>
  400f0f:	48 8d 3d 62 1e 00 00 	lea    0x1e62(%rip),%rdi        # 402d78 <_IO_stdin_used+0x68>
  400f16:	e8 15 fd ff ff       	callq  400c30 <puts@plt>
  400f1b:	48 8d 3d 80 1f 00 00 	lea    0x1f80(%rip),%rdi        # 402ea2 <_IO_stdin_used+0x192>
  400f22:	e8 09 fd ff ff       	callq  400c30 <puts@plt>
  400f27:	bf 00 00 00 00       	mov    $0x0,%edi
  400f2c:	e8 7f fe ff ff       	callq  400db0 <exit@plt>
  400f31:	48 8d 3d 86 1f 00 00 	lea    0x1f86(%rip),%rdi        # 402ebe <_IO_stdin_used+0x1ae>
  400f38:	b8 00 00 00 00       	mov    $0x0,%eax
  400f3d:	e8 1e fd ff ff       	callq  400c60 <printf@plt>
  400f42:	48 8d 3d 57 1e 00 00 	lea    0x1e57(%rip),%rdi        # 402da0 <_IO_stdin_used+0x90>
  400f49:	e8 e2 fc ff ff       	callq  400c30 <puts@plt>
  400f4e:	48 8d 3d 73 1e 00 00 	lea    0x1e73(%rip),%rdi        # 402dc8 <_IO_stdin_used+0xb8>
  400f55:	e8 d6 fc ff ff       	callq  400c30 <puts@plt>
  400f5a:	48 8d 3d 7b 1f 00 00 	lea    0x1f7b(%rip),%rdi        # 402edc <_IO_stdin_used+0x1cc>
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	eb bf                	jmp    400f27 <usage+0x51>

0000000000400f68 <initialize_target>:
  400f68:	55                   	push   %rbp
  400f69:	53                   	push   %rbx
  400f6a:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f71:	89 f5                	mov    %esi,%ebp
  400f73:	89 3d 7f 45 20 00    	mov    %edi,0x20457f(%rip)        # 6054f8 <check_level>
  400f79:	8b 3d b1 41 20 00    	mov    0x2041b1(%rip),%edi        # 605130 <target_id>
  400f7f:	e8 e8 1c 00 00       	callq  402c6c <gencookie>
  400f84:	89 05 7a 45 20 00    	mov    %eax,0x20457a(%rip)        # 605504 <cookie>
  400f8a:	89 c7                	mov    %eax,%edi
  400f8c:	e8 db 1c 00 00       	callq  402c6c <gencookie>
  400f91:	89 05 69 45 20 00    	mov    %eax,0x204569(%rip)        # 605500 <authkey>
  400f97:	8b 05 93 41 20 00    	mov    0x204193(%rip),%eax        # 605130 <target_id>
  400f9d:	8d 78 01             	lea    0x1(%rax),%edi
  400fa0:	e8 5b fc ff ff       	callq  400c00 <srandom@plt>
  400fa5:	e8 66 fd ff ff       	callq  400d10 <random@plt>
  400faa:	89 c7                	mov    %eax,%edi
  400fac:	e8 c3 02 00 00       	callq  401274 <scramble>
  400fb1:	89 c3                	mov    %eax,%ebx
  400fb3:	85 ed                	test   %ebp,%ebp
  400fb5:	75 3d                	jne    400ff4 <initialize_target+0x8c>
  400fb7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fbc:	01 d8                	add    %ebx,%eax
  400fbe:	0f b7 c0             	movzwl %ax,%eax
  400fc1:	8d 04 c5 00 01 00 00 	lea    0x100(,%rax,8),%eax
  400fc8:	89 c0                	mov    %eax,%eax
  400fca:	48 89 05 af 44 20 00 	mov    %rax,0x2044af(%rip)        # 605480 <buf_offset>
  400fd1:	c6 05 50 51 20 00 72 	movb   $0x72,0x205150(%rip)        # 606128 <target_prefix>
  400fd8:	83 3d a9 44 20 00 00 	cmpl   $0x0,0x2044a9(%rip)        # 605488 <notify>
  400fdf:	74 09                	je     400fea <initialize_target+0x82>
  400fe1:	83 3d 20 45 20 00 00 	cmpl   $0x0,0x204520(%rip)        # 605508 <is_checker>
  400fe8:	74 22                	je     40100c <initialize_target+0xa4>
  400fea:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  400ff1:	5b                   	pop    %rbx
  400ff2:	5d                   	pop    %rbp
  400ff3:	c3                   	retq   
  400ff4:	bf 00 00 00 00       	mov    $0x0,%edi
  400ff9:	e8 02 fd ff ff       	callq  400d00 <time@plt>
  400ffe:	89 c7                	mov    %eax,%edi
  401000:	e8 fb fb ff ff       	callq  400c00 <srandom@plt>
  401005:	e8 06 fd ff ff       	callq  400d10 <random@plt>
  40100a:	eb b0                	jmp    400fbc <initialize_target+0x54>
  40100c:	48 89 e7             	mov    %rsp,%rdi
  40100f:	be 00 01 00 00       	mov    $0x100,%esi
  401014:	e8 77 fd ff ff       	callq  400d90 <gethostname@plt>
  401019:	89 c3                	mov    %eax,%ebx
  40101b:	85 c0                	test   %eax,%eax
  40101d:	75 24                	jne    401043 <initialize_target+0xdb>
  40101f:	48 63 c3             	movslq %ebx,%rax
  401022:	48 8d 15 37 41 20 00 	lea    0x204137(%rip),%rdx        # 605160 <host_table>
  401029:	48 8b 3c c2          	mov    (%rdx,%rax,8),%rdi
  40102d:	48 85 ff             	test   %rdi,%rdi
  401030:	74 27                	je     401059 <initialize_target+0xf1>
  401032:	48 89 e6             	mov    %rsp,%rsi
  401035:	e8 a6 fb ff ff       	callq  400be0 <strcasecmp@plt>
  40103a:	85 c0                	test   %eax,%eax
  40103c:	74 1b                	je     401059 <initialize_target+0xf1>
  40103e:	83 c3 01             	add    $0x1,%ebx
  401041:	eb dc                	jmp    40101f <initialize_target+0xb7>
  401043:	48 8d 3d ae 1d 00 00 	lea    0x1dae(%rip),%rdi        # 402df8 <_IO_stdin_used+0xe8>
  40104a:	e8 e1 fb ff ff       	callq  400c30 <puts@plt>
  40104f:	bf 08 00 00 00       	mov    $0x8,%edi
  401054:	e8 57 fd ff ff       	callq  400db0 <exit@plt>
  401059:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401060:	00 
  401061:	e8 8b 19 00 00       	callq  4029f1 <init_driver>
  401066:	85 c0                	test   %eax,%eax
  401068:	79 80                	jns    400fea <initialize_target+0x82>
  40106a:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  401071:	00 
  401072:	48 8d 3d b7 1d 00 00 	lea    0x1db7(%rip),%rdi        # 402e30 <_IO_stdin_used+0x120>
  401079:	b8 00 00 00 00       	mov    $0x0,%eax
  40107e:	e8 dd fb ff ff       	callq  400c60 <printf@plt>
  401083:	bf 08 00 00 00       	mov    $0x8,%edi
  401088:	e8 23 fd ff ff       	callq  400db0 <exit@plt>

000000000040108d <main>:
  40108d:	41 56                	push   %r14
  40108f:	41 55                	push   %r13
  401091:	41 54                	push   %r12
  401093:	55                   	push   %rbp
  401094:	53                   	push   %rbx
  401095:	41 89 fc             	mov    %edi,%r12d
  401098:	48 89 f3             	mov    %rsi,%rbx
  40109b:	48 c7 c6 97 1d 40 00 	mov    $0x401d97,%rsi
  4010a2:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010a7:	e8 04 fc ff ff       	callq  400cb0 <signal@plt>
  4010ac:	48 c7 c6 43 1d 40 00 	mov    $0x401d43,%rsi
  4010b3:	bf 07 00 00 00       	mov    $0x7,%edi
  4010b8:	e8 f3 fb ff ff       	callq  400cb0 <signal@plt>
  4010bd:	48 c7 c6 eb 1d 40 00 	mov    $0x401deb,%rsi
  4010c4:	bf 04 00 00 00       	mov    $0x4,%edi
  4010c9:	e8 e2 fb ff ff       	callq  400cb0 <signal@plt>
  4010ce:	83 3d 33 44 20 00 00 	cmpl   $0x0,0x204433(%rip)        # 605508 <is_checker>
  4010d5:	75 58                	jne    40112f <main+0xa2>
  4010d7:	48 8d 2d 17 1e 00 00 	lea    0x1e17(%rip),%rbp        # 402ef5 <_IO_stdin_used+0x1e5>
  4010de:	48 8b 05 bb 43 20 00 	mov    0x2043bb(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  4010e5:	48 89 05 04 44 20 00 	mov    %rax,0x204404(%rip)        # 6054f0 <infile>
  4010ec:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  4010f2:	41 be 00 00 00 00    	mov    $0x0,%r14d
  4010f8:	48 89 ea             	mov    %rbp,%rdx
  4010fb:	48 89 de             	mov    %rbx,%rsi
  4010fe:	44 89 e7             	mov    %r12d,%edi
  401101:	e8 6a fc ff ff       	callq  400d70 <getopt@plt>
  401106:	3c ff                	cmp    $0xff,%al
  401108:	0f 84 f8 00 00 00    	je     401206 <main+0x179>
  40110e:	0f be f0             	movsbl %al,%esi
  401111:	83 e8 61             	sub    $0x61,%eax
  401114:	3c 10                	cmp    $0x10,%al
  401116:	0f 87 d1 00 00 00    	ja     4011ed <main+0x160>
  40111c:	0f b6 c0             	movzbl %al,%eax
  40111f:	48 8d 15 1a 1e 00 00 	lea    0x1e1a(%rip),%rdx        # 402f40 <_IO_stdin_used+0x230>
  401126:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
  40112a:	48 01 d0             	add    %rdx,%rax
  40112d:	ff e0                	jmpq   *%rax
  40112f:	48 c7 c6 3f 1e 40 00 	mov    $0x401e3f,%rsi
  401136:	bf 0e 00 00 00       	mov    $0xe,%edi
  40113b:	e8 70 fb ff ff       	callq  400cb0 <signal@plt>
  401140:	bf 05 00 00 00       	mov    $0x5,%edi
  401145:	e8 36 fb ff ff       	callq  400c80 <alarm@plt>
  40114a:	48 8d 2d a9 1d 00 00 	lea    0x1da9(%rip),%rbp        # 402efa <_IO_stdin_used+0x1ea>
  401151:	eb 8b                	jmp    4010de <main+0x51>
  401153:	48 8b 3b             	mov    (%rbx),%rdi
  401156:	e8 7b fd ff ff       	callq  400ed6 <usage>
  40115b:	48 8d 35 23 20 00 00 	lea    0x2023(%rip),%rsi        # 403185 <_IO_stdin_used+0x475>
  401162:	48 8b 3d 3f 43 20 00 	mov    0x20433f(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401169:	e8 f2 fb ff ff       	callq  400d60 <fopen@plt>
  40116e:	48 89 05 7b 43 20 00 	mov    %rax,0x20437b(%rip)        # 6054f0 <infile>
  401175:	48 85 c0             	test   %rax,%rax
  401178:	0f 85 7a ff ff ff    	jne    4010f8 <main+0x6b>
  40117e:	48 8b 15 23 43 20 00 	mov    0x204323(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401185:	48 8d 35 76 1d 00 00 	lea    0x1d76(%rip),%rsi        # 402f02 <_IO_stdin_used+0x1f2>
  40118c:	48 8b 3d 2d 43 20 00 	mov    0x20432d(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401193:	e8 38 fb ff ff       	callq  400cd0 <fprintf@plt>
  401198:	b8 01 00 00 00       	mov    $0x1,%eax
  40119d:	e9 c9 00 00 00       	jmpq   40126b <main+0x1de>
  4011a2:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a7:	be 00 00 00 00       	mov    $0x0,%esi
  4011ac:	48 8b 3d f5 42 20 00 	mov    0x2042f5(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011b3:	e8 c8 fb ff ff       	callq  400d80 <strtoul@plt>
  4011b8:	41 89 c6             	mov    %eax,%r14d
  4011bb:	e9 38 ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011c0:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c5:	be 00 00 00 00       	mov    $0x0,%esi
  4011ca:	48 8b 3d d7 42 20 00 	mov    0x2042d7(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011d1:	e8 0a fb ff ff       	callq  400ce0 <strtol@plt>
  4011d6:	41 89 c5             	mov    %eax,%r13d
  4011d9:	e9 1a ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011de:	c7 05 a0 42 20 00 00 	movl   $0x0,0x2042a0(%rip)        # 605488 <notify>
  4011e5:	00 00 00 
  4011e8:	e9 0b ff ff ff       	jmpq   4010f8 <main+0x6b>
  4011ed:	48 8d 3d 2b 1d 00 00 	lea    0x1d2b(%rip),%rdi        # 402f1f <_IO_stdin_used+0x20f>
  4011f4:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f9:	e8 62 fa ff ff       	callq  400c60 <printf@plt>
  4011fe:	48 8b 3b             	mov    (%rbx),%rdi
  401201:	e8 d0 fc ff ff       	callq  400ed6 <usage>
  401206:	be 01 00 00 00       	mov    $0x1,%esi
  40120b:	44 89 ef             	mov    %r13d,%edi
  40120e:	e8 55 fd ff ff       	callq  400f68 <initialize_target>
  401213:	83 3d ee 42 20 00 00 	cmpl   $0x0,0x2042ee(%rip)        # 605508 <is_checker>
  40121a:	74 27                	je     401243 <main+0x1b6>
  40121c:	44 3b 35 dd 42 20 00 	cmp    0x2042dd(%rip),%r14d        # 605500 <authkey>
  401223:	74 1e                	je     401243 <main+0x1b6>
  401225:	44 89 f6             	mov    %r14d,%esi
  401228:	48 8d 3d 29 1c 00 00 	lea    0x1c29(%rip),%rdi        # 402e58 <_IO_stdin_used+0x148>
  40122f:	b8 00 00 00 00       	mov    $0x0,%eax
  401234:	e8 27 fa ff ff       	callq  400c60 <printf@plt>
  401239:	b8 00 00 00 00       	mov    $0x0,%eax
  40123e:	e8 d0 07 00 00       	callq  401a13 <check_fail>
  401243:	8b 35 bb 42 20 00    	mov    0x2042bb(%rip),%esi        # 605504 <cookie>
  401249:	48 8d 3d e2 1c 00 00 	lea    0x1ce2(%rip),%rdi        # 402f32 <_IO_stdin_used+0x222>
  401250:	b8 00 00 00 00       	mov    $0x0,%eax
  401255:	e8 06 fa ff ff       	callq  400c60 <printf@plt>
  40125a:	48 8b 3d 1f 42 20 00 	mov    0x20421f(%rip),%rdi        # 605480 <buf_offset>
  401261:	e8 2b 0c 00 00       	callq  401e91 <launch>
  401266:	b8 00 00 00 00       	mov    $0x0,%eax
  40126b:	5b                   	pop    %rbx
  40126c:	5d                   	pop    %rbp
  40126d:	41 5c                	pop    %r12
  40126f:	41 5d                	pop    %r13
  401271:	41 5e                	pop    %r14
  401273:	c3                   	retq   

0000000000401274 <scramble>:
  401274:	b8 00 00 00 00       	mov    $0x0,%eax
  401279:	eb 11                	jmp    40128c <scramble+0x18>
  40127b:	69 d0 d5 af 00 00    	imul   $0xafd5,%eax,%edx
  401281:	01 fa                	add    %edi,%edx
  401283:	89 c1                	mov    %eax,%ecx
  401285:	89 54 8c d0          	mov    %edx,-0x30(%rsp,%rcx,4)
  401289:	83 c0 01             	add    $0x1,%eax
  40128c:	83 f8 09             	cmp    $0x9,%eax
  40128f:	76 ea                	jbe    40127b <scramble+0x7>
  401291:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401295:	69 c0 b0 86 00 00    	imul   $0x86b0,%eax,%eax
  40129b:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40129f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012a3:	69 c0 f5 b2 00 00    	imul   $0xb2f5,%eax,%eax
  4012a9:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012ad:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4012b1:	69 c0 28 83 00 00    	imul   $0x8328,%eax,%eax
  4012b7:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4012bb:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4012bf:	69 c0 f3 0e 00 00    	imul   $0xef3,%eax,%eax
  4012c5:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4012c9:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012cd:	69 c0 cb 34 00 00    	imul   $0x34cb,%eax,%eax
  4012d3:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012d7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4012db:	69 c0 08 6c 00 00    	imul   $0x6c08,%eax,%eax
  4012e1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4012e5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4012e9:	69 c0 61 8a 00 00    	imul   $0x8a61,%eax,%eax
  4012ef:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4012f3:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4012f7:	69 c0 cc c4 00 00    	imul   $0xc4cc,%eax,%eax
  4012fd:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401301:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401305:	69 c0 9a d0 00 00    	imul   $0xd09a,%eax,%eax
  40130b:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40130f:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401313:	69 c0 ec 12 00 00    	imul   $0x12ec,%eax,%eax
  401319:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40131d:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401321:	69 c0 49 c0 00 00    	imul   $0xc049,%eax,%eax
  401327:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40132b:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40132f:	69 c0 c6 7c 00 00    	imul   $0x7cc6,%eax,%eax
  401335:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401339:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40133d:	69 c0 45 c3 00 00    	imul   $0xc345,%eax,%eax
  401343:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401347:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40134b:	69 c0 6f dc 00 00    	imul   $0xdc6f,%eax,%eax
  401351:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401355:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401359:	69 c0 84 0e 00 00    	imul   $0xe84,%eax,%eax
  40135f:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401363:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401367:	69 c0 46 b7 00 00    	imul   $0xb746,%eax,%eax
  40136d:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401371:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401375:	69 c0 49 5a 00 00    	imul   $0x5a49,%eax,%eax
  40137b:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40137f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401383:	69 c0 08 16 00 00    	imul   $0x1608,%eax,%eax
  401389:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40138d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401391:	69 c0 69 7f 00 00    	imul   $0x7f69,%eax,%eax
  401397:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40139b:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40139f:	69 c0 03 6c 00 00    	imul   $0x6c03,%eax,%eax
  4013a5:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4013a9:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013ad:	69 c0 07 72 00 00    	imul   $0x7207,%eax,%eax
  4013b3:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013b7:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013bb:	69 c0 75 1a 00 00    	imul   $0x1a75,%eax,%eax
  4013c1:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013c5:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013c9:	69 c0 8b b4 00 00    	imul   $0xb48b,%eax,%eax
  4013cf:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013d3:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013d7:	69 c0 14 01 00 00    	imul   $0x114,%eax,%eax
  4013dd:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013e1:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4013e5:	69 c0 ba f7 00 00    	imul   $0xf7ba,%eax,%eax
  4013eb:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4013ef:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4013f3:	69 c0 97 09 00 00    	imul   $0x997,%eax,%eax
  4013f9:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4013fd:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401401:	69 c0 f6 e9 00 00    	imul   $0xe9f6,%eax,%eax
  401407:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40140b:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40140f:	69 c0 46 ba 00 00    	imul   $0xba46,%eax,%eax
  401415:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401419:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40141d:	69 c0 e6 0a 00 00    	imul   $0xae6,%eax,%eax
  401423:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401427:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40142b:	69 c0 ac b4 00 00    	imul   $0xb4ac,%eax,%eax
  401431:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401435:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401439:	69 c0 3c 6f 00 00    	imul   $0x6f3c,%eax,%eax
  40143f:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401443:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401447:	69 c0 9f ae 00 00    	imul   $0xae9f,%eax,%eax
  40144d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401451:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401455:	69 c0 2e d6 00 00    	imul   $0xd62e,%eax,%eax
  40145b:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40145f:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401463:	69 c0 f7 a6 00 00    	imul   $0xa6f7,%eax,%eax
  401469:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40146d:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401471:	69 c0 a2 e9 00 00    	imul   $0xe9a2,%eax,%eax
  401477:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  40147b:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40147f:	69 c0 cd 09 00 00    	imul   $0x9cd,%eax,%eax
  401485:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401489:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40148d:	69 c0 06 eb 00 00    	imul   $0xeb06,%eax,%eax
  401493:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401497:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40149b:	69 c0 13 58 00 00    	imul   $0x5813,%eax,%eax
  4014a1:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4014a5:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014a9:	69 c0 83 03 00 00    	imul   $0x383,%eax,%eax
  4014af:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014b3:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4014b7:	69 c0 b6 24 00 00    	imul   $0x24b6,%eax,%eax
  4014bd:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4014c1:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4014c5:	69 c0 28 6d 00 00    	imul   $0x6d28,%eax,%eax
  4014cb:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4014cf:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014d3:	69 c0 41 b3 00 00    	imul   $0xb341,%eax,%eax
  4014d9:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014dd:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014e1:	69 c0 ab b4 00 00    	imul   $0xb4ab,%eax,%eax
  4014e7:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014eb:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014ef:	69 c0 5a 04 00 00    	imul   $0x45a,%eax,%eax
  4014f5:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014f9:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4014fd:	69 c0 3d 04 00 00    	imul   $0x43d,%eax,%eax
  401503:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401507:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  40150b:	69 c0 fc d8 00 00    	imul   $0xd8fc,%eax,%eax
  401511:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401515:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401519:	69 c0 f9 24 00 00    	imul   $0x24f9,%eax,%eax
  40151f:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401523:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401527:	69 c0 ff 3c 00 00    	imul   $0x3cff,%eax,%eax
  40152d:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401531:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401535:	69 c0 42 4c 00 00    	imul   $0x4c42,%eax,%eax
  40153b:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40153f:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401543:	69 c0 c0 50 00 00    	imul   $0x50c0,%eax,%eax
  401549:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40154d:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401551:	69 c0 f0 f6 00 00    	imul   $0xf6f0,%eax,%eax
  401557:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40155b:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40155f:	69 c0 8f 91 00 00    	imul   $0x918f,%eax,%eax
  401565:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401569:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  40156d:	69 c0 cf 7e 00 00    	imul   $0x7ecf,%eax,%eax
  401573:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401577:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40157b:	69 c0 88 81 00 00    	imul   $0x8188,%eax,%eax
  401581:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401585:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401589:	69 c0 c9 42 00 00    	imul   $0x42c9,%eax,%eax
  40158f:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401593:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401597:	69 c0 8f 7d 00 00    	imul   $0x7d8f,%eax,%eax
  40159d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015a1:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015a5:	69 c0 8d d4 00 00    	imul   $0xd48d,%eax,%eax
  4015ab:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015af:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015b3:	69 c0 10 07 00 00    	imul   $0x710,%eax,%eax
  4015b9:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015bd:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4015c1:	69 c0 58 9e 00 00    	imul   $0x9e58,%eax,%eax
  4015c7:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4015cb:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015cf:	69 c0 ca 48 00 00    	imul   $0x48ca,%eax,%eax
  4015d5:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015d9:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015dd:	69 c0 70 c4 00 00    	imul   $0xc470,%eax,%eax
  4015e3:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015e7:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015eb:	69 c0 0f 16 00 00    	imul   $0x160f,%eax,%eax
  4015f1:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4015f5:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4015f9:	69 c0 62 a9 00 00    	imul   $0xa962,%eax,%eax
  4015ff:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401603:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401607:	69 c0 92 e4 00 00    	imul   $0xe492,%eax,%eax
  40160d:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  401611:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401615:	69 c0 04 37 00 00    	imul   $0x3704,%eax,%eax
  40161b:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  40161f:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401623:	69 c0 8a 2b 00 00    	imul   $0x2b8a,%eax,%eax
  401629:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40162d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401631:	69 c0 df 8f 00 00    	imul   $0x8fdf,%eax,%eax
  401637:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40163b:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40163f:	69 c0 eb 0f 00 00    	imul   $0xfeb,%eax,%eax
  401645:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401649:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40164d:	69 c0 bb a6 00 00    	imul   $0xa6bb,%eax,%eax
  401653:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401657:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40165b:	69 c0 00 91 00 00    	imul   $0x9100,%eax,%eax
  401661:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401665:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401669:	69 c0 b3 37 00 00    	imul   $0x37b3,%eax,%eax
  40166f:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401673:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401677:	69 c0 76 99 00 00    	imul   $0x9976,%eax,%eax
  40167d:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401681:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  401685:	69 c0 60 3f 00 00    	imul   $0x3f60,%eax,%eax
  40168b:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  40168f:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401693:	69 c0 78 95 00 00    	imul   $0x9578,%eax,%eax
  401699:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40169d:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4016a1:	69 c0 f0 ab 00 00    	imul   $0xabf0,%eax,%eax
  4016a7:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4016ab:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4016af:	69 c0 4e 80 00 00    	imul   $0x804e,%eax,%eax
  4016b5:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4016b9:	ba 00 00 00 00       	mov    $0x0,%edx
  4016be:	b8 00 00 00 00       	mov    $0x0,%eax
  4016c3:	eb 0b                	jmp    4016d0 <scramble+0x45c>
  4016c5:	89 d1                	mov    %edx,%ecx
  4016c7:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  4016cb:	01 c8                	add    %ecx,%eax
  4016cd:	83 c2 01             	add    $0x1,%edx
  4016d0:	83 fa 09             	cmp    $0x9,%edx
  4016d3:	76 f0                	jbe    4016c5 <scramble+0x451>
  4016d5:	f3 c3                	repz retq 

00000000004016d7 <getbuf>:
  4016d7:	48 83 ec 38          	sub    $0x38,%rsp
  4016db:	48 89 e7             	mov    %rsp,%rdi
  4016de:	e8 63 03 00 00       	callq  401a46 <Gets>
  4016e3:	b8 01 00 00 00       	mov    $0x1,%eax
  4016e8:	48 83 c4 38          	add    $0x38,%rsp
  4016ec:	c3                   	retq   

00000000004016ed <touch1>:
  4016ed:	48 83 ec 08          	sub    $0x8,%rsp
  4016f1:	c7 05 01 3e 20 00 01 	movl   $0x1,0x203e01(%rip)        # 6054fc <vlevel>
  4016f8:	00 00 00 
  4016fb:	48 8d 3d d9 18 00 00 	lea    0x18d9(%rip),%rdi        # 402fdb <_IO_stdin_used+0x2cb>
  401702:	e8 29 f5 ff ff       	callq  400c30 <puts@plt>
  401707:	bf 01 00 00 00       	mov    $0x1,%edi
  40170c:	e8 4c 05 00 00       	callq  401c5d <validate>
  401711:	bf 00 00 00 00       	mov    $0x0,%edi
  401716:	e8 95 f6 ff ff       	callq  400db0 <exit@plt>

000000000040171b <touch2>:
  40171b:	48 83 ec 08          	sub    $0x8,%rsp
  40171f:	89 fe                	mov    %edi,%esi
  401721:	c7 05 d1 3d 20 00 02 	movl   $0x2,0x203dd1(%rip)        # 6054fc <vlevel>
  401728:	00 00 00 
  40172b:	39 3d d3 3d 20 00    	cmp    %edi,0x203dd3(%rip)        # 605504 <cookie>
  401731:	74 25                	je     401758 <touch2+0x3d>
  401733:	48 8d 3d ee 18 00 00 	lea    0x18ee(%rip),%rdi        # 403028 <_IO_stdin_used+0x318>
  40173a:	b8 00 00 00 00       	mov    $0x0,%eax
  40173f:	e8 1c f5 ff ff       	callq  400c60 <printf@plt>
  401744:	bf 02 00 00 00       	mov    $0x2,%edi
  401749:	e8 cd 05 00 00       	callq  401d1b <fail>
  40174e:	bf 00 00 00 00       	mov    $0x0,%edi
  401753:	e8 58 f6 ff ff       	callq  400db0 <exit@plt>
  401758:	48 8d 3d a1 18 00 00 	lea    0x18a1(%rip),%rdi        # 403000 <_IO_stdin_used+0x2f0>
  40175f:	b8 00 00 00 00       	mov    $0x0,%eax
  401764:	e8 f7 f4 ff ff       	callq  400c60 <printf@plt>
  401769:	bf 02 00 00 00       	mov    $0x2,%edi
  40176e:	e8 ea 04 00 00       	callq  401c5d <validate>
  401773:	eb d9                	jmp    40174e <touch2+0x33>

0000000000401775 <hexmatch>:
  401775:	41 54                	push   %r12
  401777:	55                   	push   %rbp
  401778:	53                   	push   %rbx
  401779:	48 83 ec 70          	sub    $0x70,%rsp
  40177d:	89 fd                	mov    %edi,%ebp
  40177f:	48 89 f3             	mov    %rsi,%rbx
  401782:	e8 89 f5 ff ff       	callq  400d10 <random@plt>
  401787:	48 89 c1             	mov    %rax,%rcx
  40178a:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401791:	0a d7 a3 
  401794:	48 f7 ea             	imul   %rdx
  401797:	48 01 ca             	add    %rcx,%rdx
  40179a:	48 c1 fa 06          	sar    $0x6,%rdx
  40179e:	48 89 c8             	mov    %rcx,%rax
  4017a1:	48 c1 f8 3f          	sar    $0x3f,%rax
  4017a5:	48 29 c2             	sub    %rax,%rdx
  4017a8:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  4017ac:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  4017b0:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  4017b7:	00 
  4017b8:	48 29 c1             	sub    %rax,%rcx
  4017bb:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  4017bf:	89 ea                	mov    %ebp,%edx
  4017c1:	48 8d 35 30 18 00 00 	lea    0x1830(%rip),%rsi        # 402ff8 <_IO_stdin_used+0x2e8>
  4017c8:	4c 89 e7             	mov    %r12,%rdi
  4017cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d0:	e8 cb f5 ff ff       	callq  400da0 <sprintf@plt>
  4017d5:	ba 09 00 00 00       	mov    $0x9,%edx
  4017da:	4c 89 e6             	mov    %r12,%rsi
  4017dd:	48 89 df             	mov    %rbx,%rdi
  4017e0:	e8 2b f4 ff ff       	callq  400c10 <strncmp@plt>
  4017e5:	85 c0                	test   %eax,%eax
  4017e7:	0f 94 c0             	sete   %al
  4017ea:	0f b6 c0             	movzbl %al,%eax
  4017ed:	48 83 c4 70          	add    $0x70,%rsp
  4017f1:	5b                   	pop    %rbx
  4017f2:	5d                   	pop    %rbp
  4017f3:	41 5c                	pop    %r12
  4017f5:	c3                   	retq   

00000000004017f6 <touch3>:
  4017f6:	53                   	push   %rbx
  4017f7:	48 89 fb             	mov    %rdi,%rbx
  4017fa:	c7 05 f8 3c 20 00 03 	movl   $0x3,0x203cf8(%rip)        # 6054fc <vlevel>
  401801:	00 00 00 
  401804:	48 89 fe             	mov    %rdi,%rsi
  401807:	8b 3d f7 3c 20 00    	mov    0x203cf7(%rip),%edi        # 605504 <cookie>
  40180d:	e8 63 ff ff ff       	callq  401775 <hexmatch>
  401812:	85 c0                	test   %eax,%eax
  401814:	74 28                	je     40183e <touch3+0x48>
  401816:	48 89 de             	mov    %rbx,%rsi
  401819:	48 8d 3d 30 18 00 00 	lea    0x1830(%rip),%rdi        # 403050 <_IO_stdin_used+0x340>
  401820:	b8 00 00 00 00       	mov    $0x0,%eax
  401825:	e8 36 f4 ff ff       	callq  400c60 <printf@plt>
  40182a:	bf 03 00 00 00       	mov    $0x3,%edi
  40182f:	e8 29 04 00 00       	callq  401c5d <validate>
  401834:	bf 00 00 00 00       	mov    $0x0,%edi
  401839:	e8 72 f5 ff ff       	callq  400db0 <exit@plt>
  40183e:	48 89 de             	mov    %rbx,%rsi
  401841:	48 8d 3d 30 18 00 00 	lea    0x1830(%rip),%rdi        # 403078 <_IO_stdin_used+0x368>
  401848:	b8 00 00 00 00       	mov    $0x0,%eax
  40184d:	e8 0e f4 ff ff       	callq  400c60 <printf@plt>
  401852:	bf 03 00 00 00       	mov    $0x3,%edi
  401857:	e8 bf 04 00 00       	callq  401d1b <fail>
  40185c:	eb d6                	jmp    401834 <touch3+0x3e>

000000000040185e <test>:
  40185e:	48 83 ec 08          	sub    $0x8,%rsp
  401862:	b8 00 00 00 00       	mov    $0x0,%eax
  401867:	e8 6b fe ff ff       	callq  4016d7 <getbuf>
  40186c:	89 c6                	mov    %eax,%esi
  40186e:	48 8d 3d 2b 18 00 00 	lea    0x182b(%rip),%rdi        # 4030a0 <_IO_stdin_used+0x390>
  401875:	b8 00 00 00 00       	mov    $0x0,%eax
  40187a:	e8 e1 f3 ff ff       	callq  400c60 <printf@plt>
  40187f:	48 83 c4 08          	add    $0x8,%rsp
  401883:	c3                   	retq   

0000000000401884 <start_farm>:
  401884:	b8 01 00 00 00       	mov    $0x1,%eax
  401889:	c3                   	retq   

000000000040188a <addval_298>:
  40188a:	8d 87 2d 58 91 90    	lea    -0x6f6ea7d3(%rdi),%eax
  401890:	c3                   	retq   

0000000000401891 <addval_145>:
  401891:	8d 87 50 90 c3 40    	lea    0x40c39050(%rdi),%eax
  401897:	c3                   	retq   

0000000000401898 <setval_242>:
  401898:	c7 07 eb 58 90 90    	movl   $0x909058eb,(%rdi)
  40189e:	c3                   	retq   

000000000040189f <getval_191>:
  40189f:	b8 62 48 89 c7       	mov    $0xc7894862,%eax
  4018a4:	c3                   	retq   

00000000004018a5 <addval_416>:
  4018a5:	8d 87 58 90 90 c3    	lea    -0x3c6f6fa8(%rdi),%eax
  4018ab:	c3                   	retq   

00000000004018ac <getval_105>:
  4018ac:	b8 4c 89 c7 c3       	mov    $0xc3c7894c,%eax
  4018b1:	c3                   	retq   

00000000004018b2 <getval_294>:
  4018b2:	b8 48 48 89 c7       	mov    $0xc7894848,%eax
  4018b7:	c3                   	retq   

00000000004018b8 <getval_490>:
  4018b8:	b8 31 08 89 c7       	mov    $0xc7890831,%eax
  4018bd:	c3                   	retq   

00000000004018be <mid_farm>:
  4018be:	b8 01 00 00 00       	mov    $0x1,%eax
  4018c3:	c3                   	retq   

00000000004018c4 <add_xy>:
  4018c4:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  4018c8:	c3                   	retq   

00000000004018c9 <getval_320>:
  4018c9:	b8 48 c9 e0 c3       	mov    $0xc3e0c948,%eax
  4018ce:	c3                   	retq   

00000000004018cf <setval_168>:
  4018cf:	c7 07 a9 c2 84 db    	movl   $0xdb84c2a9,(%rdi)
  4018d5:	c3                   	retq   

00000000004018d6 <getval_183>:
  4018d6:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  4018db:	c3                   	retq   

00000000004018dc <getval_156>:
  4018dc:	b8 89 d1 90 c1       	mov    $0xc190d189,%eax
  4018e1:	c3                   	retq   

00000000004018e2 <setval_474>:
  4018e2:	c7 07 09 d1 84 d2    	movl   $0xd284d109,(%rdi)
  4018e8:	c3                   	retq   

00000000004018e9 <addval_134>:
  4018e9:	8d 87 09 c2 84 c0    	lea    -0x3f7b3df7(%rdi),%eax
  4018ef:	c3                   	retq   

00000000004018f0 <addval_393>:
  4018f0:	8d 87 89 c2 60 d2    	lea    -0x2d9f3d77(%rdi),%eax
  4018f6:	c3                   	retq   

00000000004018f7 <getval_380>:
  4018f7:	b8 89 c2 38 c9       	mov    $0xc938c289,%eax
  4018fc:	c3                   	retq   

00000000004018fd <addval_112>:
  4018fd:	8d 87 89 ce 18 d2    	lea    -0x2de73177(%rdi),%eax
  401903:	c3                   	retq   

0000000000401904 <getval_175>:
  401904:	b8 89 d1 84 c0       	mov    $0xc084d189,%eax
  401909:	c3                   	retq   

000000000040190a <getval_300>:
  40190a:	b8 bb 89 ce c1       	mov    $0xc1ce89bb,%eax
  40190f:	c3                   	retq   

0000000000401910 <getval_199>:
  401910:	b8 81 d1 08 c9       	mov    $0xc908d181,%eax
  401915:	c3                   	retq   

0000000000401916 <setval_176>:
  401916:	c7 07 89 c2 08 c9    	movl   $0xc908c289,(%rdi)
  40191c:	c3                   	retq   

000000000040191d <setval_354>:
  40191d:	c7 07 8b d1 84 c0    	movl   $0xc084d18b,(%rdi)
  401923:	c3                   	retq   

0000000000401924 <getval_472>:
  401924:	b8 89 d1 94 90       	mov    $0x9094d189,%eax
  401929:	c3                   	retq   

000000000040192a <setval_394>:
  40192a:	c7 07 8d ce 08 c9    	movl   $0xc908ce8d,(%rdi)
  401930:	c3                   	retq   

0000000000401931 <addval_430>:
  401931:	8d 87 89 ce 28 d2    	lea    -0x2dd73177(%rdi),%eax
  401937:	c3                   	retq   

0000000000401938 <getval_328>:
  401938:	b8 88 c2 c3 89       	mov    $0x89c3c288,%eax
  40193d:	c3                   	retq   

000000000040193e <setval_414>:
  40193e:	c7 07 89 c2 18 c0    	movl   $0xc018c289,(%rdi)
  401944:	c3                   	retq   

0000000000401945 <setval_142>:
  401945:	c7 07 89 c2 60 c0    	movl   $0xc060c289,(%rdi)
  40194b:	c3                   	retq   

000000000040194c <setval_124>:
  40194c:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  401952:	c3                   	retq   

0000000000401953 <setval_355>:
  401953:	c7 07 48 09 e0 c3    	movl   $0xc3e00948,(%rdi)
  401959:	c3                   	retq   

000000000040195a <getval_208>:
  40195a:	b8 89 ce 18 d2       	mov    $0xd218ce89,%eax
  40195f:	c3                   	retq   

0000000000401960 <getval_131>:
  401960:	b8 99 ce 84 db       	mov    $0xdb84ce99,%eax
  401965:	c3                   	retq   

0000000000401966 <getval_403>:
  401966:	b8 89 ce 20 db       	mov    $0xdb20ce89,%eax
  40196b:	c3                   	retq   

000000000040196c <setval_454>:
  40196c:	c7 07 89 d1 38 db    	movl   $0xdb38d189,(%rdi)
  401972:	c3                   	retq   

0000000000401973 <addval_456>:
  401973:	8d 87 88 d1 20 c9    	lea    -0x36df2e78(%rdi),%eax
  401979:	c3                   	retq   

000000000040197a <addval_420>:
  40197a:	8d 87 48 c9 e0 c3    	lea    -0x3c1f36b8(%rdi),%eax
  401980:	c3                   	retq   

0000000000401981 <addval_487>:
  401981:	8d 87 48 89 e0 94    	lea    -0x6b1f76b8(%rdi),%eax
  401987:	c3                   	retq   

0000000000401988 <setval_319>:
  401988:	c7 07 36 89 ce 90    	movl   $0x90ce8936,(%rdi)
  40198e:	c3                   	retq   

000000000040198f <setval_337>:
  40198f:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401995:	c3                   	retq   

0000000000401996 <setval_263>:
  401996:	c7 07 48 89 e0 94    	movl   $0x94e08948,(%rdi)
  40199c:	c3                   	retq   

000000000040199d <end_farm>:
  40199d:	b8 01 00 00 00       	mov    $0x1,%eax
  4019a2:	c3                   	retq   

00000000004019a3 <save_char>:
  4019a3:	8b 05 7b 47 20 00    	mov    0x20477b(%rip),%eax        # 606124 <gets_cnt>
  4019a9:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4019ae:	7f 4a                	jg     4019fa <save_char+0x57>
  4019b0:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4019b3:	89 f9                	mov    %edi,%ecx
  4019b5:	c0 e9 04             	shr    $0x4,%cl
  4019b8:	4c 8d 05 01 1a 00 00 	lea    0x1a01(%rip),%r8        # 4033c0 <trans_char>
  4019bf:	83 e1 0f             	and    $0xf,%ecx
  4019c2:	45 0f b6 0c 08       	movzbl (%r8,%rcx,1),%r9d
  4019c7:	48 8d 0d 52 3b 20 00 	lea    0x203b52(%rip),%rcx        # 605520 <gets_buf>
  4019ce:	48 63 f2             	movslq %edx,%rsi
  4019d1:	44 88 0c 31          	mov    %r9b,(%rcx,%rsi,1)
  4019d5:	8d 72 01             	lea    0x1(%rdx),%esi
  4019d8:	83 e7 0f             	and    $0xf,%edi
  4019db:	41 0f b6 3c 38       	movzbl (%r8,%rdi,1),%edi
  4019e0:	48 63 f6             	movslq %esi,%rsi
  4019e3:	40 88 3c 31          	mov    %dil,(%rcx,%rsi,1)
  4019e7:	83 c2 02             	add    $0x2,%edx
  4019ea:	48 63 d2             	movslq %edx,%rdx
  4019ed:	c6 04 11 20          	movb   $0x20,(%rcx,%rdx,1)
  4019f1:	83 c0 01             	add    $0x1,%eax
  4019f4:	89 05 2a 47 20 00    	mov    %eax,0x20472a(%rip)        # 606124 <gets_cnt>
  4019fa:	f3 c3                	repz retq 

00000000004019fc <save_term>:
  4019fc:	8b 05 22 47 20 00    	mov    0x204722(%rip),%eax        # 606124 <gets_cnt>
  401a02:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a05:	48 98                	cltq   
  401a07:	48 8d 15 12 3b 20 00 	lea    0x203b12(%rip),%rdx        # 605520 <gets_buf>
  401a0e:	c6 04 02 00          	movb   $0x0,(%rdx,%rax,1)
  401a12:	c3                   	retq   

0000000000401a13 <check_fail>:
  401a13:	48 83 ec 08          	sub    $0x8,%rsp
  401a17:	0f be 35 0a 47 20 00 	movsbl 0x20470a(%rip),%esi        # 606128 <target_prefix>
  401a1e:	48 8d 0d fb 3a 20 00 	lea    0x203afb(%rip),%rcx        # 605520 <gets_buf>
  401a25:	8b 15 cd 3a 20 00    	mov    0x203acd(%rip),%edx        # 6054f8 <check_level>
  401a2b:	48 8d 3d 91 16 00 00 	lea    0x1691(%rip),%rdi        # 4030c3 <_IO_stdin_used+0x3b3>
  401a32:	b8 00 00 00 00       	mov    $0x0,%eax
  401a37:	e8 24 f2 ff ff       	callq  400c60 <printf@plt>
  401a3c:	bf 01 00 00 00       	mov    $0x1,%edi
  401a41:	e8 6a f3 ff ff       	callq  400db0 <exit@plt>

0000000000401a46 <Gets>:
  401a46:	41 54                	push   %r12
  401a48:	55                   	push   %rbp
  401a49:	53                   	push   %rbx
  401a4a:	49 89 fc             	mov    %rdi,%r12
  401a4d:	c7 05 cd 46 20 00 00 	movl   $0x0,0x2046cd(%rip)        # 606124 <gets_cnt>
  401a54:	00 00 00 
  401a57:	48 89 fb             	mov    %rdi,%rbx
  401a5a:	eb 11                	jmp    401a6d <Gets+0x27>
  401a5c:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a60:	88 03                	mov    %al,(%rbx)
  401a62:	0f b6 f8             	movzbl %al,%edi
  401a65:	e8 39 ff ff ff       	callq  4019a3 <save_char>
  401a6a:	48 89 eb             	mov    %rbp,%rbx
  401a6d:	48 8b 3d 7c 3a 20 00 	mov    0x203a7c(%rip),%rdi        # 6054f0 <infile>
  401a74:	e8 a7 f2 ff ff       	callq  400d20 <_IO_getc@plt>
  401a79:	83 f8 ff             	cmp    $0xffffffff,%eax
  401a7c:	74 05                	je     401a83 <Gets+0x3d>
  401a7e:	83 f8 0a             	cmp    $0xa,%eax
  401a81:	75 d9                	jne    401a5c <Gets+0x16>
  401a83:	c6 03 00             	movb   $0x0,(%rbx)
  401a86:	b8 00 00 00 00       	mov    $0x0,%eax
  401a8b:	e8 6c ff ff ff       	callq  4019fc <save_term>
  401a90:	4c 89 e0             	mov    %r12,%rax
  401a93:	5b                   	pop    %rbx
  401a94:	5d                   	pop    %rbp
  401a95:	41 5c                	pop    %r12
  401a97:	c3                   	retq   

0000000000401a98 <notify_server>:
  401a98:	83 3d 69 3a 20 00 00 	cmpl   $0x0,0x203a69(%rip)        # 605508 <is_checker>
  401a9f:	0f 85 de 00 00 00    	jne    401b83 <notify_server+0xeb>
  401aa5:	55                   	push   %rbp
  401aa6:	53                   	push   %rbx
  401aa7:	48 81 ec 08 40 00 00 	sub    $0x4008,%rsp
  401aae:	89 fb                	mov    %edi,%ebx
  401ab0:	8b 05 6e 46 20 00    	mov    0x20466e(%rip),%eax        # 606124 <gets_cnt>
  401ab6:	83 c0 64             	add    $0x64,%eax
  401ab9:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401abe:	0f 8f c1 00 00 00    	jg     401b85 <notify_server+0xed>
  401ac4:	44 0f be 0d 5c 46 20 	movsbl 0x20465c(%rip),%r9d        # 606128 <target_prefix>
  401acb:	00 
  401acc:	83 3d b5 39 20 00 00 	cmpl   $0x0,0x2039b5(%rip)        # 605488 <notify>
  401ad3:	0f 84 c7 00 00 00    	je     401ba0 <notify_server+0x108>
  401ad9:	44 8b 05 20 3a 20 00 	mov    0x203a20(%rip),%r8d        # 605500 <authkey>
  401ae0:	85 db                	test   %ebx,%ebx
  401ae2:	0f 84 c3 00 00 00    	je     401bab <notify_server+0x113>
  401ae8:	48 8d 2d ea 15 00 00 	lea    0x15ea(%rip),%rbp        # 4030d9 <_IO_stdin_used+0x3c9>
  401aef:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401af6:	00 
  401af7:	48 8d 05 22 3a 20 00 	lea    0x203a22(%rip),%rax        # 605520 <gets_buf>
  401afe:	50                   	push   %rax
  401aff:	56                   	push   %rsi
  401b00:	48 89 e9             	mov    %rbp,%rcx
  401b03:	8b 15 27 36 20 00    	mov    0x203627(%rip),%edx        # 605130 <target_id>
  401b09:	48 8d 35 d3 15 00 00 	lea    0x15d3(%rip),%rsi        # 4030e3 <_IO_stdin_used+0x3d3>
  401b10:	b8 00 00 00 00       	mov    $0x0,%eax
  401b15:	e8 86 f2 ff ff       	callq  400da0 <sprintf@plt>
  401b1a:	48 83 c4 10          	add    $0x10,%rsp
  401b1e:	83 3d 63 39 20 00 00 	cmpl   $0x0,0x203963(%rip)        # 605488 <notify>
  401b25:	0f 84 b8 00 00 00    	je     401be3 <notify_server+0x14b>
  401b2b:	85 db                	test   %ebx,%ebx
  401b2d:	0f 84 a2 00 00 00    	je     401bd5 <notify_server+0x13d>
  401b33:	48 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%rcx
  401b3a:	00 
  401b3b:	49 89 e1             	mov    %rsp,%r9
  401b3e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b44:	48 8b 15 fd 35 20 00 	mov    0x2035fd(%rip),%rdx        # 605148 <lab>
  401b4b:	48 8b 35 fe 35 20 00 	mov    0x2035fe(%rip),%rsi        # 605150 <course>
  401b52:	48 8b 3d e7 35 20 00 	mov    0x2035e7(%rip),%rdi        # 605140 <user_id>
  401b59:	e8 6e 10 00 00       	callq  402bcc <driver_post>
  401b5e:	85 c0                	test   %eax,%eax
  401b60:	78 55                	js     401bb7 <notify_server+0x11f>
  401b62:	48 8d 3d bf 16 00 00 	lea    0x16bf(%rip),%rdi        # 403228 <_IO_stdin_used+0x518>
  401b69:	e8 c2 f0 ff ff       	callq  400c30 <puts@plt>
  401b6e:	48 8d 3d 96 15 00 00 	lea    0x1596(%rip),%rdi        # 40310b <_IO_stdin_used+0x3fb>
  401b75:	e8 b6 f0 ff ff       	callq  400c30 <puts@plt>
  401b7a:	48 81 c4 08 40 00 00 	add    $0x4008,%rsp
  401b81:	5b                   	pop    %rbx
  401b82:	5d                   	pop    %rbp
  401b83:	f3 c3                	repz retq 
  401b85:	48 8d 3d 6c 16 00 00 	lea    0x166c(%rip),%rdi        # 4031f8 <_IO_stdin_used+0x4e8>
  401b8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b91:	e8 ca f0 ff ff       	callq  400c60 <printf@plt>
  401b96:	bf 01 00 00 00       	mov    $0x1,%edi
  401b9b:	e8 10 f2 ff ff       	callq  400db0 <exit@plt>
  401ba0:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401ba6:	e9 35 ff ff ff       	jmpq   401ae0 <notify_server+0x48>
  401bab:	48 8d 2d 2c 15 00 00 	lea    0x152c(%rip),%rbp        # 4030de <_IO_stdin_used+0x3ce>
  401bb2:	e9 38 ff ff ff       	jmpq   401aef <notify_server+0x57>
  401bb7:	48 89 e6             	mov    %rsp,%rsi
  401bba:	48 8d 3d 3e 15 00 00 	lea    0x153e(%rip),%rdi        # 4030ff <_IO_stdin_used+0x3ef>
  401bc1:	b8 00 00 00 00       	mov    $0x0,%eax
  401bc6:	e8 95 f0 ff ff       	callq  400c60 <printf@plt>
  401bcb:	bf 01 00 00 00       	mov    $0x1,%edi
  401bd0:	e8 db f1 ff ff       	callq  400db0 <exit@plt>
  401bd5:	48 8d 3d 39 15 00 00 	lea    0x1539(%rip),%rdi        # 403115 <_IO_stdin_used+0x405>
  401bdc:	e8 4f f0 ff ff       	callq  400c30 <puts@plt>
  401be1:	eb 97                	jmp    401b7a <notify_server+0xe2>
  401be3:	48 89 ee             	mov    %rbp,%rsi
  401be6:	48 8d 3d 73 16 00 00 	lea    0x1673(%rip),%rdi        # 403260 <_IO_stdin_used+0x550>
  401bed:	b8 00 00 00 00       	mov    $0x0,%eax
  401bf2:	e8 69 f0 ff ff       	callq  400c60 <printf@plt>
  401bf7:	48 8b 35 42 35 20 00 	mov    0x203542(%rip),%rsi        # 605140 <user_id>
  401bfe:	48 8d 3d 17 15 00 00 	lea    0x1517(%rip),%rdi        # 40311c <_IO_stdin_used+0x40c>
  401c05:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0a:	e8 51 f0 ff ff       	callq  400c60 <printf@plt>
  401c0f:	48 8b 35 3a 35 20 00 	mov    0x20353a(%rip),%rsi        # 605150 <course>
  401c16:	48 8d 3d 0c 15 00 00 	lea    0x150c(%rip),%rdi        # 403129 <_IO_stdin_used+0x419>
  401c1d:	b8 00 00 00 00       	mov    $0x0,%eax
  401c22:	e8 39 f0 ff ff       	callq  400c60 <printf@plt>
  401c27:	48 8b 35 1a 35 20 00 	mov    0x20351a(%rip),%rsi        # 605148 <lab>
  401c2e:	48 8d 3d 00 15 00 00 	lea    0x1500(%rip),%rdi        # 403135 <_IO_stdin_used+0x425>
  401c35:	b8 00 00 00 00       	mov    $0x0,%eax
  401c3a:	e8 21 f0 ff ff       	callq  400c60 <printf@plt>
  401c3f:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  401c46:	00 
  401c47:	48 8d 3d f0 14 00 00 	lea    0x14f0(%rip),%rdi        # 40313e <_IO_stdin_used+0x42e>
  401c4e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c53:	e8 08 f0 ff ff       	callq  400c60 <printf@plt>
  401c58:	e9 1d ff ff ff       	jmpq   401b7a <notify_server+0xe2>

0000000000401c5d <validate>:
  401c5d:	53                   	push   %rbx
  401c5e:	89 fb                	mov    %edi,%ebx
  401c60:	83 3d a1 38 20 00 00 	cmpl   $0x0,0x2038a1(%rip)        # 605508 <is_checker>
  401c67:	74 68                	je     401cd1 <validate+0x74>
  401c69:	39 3d 8d 38 20 00    	cmp    %edi,0x20388d(%rip)        # 6054fc <vlevel>
  401c6f:	75 2d                	jne    401c9e <validate+0x41>
  401c71:	8b 35 81 38 20 00    	mov    0x203881(%rip),%esi        # 6054f8 <check_level>
  401c77:	39 f7                	cmp    %esi,%edi
  401c79:	75 39                	jne    401cb4 <validate+0x57>
  401c7b:	0f be 35 a6 44 20 00 	movsbl 0x2044a6(%rip),%esi        # 606128 <target_prefix>
  401c82:	48 8d 0d 97 38 20 00 	lea    0x203897(%rip),%rcx        # 605520 <gets_buf>
  401c89:	89 fa                	mov    %edi,%edx
  401c8b:	48 8d 3d d6 14 00 00 	lea    0x14d6(%rip),%rdi        # 403168 <_IO_stdin_used+0x458>
  401c92:	b8 00 00 00 00       	mov    $0x0,%eax
  401c97:	e8 c4 ef ff ff       	callq  400c60 <printf@plt>
  401c9c:	5b                   	pop    %rbx
  401c9d:	c3                   	retq   
  401c9e:	48 8d 3d a5 14 00 00 	lea    0x14a5(%rip),%rdi        # 40314a <_IO_stdin_used+0x43a>
  401ca5:	e8 86 ef ff ff       	callq  400c30 <puts@plt>
  401caa:	b8 00 00 00 00       	mov    $0x0,%eax
  401caf:	e8 5f fd ff ff       	callq  401a13 <check_fail>
  401cb4:	89 fa                	mov    %edi,%edx
  401cb6:	48 8d 3d cb 15 00 00 	lea    0x15cb(%rip),%rdi        # 403288 <_IO_stdin_used+0x578>
  401cbd:	b8 00 00 00 00       	mov    $0x0,%eax
  401cc2:	e8 99 ef ff ff       	callq  400c60 <printf@plt>
  401cc7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ccc:	e8 42 fd ff ff       	callq  401a13 <check_fail>
  401cd1:	3b 3d 25 38 20 00    	cmp    0x203825(%rip),%edi        # 6054fc <vlevel>
  401cd7:	74 1a                	je     401cf3 <validate+0x96>
  401cd9:	48 8d 3d 6a 14 00 00 	lea    0x146a(%rip),%rdi        # 40314a <_IO_stdin_used+0x43a>
  401ce0:	e8 4b ef ff ff       	callq  400c30 <puts@plt>
  401ce5:	89 de                	mov    %ebx,%esi
  401ce7:	bf 00 00 00 00       	mov    $0x0,%edi
  401cec:	e8 a7 fd ff ff       	callq  401a98 <notify_server>
  401cf1:	eb a9                	jmp    401c9c <validate+0x3f>
  401cf3:	0f be 15 2e 44 20 00 	movsbl 0x20442e(%rip),%edx        # 606128 <target_prefix>
  401cfa:	89 fe                	mov    %edi,%esi
  401cfc:	48 8d 3d ad 15 00 00 	lea    0x15ad(%rip),%rdi        # 4032b0 <_IO_stdin_used+0x5a0>
  401d03:	b8 00 00 00 00       	mov    $0x0,%eax
  401d08:	e8 53 ef ff ff       	callq  400c60 <printf@plt>
  401d0d:	89 de                	mov    %ebx,%esi
  401d0f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d14:	e8 7f fd ff ff       	callq  401a98 <notify_server>
  401d19:	eb 81                	jmp    401c9c <validate+0x3f>

0000000000401d1b <fail>:
  401d1b:	48 83 ec 08          	sub    $0x8,%rsp
  401d1f:	83 3d e2 37 20 00 00 	cmpl   $0x0,0x2037e2(%rip)        # 605508 <is_checker>
  401d26:	75 11                	jne    401d39 <fail+0x1e>
  401d28:	89 fe                	mov    %edi,%esi
  401d2a:	bf 00 00 00 00       	mov    $0x0,%edi
  401d2f:	e8 64 fd ff ff       	callq  401a98 <notify_server>
  401d34:	48 83 c4 08          	add    $0x8,%rsp
  401d38:	c3                   	retq   
  401d39:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3e:	e8 d0 fc ff ff       	callq  401a13 <check_fail>

0000000000401d43 <bushandler>:
  401d43:	48 83 ec 08          	sub    $0x8,%rsp
  401d47:	83 3d ba 37 20 00 00 	cmpl   $0x0,0x2037ba(%rip)        # 605508 <is_checker>
  401d4e:	74 16                	je     401d66 <bushandler+0x23>
  401d50:	48 8d 3d 26 14 00 00 	lea    0x1426(%rip),%rdi        # 40317d <_IO_stdin_used+0x46d>
  401d57:	e8 d4 ee ff ff       	callq  400c30 <puts@plt>
  401d5c:	b8 00 00 00 00       	mov    $0x0,%eax
  401d61:	e8 ad fc ff ff       	callq  401a13 <check_fail>
  401d66:	48 8d 3d 7b 15 00 00 	lea    0x157b(%rip),%rdi        # 4032e8 <_IO_stdin_used+0x5d8>
  401d6d:	e8 be ee ff ff       	callq  400c30 <puts@plt>
  401d72:	48 8d 3d 0e 14 00 00 	lea    0x140e(%rip),%rdi        # 403187 <_IO_stdin_used+0x477>
  401d79:	e8 b2 ee ff ff       	callq  400c30 <puts@plt>
  401d7e:	be 00 00 00 00       	mov    $0x0,%esi
  401d83:	bf 00 00 00 00       	mov    $0x0,%edi
  401d88:	e8 0b fd ff ff       	callq  401a98 <notify_server>
  401d8d:	bf 01 00 00 00       	mov    $0x1,%edi
  401d92:	e8 19 f0 ff ff       	callq  400db0 <exit@plt>

0000000000401d97 <seghandler>:
  401d97:	48 83 ec 08          	sub    $0x8,%rsp
  401d9b:	83 3d 66 37 20 00 00 	cmpl   $0x0,0x203766(%rip)        # 605508 <is_checker>
  401da2:	74 16                	je     401dba <seghandler+0x23>
  401da4:	48 8d 3d f2 13 00 00 	lea    0x13f2(%rip),%rdi        # 40319d <_IO_stdin_used+0x48d>
  401dab:	e8 80 ee ff ff       	callq  400c30 <puts@plt>
  401db0:	b8 00 00 00 00       	mov    $0x0,%eax
  401db5:	e8 59 fc ff ff       	callq  401a13 <check_fail>
  401dba:	48 8d 3d 47 15 00 00 	lea    0x1547(%rip),%rdi        # 403308 <_IO_stdin_used+0x5f8>
  401dc1:	e8 6a ee ff ff       	callq  400c30 <puts@plt>
  401dc6:	48 8d 3d ba 13 00 00 	lea    0x13ba(%rip),%rdi        # 403187 <_IO_stdin_used+0x477>
  401dcd:	e8 5e ee ff ff       	callq  400c30 <puts@plt>
  401dd2:	be 00 00 00 00       	mov    $0x0,%esi
  401dd7:	bf 00 00 00 00       	mov    $0x0,%edi
  401ddc:	e8 b7 fc ff ff       	callq  401a98 <notify_server>
  401de1:	bf 01 00 00 00       	mov    $0x1,%edi
  401de6:	e8 c5 ef ff ff       	callq  400db0 <exit@plt>

0000000000401deb <illegalhandler>:
  401deb:	48 83 ec 08          	sub    $0x8,%rsp
  401def:	83 3d 12 37 20 00 00 	cmpl   $0x0,0x203712(%rip)        # 605508 <is_checker>
  401df6:	74 16                	je     401e0e <illegalhandler+0x23>
  401df8:	48 8d 3d b1 13 00 00 	lea    0x13b1(%rip),%rdi        # 4031b0 <_IO_stdin_used+0x4a0>
  401dff:	e8 2c ee ff ff       	callq  400c30 <puts@plt>
  401e04:	b8 00 00 00 00       	mov    $0x0,%eax
  401e09:	e8 05 fc ff ff       	callq  401a13 <check_fail>
  401e0e:	48 8d 3d 1b 15 00 00 	lea    0x151b(%rip),%rdi        # 403330 <_IO_stdin_used+0x620>
  401e15:	e8 16 ee ff ff       	callq  400c30 <puts@plt>
  401e1a:	48 8d 3d 66 13 00 00 	lea    0x1366(%rip),%rdi        # 403187 <_IO_stdin_used+0x477>
  401e21:	e8 0a ee ff ff       	callq  400c30 <puts@plt>
  401e26:	be 00 00 00 00       	mov    $0x0,%esi
  401e2b:	bf 00 00 00 00       	mov    $0x0,%edi
  401e30:	e8 63 fc ff ff       	callq  401a98 <notify_server>
  401e35:	bf 01 00 00 00       	mov    $0x1,%edi
  401e3a:	e8 71 ef ff ff       	callq  400db0 <exit@plt>

0000000000401e3f <sigalrmhandler>:
  401e3f:	48 83 ec 08          	sub    $0x8,%rsp
  401e43:	83 3d be 36 20 00 00 	cmpl   $0x0,0x2036be(%rip)        # 605508 <is_checker>
  401e4a:	74 16                	je     401e62 <sigalrmhandler+0x23>
  401e4c:	48 8d 3d 71 13 00 00 	lea    0x1371(%rip),%rdi        # 4031c4 <_IO_stdin_used+0x4b4>
  401e53:	e8 d8 ed ff ff       	callq  400c30 <puts@plt>
  401e58:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5d:	e8 b1 fb ff ff       	callq  401a13 <check_fail>
  401e62:	be 05 00 00 00       	mov    $0x5,%esi
  401e67:	48 8d 3d f2 14 00 00 	lea    0x14f2(%rip),%rdi        # 403360 <_IO_stdin_used+0x650>
  401e6e:	b8 00 00 00 00       	mov    $0x0,%eax
  401e73:	e8 e8 ed ff ff       	callq  400c60 <printf@plt>
  401e78:	be 00 00 00 00       	mov    $0x0,%esi
  401e7d:	bf 00 00 00 00       	mov    $0x0,%edi
  401e82:	e8 11 fc ff ff       	callq  401a98 <notify_server>
  401e87:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8c:	e8 1f ef ff ff       	callq  400db0 <exit@plt>

0000000000401e91 <launch>:
  401e91:	55                   	push   %rbp
  401e92:	48 89 e5             	mov    %rsp,%rbp
  401e95:	48 89 fa             	mov    %rdi,%rdx
  401e98:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e9c:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401ea0:	48 29 c4             	sub    %rax,%rsp
  401ea3:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401ea8:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401eac:	be f4 00 00 00       	mov    $0xf4,%esi
  401eb1:	e8 ba ed ff ff       	callq  400c70 <memset@plt>
  401eb6:	48 8b 05 e3 35 20 00 	mov    0x2035e3(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401ebd:	48 39 05 2c 36 20 00 	cmp    %rax,0x20362c(%rip)        # 6054f0 <infile>
  401ec4:	74 2b                	je     401ef1 <launch+0x60>
  401ec6:	c7 05 2c 36 20 00 00 	movl   $0x0,0x20362c(%rip)        # 6054fc <vlevel>
  401ecd:	00 00 00 
  401ed0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed5:	e8 84 f9 ff ff       	callq  40185e <test>
  401eda:	83 3d 27 36 20 00 00 	cmpl   $0x0,0x203627(%rip)        # 605508 <is_checker>
  401ee1:	75 21                	jne    401f04 <launch+0x73>
  401ee3:	48 8d 3d fa 12 00 00 	lea    0x12fa(%rip),%rdi        # 4031e4 <_IO_stdin_used+0x4d4>
  401eea:	e8 41 ed ff ff       	callq  400c30 <puts@plt>
  401eef:	c9                   	leaveq 
  401ef0:	c3                   	retq   
  401ef1:	48 8d 3d d4 12 00 00 	lea    0x12d4(%rip),%rdi        # 4031cc <_IO_stdin_used+0x4bc>
  401ef8:	b8 00 00 00 00       	mov    $0x0,%eax
  401efd:	e8 5e ed ff ff       	callq  400c60 <printf@plt>
  401f02:	eb c2                	jmp    401ec6 <launch+0x35>
  401f04:	48 8d 3d ce 12 00 00 	lea    0x12ce(%rip),%rdi        # 4031d9 <_IO_stdin_used+0x4c9>
  401f0b:	e8 20 ed ff ff       	callq  400c30 <puts@plt>
  401f10:	b8 00 00 00 00       	mov    $0x0,%eax
  401f15:	e8 f9 fa ff ff       	callq  401a13 <check_fail>

0000000000401f1a <stable_launch>:
  401f1a:	53                   	push   %rbx
  401f1b:	48 89 3d c6 35 20 00 	mov    %rdi,0x2035c6(%rip)        # 6054e8 <global_offset>
  401f22:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401f28:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f2e:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f33:	ba 07 00 00 00       	mov    $0x7,%edx
  401f38:	be 00 00 10 00       	mov    $0x100000,%esi
  401f3d:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f42:	e8 09 ed ff ff       	callq  400c50 <mmap@plt>
  401f47:	48 89 c3             	mov    %rax,%rbx
  401f4a:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f50:	75 43                	jne    401f95 <stable_launch+0x7b>
  401f52:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401f59:	48 89 15 d0 41 20 00 	mov    %rdx,0x2041d0(%rip)        # 606130 <stack_top>
  401f60:	48 89 e0             	mov    %rsp,%rax
  401f63:	48 89 d4             	mov    %rdx,%rsp
  401f66:	48 89 c2             	mov    %rax,%rdx
  401f69:	48 89 15 70 35 20 00 	mov    %rdx,0x203570(%rip)        # 6054e0 <global_save_stack>
  401f70:	48 8b 3d 71 35 20 00 	mov    0x203571(%rip),%rdi        # 6054e8 <global_offset>
  401f77:	e8 15 ff ff ff       	callq  401e91 <launch>
  401f7c:	48 8b 05 5d 35 20 00 	mov    0x20355d(%rip),%rax        # 6054e0 <global_save_stack>
  401f83:	48 89 c4             	mov    %rax,%rsp
  401f86:	be 00 00 10 00       	mov    $0x100000,%esi
  401f8b:	48 89 df             	mov    %rbx,%rdi
  401f8e:	e8 ad ed ff ff       	callq  400d40 <munmap@plt>
  401f93:	5b                   	pop    %rbx
  401f94:	c3                   	retq   
  401f95:	be 00 00 10 00       	mov    $0x100000,%esi
  401f9a:	48 89 c7             	mov    %rax,%rdi
  401f9d:	e8 9e ed ff ff       	callq  400d40 <munmap@plt>
  401fa2:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401fa7:	48 8d 35 ea 13 00 00 	lea    0x13ea(%rip),%rsi        # 403398 <_IO_stdin_used+0x688>
  401fae:	48 8b 3d 0b 35 20 00 	mov    0x20350b(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401fb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fba:	e8 11 ed ff ff       	callq  400cd0 <fprintf@plt>
  401fbf:	bf 01 00 00 00       	mov    $0x1,%edi
  401fc4:	e8 e7 ed ff ff       	callq  400db0 <exit@plt>

0000000000401fc9 <rio_readinitb>:
  401fc9:	89 37                	mov    %esi,(%rdi)
  401fcb:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401fd2:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401fd6:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401fda:	c3                   	retq   

0000000000401fdb <sigalrm_handler>:
  401fdb:	48 83 ec 08          	sub    $0x8,%rsp
  401fdf:	ba 00 00 00 00       	mov    $0x0,%edx
  401fe4:	48 8d 35 e5 13 00 00 	lea    0x13e5(%rip),%rsi        # 4033d0 <trans_char+0x10>
  401feb:	48 8b 3d ce 34 20 00 	mov    0x2034ce(%rip),%rdi        # 6054c0 <stderr@@GLIBC_2.2.5>
  401ff2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff7:	e8 d4 ec ff ff       	callq  400cd0 <fprintf@plt>
  401ffc:	bf 01 00 00 00       	mov    $0x1,%edi
  402001:	e8 aa ed ff ff       	callq  400db0 <exit@plt>

0000000000402006 <urlencode>:
  402006:	41 54                	push   %r12
  402008:	55                   	push   %rbp
  402009:	53                   	push   %rbx
  40200a:	48 83 ec 10          	sub    $0x10,%rsp
  40200e:	48 89 fb             	mov    %rdi,%rbx
  402011:	48 89 f5             	mov    %rsi,%rbp
  402014:	b8 00 00 00 00       	mov    $0x0,%eax
  402019:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402020:	f2 ae                	repnz scas %es:(%rdi),%al
  402022:	48 f7 d1             	not    %rcx
  402025:	8d 41 ff             	lea    -0x1(%rcx),%eax
  402028:	eb 0e                	jmp    402038 <urlencode+0x32>
  40202a:	88 55 00             	mov    %dl,0x0(%rbp)
  40202d:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402031:	48 83 c3 01          	add    $0x1,%rbx
  402035:	44 89 e0             	mov    %r12d,%eax
  402038:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40203c:	85 c0                	test   %eax,%eax
  40203e:	0f 84 95 00 00 00    	je     4020d9 <urlencode+0xd3>
  402044:	0f b6 13             	movzbl (%rbx),%edx
  402047:	80 fa 2a             	cmp    $0x2a,%dl
  40204a:	0f 94 c1             	sete   %cl
  40204d:	80 fa 2d             	cmp    $0x2d,%dl
  402050:	0f 94 c0             	sete   %al
  402053:	08 c1                	or     %al,%cl
  402055:	75 d3                	jne    40202a <urlencode+0x24>
  402057:	80 fa 2e             	cmp    $0x2e,%dl
  40205a:	74 ce                	je     40202a <urlencode+0x24>
  40205c:	80 fa 5f             	cmp    $0x5f,%dl
  40205f:	74 c9                	je     40202a <urlencode+0x24>
  402061:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402064:	3c 09                	cmp    $0x9,%al
  402066:	76 c2                	jbe    40202a <urlencode+0x24>
  402068:	8d 42 bf             	lea    -0x41(%rdx),%eax
  40206b:	3c 19                	cmp    $0x19,%al
  40206d:	76 bb                	jbe    40202a <urlencode+0x24>
  40206f:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402072:	3c 19                	cmp    $0x19,%al
  402074:	76 b4                	jbe    40202a <urlencode+0x24>
  402076:	80 fa 20             	cmp    $0x20,%dl
  402079:	74 4c                	je     4020c7 <urlencode+0xc1>
  40207b:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40207e:	3c 5f                	cmp    $0x5f,%al
  402080:	0f 96 c1             	setbe  %cl
  402083:	80 fa 09             	cmp    $0x9,%dl
  402086:	0f 94 c0             	sete   %al
  402089:	08 c1                	or     %al,%cl
  40208b:	74 47                	je     4020d4 <urlencode+0xce>
  40208d:	0f b6 d2             	movzbl %dl,%edx
  402090:	48 8d 7c 24 08       	lea    0x8(%rsp),%rdi
  402095:	48 8d 35 cc 13 00 00 	lea    0x13cc(%rip),%rsi        # 403468 <trans_char+0xa8>
  40209c:	b8 00 00 00 00       	mov    $0x0,%eax
  4020a1:	e8 fa ec ff ff       	callq  400da0 <sprintf@plt>
  4020a6:	0f b6 44 24 08       	movzbl 0x8(%rsp),%eax
  4020ab:	88 45 00             	mov    %al,0x0(%rbp)
  4020ae:	0f b6 44 24 09       	movzbl 0x9(%rsp),%eax
  4020b3:	88 45 01             	mov    %al,0x1(%rbp)
  4020b6:	0f b6 44 24 0a       	movzbl 0xa(%rsp),%eax
  4020bb:	88 45 02             	mov    %al,0x2(%rbp)
  4020be:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  4020c2:	e9 6a ff ff ff       	jmpq   402031 <urlencode+0x2b>
  4020c7:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4020cb:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4020cf:	e9 5d ff ff ff       	jmpq   402031 <urlencode+0x2b>
  4020d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020d9:	48 83 c4 10          	add    $0x10,%rsp
  4020dd:	5b                   	pop    %rbx
  4020de:	5d                   	pop    %rbp
  4020df:	41 5c                	pop    %r12
  4020e1:	c3                   	retq   

00000000004020e2 <rio_writen>:
  4020e2:	41 55                	push   %r13
  4020e4:	41 54                	push   %r12
  4020e6:	55                   	push   %rbp
  4020e7:	53                   	push   %rbx
  4020e8:	48 83 ec 08          	sub    $0x8,%rsp
  4020ec:	41 89 fc             	mov    %edi,%r12d
  4020ef:	49 89 d5             	mov    %rdx,%r13
  4020f2:	48 89 f5             	mov    %rsi,%rbp
  4020f5:	48 89 d3             	mov    %rdx,%rbx
  4020f8:	eb 06                	jmp    402100 <rio_writen+0x1e>
  4020fa:	48 29 c3             	sub    %rax,%rbx
  4020fd:	48 01 c5             	add    %rax,%rbp
  402100:	48 85 db             	test   %rbx,%rbx
  402103:	74 24                	je     402129 <rio_writen+0x47>
  402105:	48 89 da             	mov    %rbx,%rdx
  402108:	48 89 ee             	mov    %rbp,%rsi
  40210b:	44 89 e7             	mov    %r12d,%edi
  40210e:	e8 2d eb ff ff       	callq  400c40 <write@plt>
  402113:	48 85 c0             	test   %rax,%rax
  402116:	7f e2                	jg     4020fa <rio_writen+0x18>
  402118:	e8 d3 ea ff ff       	callq  400bf0 <__errno_location@plt>
  40211d:	83 38 04             	cmpl   $0x4,(%rax)
  402120:	75 15                	jne    402137 <rio_writen+0x55>
  402122:	b8 00 00 00 00       	mov    $0x0,%eax
  402127:	eb d1                	jmp    4020fa <rio_writen+0x18>
  402129:	4c 89 e8             	mov    %r13,%rax
  40212c:	48 83 c4 08          	add    $0x8,%rsp
  402130:	5b                   	pop    %rbx
  402131:	5d                   	pop    %rbp
  402132:	41 5c                	pop    %r12
  402134:	41 5d                	pop    %r13
  402136:	c3                   	retq   
  402137:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40213e:	eb ec                	jmp    40212c <rio_writen+0x4a>

0000000000402140 <rio_read>:
  402140:	41 55                	push   %r13
  402142:	41 54                	push   %r12
  402144:	55                   	push   %rbp
  402145:	53                   	push   %rbx
  402146:	48 83 ec 08          	sub    $0x8,%rsp
  40214a:	48 89 fb             	mov    %rdi,%rbx
  40214d:	49 89 f5             	mov    %rsi,%r13
  402150:	49 89 d4             	mov    %rdx,%r12
  402153:	eb 0a                	jmp    40215f <rio_read+0x1f>
  402155:	e8 96 ea ff ff       	callq  400bf0 <__errno_location@plt>
  40215a:	83 38 04             	cmpl   $0x4,(%rax)
  40215d:	75 5c                	jne    4021bb <rio_read+0x7b>
  40215f:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402162:	85 ed                	test   %ebp,%ebp
  402164:	7f 24                	jg     40218a <rio_read+0x4a>
  402166:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40216a:	ba 00 20 00 00       	mov    $0x2000,%edx
  40216f:	48 89 ee             	mov    %rbp,%rsi
  402172:	8b 3b                	mov    (%rbx),%edi
  402174:	e8 27 eb ff ff       	callq  400ca0 <read@plt>
  402179:	89 43 04             	mov    %eax,0x4(%rbx)
  40217c:	85 c0                	test   %eax,%eax
  40217e:	78 d5                	js     402155 <rio_read+0x15>
  402180:	85 c0                	test   %eax,%eax
  402182:	74 40                	je     4021c4 <rio_read+0x84>
  402184:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402188:	eb d5                	jmp    40215f <rio_read+0x1f>
  40218a:	89 e8                	mov    %ebp,%eax
  40218c:	49 39 c4             	cmp    %rax,%r12
  40218f:	77 03                	ja     402194 <rio_read+0x54>
  402191:	44 89 e5             	mov    %r12d,%ebp
  402194:	4c 63 e5             	movslq %ebp,%r12
  402197:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40219b:	4c 89 e2             	mov    %r12,%rdx
  40219e:	4c 89 ef             	mov    %r13,%rdi
  4021a1:	e8 4a eb ff ff       	callq  400cf0 <memcpy@plt>
  4021a6:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4021aa:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4021ad:	4c 89 e0             	mov    %r12,%rax
  4021b0:	48 83 c4 08          	add    $0x8,%rsp
  4021b4:	5b                   	pop    %rbx
  4021b5:	5d                   	pop    %rbp
  4021b6:	41 5c                	pop    %r12
  4021b8:	41 5d                	pop    %r13
  4021ba:	c3                   	retq   
  4021bb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4021c2:	eb ec                	jmp    4021b0 <rio_read+0x70>
  4021c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c9:	eb e5                	jmp    4021b0 <rio_read+0x70>

00000000004021cb <rio_readlineb>:
  4021cb:	41 55                	push   %r13
  4021cd:	41 54                	push   %r12
  4021cf:	55                   	push   %rbp
  4021d0:	53                   	push   %rbx
  4021d1:	48 83 ec 18          	sub    $0x18,%rsp
  4021d5:	49 89 fd             	mov    %rdi,%r13
  4021d8:	49 89 d4             	mov    %rdx,%r12
  4021db:	48 89 f5             	mov    %rsi,%rbp
  4021de:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021e3:	4c 39 e3             	cmp    %r12,%rbx
  4021e6:	73 47                	jae    40222f <rio_readlineb+0x64>
  4021e8:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4021ed:	ba 01 00 00 00       	mov    $0x1,%edx
  4021f2:	4c 89 ef             	mov    %r13,%rdi
  4021f5:	e8 46 ff ff ff       	callq  402140 <rio_read>
  4021fa:	83 f8 01             	cmp    $0x1,%eax
  4021fd:	75 1c                	jne    40221b <rio_readlineb+0x50>
  4021ff:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402203:	0f b6 54 24 0f       	movzbl 0xf(%rsp),%edx
  402208:	88 55 00             	mov    %dl,0x0(%rbp)
  40220b:	80 7c 24 0f 0a       	cmpb   $0xa,0xf(%rsp)
  402210:	74 1a                	je     40222c <rio_readlineb+0x61>
  402212:	48 83 c3 01          	add    $0x1,%rbx
  402216:	48 89 c5             	mov    %rax,%rbp
  402219:	eb c8                	jmp    4021e3 <rio_readlineb+0x18>
  40221b:	85 c0                	test   %eax,%eax
  40221d:	75 22                	jne    402241 <rio_readlineb+0x76>
  40221f:	48 83 fb 01          	cmp    $0x1,%rbx
  402223:	75 0a                	jne    40222f <rio_readlineb+0x64>
  402225:	b8 00 00 00 00       	mov    $0x0,%eax
  40222a:	eb 0a                	jmp    402236 <rio_readlineb+0x6b>
  40222c:	48 89 c5             	mov    %rax,%rbp
  40222f:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402233:	48 89 d8             	mov    %rbx,%rax
  402236:	48 83 c4 18          	add    $0x18,%rsp
  40223a:	5b                   	pop    %rbx
  40223b:	5d                   	pop    %rbp
  40223c:	41 5c                	pop    %r12
  40223e:	41 5d                	pop    %r13
  402240:	c3                   	retq   
  402241:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402248:	eb ec                	jmp    402236 <rio_readlineb+0x6b>

000000000040224a <submitr>:
  40224a:	41 57                	push   %r15
  40224c:	41 56                	push   %r14
  40224e:	41 55                	push   %r13
  402250:	41 54                	push   %r12
  402252:	55                   	push   %rbp
  402253:	53                   	push   %rbx
  402254:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  40225b:	49 89 fd             	mov    %rdi,%r13
  40225e:	89 74 24 14          	mov    %esi,0x14(%rsp)
  402262:	49 89 d7             	mov    %rdx,%r15
  402265:	48 89 4c 24 08       	mov    %rcx,0x8(%rsp)
  40226a:	4c 89 44 24 18       	mov    %r8,0x18(%rsp)
  40226f:	4d 89 ce             	mov    %r9,%r14
  402272:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  402279:	00 
  40227a:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  402281:	00 00 00 00 
  402285:	ba 00 00 00 00       	mov    $0x0,%edx
  40228a:	be 01 00 00 00       	mov    $0x1,%esi
  40228f:	bf 02 00 00 00       	mov    $0x2,%edi
  402294:	e8 37 eb ff ff       	callq  400dd0 <socket@plt>
  402299:	85 c0                	test   %eax,%eax
  40229b:	0f 88 ca 01 00 00    	js     40246b <submitr+0x221>
  4022a1:	89 c5                	mov    %eax,%ebp
  4022a3:	4c 89 ef             	mov    %r13,%rdi
  4022a6:	e8 15 ea ff ff       	callq  400cc0 <gethostbyname@plt>
  4022ab:	48 85 c0             	test   %rax,%rax
  4022ae:	0f 84 05 02 00 00    	je     4024b9 <submitr+0x26f>
  4022b4:	4c 8d a4 24 40 a0 00 	lea    0xa040(%rsp),%r12
  4022bb:	00 
  4022bc:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  4022c3:	00 00 00 00 00 
  4022c8:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  4022cf:	00 00 00 00 00 
  4022d4:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  4022db:	00 02 00 
  4022de:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4022e2:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4022e6:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  4022ed:	00 
  4022ee:	48 8b 39             	mov    (%rcx),%rdi
  4022f1:	e8 5a ea ff ff       	callq  400d50 <bcopy@plt>
  4022f6:	0f b7 44 24 14       	movzwl 0x14(%rsp),%eax
  4022fb:	66 c1 c8 08          	ror    $0x8,%ax
  4022ff:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  402306:	00 
  402307:	ba 10 00 00 00       	mov    $0x10,%edx
  40230c:	4c 89 e6             	mov    %r12,%rsi
  40230f:	89 ef                	mov    %ebp,%edi
  402311:	e8 aa ea ff ff       	callq  400dc0 <connect@plt>
  402316:	85 c0                	test   %eax,%eax
  402318:	0f 88 02 02 00 00    	js     402520 <submitr+0x2d6>
  40231e:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  402325:	b8 00 00 00 00       	mov    $0x0,%eax
  40232a:	48 89 f1             	mov    %rsi,%rcx
  40232d:	4c 89 f7             	mov    %r14,%rdi
  402330:	f2 ae                	repnz scas %es:(%rdi),%al
  402332:	48 f7 d1             	not    %rcx
  402335:	48 89 ca             	mov    %rcx,%rdx
  402338:	48 89 f1             	mov    %rsi,%rcx
  40233b:	4c 89 ff             	mov    %r15,%rdi
  40233e:	f2 ae                	repnz scas %es:(%rdi),%al
  402340:	48 f7 d1             	not    %rcx
  402343:	49 89 c8             	mov    %rcx,%r8
  402346:	48 89 f1             	mov    %rsi,%rcx
  402349:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  40234e:	f2 ae                	repnz scas %es:(%rdi),%al
  402350:	48 f7 d1             	not    %rcx
  402353:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  402358:	48 89 f1             	mov    %rsi,%rcx
  40235b:	48 8b 7c 24 18       	mov    0x18(%rsp),%rdi
  402360:	f2 ae                	repnz scas %es:(%rdi),%al
  402362:	48 89 c8             	mov    %rcx,%rax
  402365:	48 f7 d0             	not    %rax
  402368:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  40236d:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  402372:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  402379:	00 
  40237a:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402380:	0f 87 f3 01 00 00    	ja     402579 <submitr+0x32f>
  402386:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  40238d:	00 
  40238e:	b9 00 04 00 00       	mov    $0x400,%ecx
  402393:	b8 00 00 00 00       	mov    $0x0,%eax
  402398:	48 89 f7             	mov    %rsi,%rdi
  40239b:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40239e:	4c 89 f7             	mov    %r14,%rdi
  4023a1:	e8 60 fc ff ff       	callq  402006 <urlencode>
  4023a6:	85 c0                	test   %eax,%eax
  4023a8:	0f 88 3d 02 00 00    	js     4025eb <submitr+0x3a1>
  4023ae:	4c 8d a4 24 30 60 00 	lea    0x6030(%rsp),%r12
  4023b5:	00 
  4023b6:	4d 89 e9             	mov    %r13,%r9
  4023b9:	4c 8d 84 24 30 40 00 	lea    0x4030(%rsp),%r8
  4023c0:	00 
  4023c1:	4c 89 f9             	mov    %r15,%rcx
  4023c4:	48 8b 54 24 08       	mov    0x8(%rsp),%rdx
  4023c9:	48 8d 35 28 10 00 00 	lea    0x1028(%rip),%rsi        # 4033f8 <trans_char+0x38>
  4023d0:	4c 89 e7             	mov    %r12,%rdi
  4023d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d8:	e8 c3 e9 ff ff       	callq  400da0 <sprintf@plt>
  4023dd:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4023e9:	4c 89 e7             	mov    %r12,%rdi
  4023ec:	f2 ae                	repnz scas %es:(%rdi),%al
  4023ee:	48 f7 d1             	not    %rcx
  4023f1:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4023f5:	4c 89 e6             	mov    %r12,%rsi
  4023f8:	89 ef                	mov    %ebp,%edi
  4023fa:	e8 e3 fc ff ff       	callq  4020e2 <rio_writen>
  4023ff:	48 85 c0             	test   %rax,%rax
  402402:	0f 88 6d 02 00 00    	js     402675 <submitr+0x42b>
  402408:	4c 8d a4 24 30 80 00 	lea    0x8030(%rsp),%r12
  40240f:	00 
  402410:	89 ee                	mov    %ebp,%esi
  402412:	4c 89 e7             	mov    %r12,%rdi
  402415:	e8 af fb ff ff       	callq  401fc9 <rio_readinitb>
  40241a:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402421:	00 
  402422:	ba 00 20 00 00       	mov    $0x2000,%edx
  402427:	4c 89 e7             	mov    %r12,%rdi
  40242a:	e8 9c fd ff ff       	callq  4021cb <rio_readlineb>
  40242f:	48 85 c0             	test   %rax,%rax
  402432:	0f 8e ab 02 00 00    	jle    4026e3 <submitr+0x499>
  402438:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  40243f:	00 
  402440:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  402447:	00 
  402448:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  40244f:	00 
  402450:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  402455:	48 8d 35 13 10 00 00 	lea    0x1013(%rip),%rsi        # 40346f <trans_char+0xaf>
  40245c:	b8 00 00 00 00       	mov    $0x0,%eax
  402461:	e8 ca e8 ff ff       	callq  400d30 <__isoc99_sscanf@plt>
  402466:	e9 9f 03 00 00       	jmpq   40280a <submitr+0x5c0>
  40246b:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402472:	3a 20 43 
  402475:	48 89 03             	mov    %rax,(%rbx)
  402478:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40247f:	20 75 6e 
  402482:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402486:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40248d:	74 6f 20 
  402490:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402494:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40249b:	65 20 73 
  40249e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024a2:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4024a9:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4024af:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024b4:	e9 18 03 00 00       	jmpq   4027d1 <submitr+0x587>
  4024b9:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024c0:	3a 20 44 
  4024c3:	48 89 03             	mov    %rax,(%rbx)
  4024c6:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024cd:	20 75 6e 
  4024d0:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024d4:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024db:	74 6f 20 
  4024de:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024e2:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4024e9:	76 65 20 
  4024ec:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024f0:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024f7:	72 20 61 
  4024fa:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024fe:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402505:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  40250b:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40250f:	89 ef                	mov    %ebp,%edi
  402511:	e8 7a e7 ff ff       	callq  400c90 <close@plt>
  402516:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40251b:	e9 b1 02 00 00       	jmpq   4027d1 <submitr+0x587>
  402520:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402527:	3a 20 55 
  40252a:	48 89 03             	mov    %rax,(%rbx)
  40252d:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402534:	20 74 6f 
  402537:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40253b:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402542:	65 63 74 
  402545:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402549:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402550:	68 65 20 
  402553:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402557:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  40255e:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  402564:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  402568:	89 ef                	mov    %ebp,%edi
  40256a:	e8 21 e7 ff ff       	callq  400c90 <close@plt>
  40256f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402574:	e9 58 02 00 00       	jmpq   4027d1 <submitr+0x587>
  402579:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402580:	3a 20 52 
  402583:	48 89 03             	mov    %rax,(%rbx)
  402586:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40258d:	20 73 74 
  402590:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402594:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40259b:	74 6f 6f 
  40259e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025a2:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  4025a9:	65 2e 20 
  4025ac:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025b0:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  4025b7:	61 73 65 
  4025ba:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4025be:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  4025c5:	49 54 52 
  4025c8:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4025cc:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4025d3:	55 46 00 
  4025d6:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025da:	89 ef                	mov    %ebp,%edi
  4025dc:	e8 af e6 ff ff       	callq  400c90 <close@plt>
  4025e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025e6:	e9 e6 01 00 00       	jmpq   4027d1 <submitr+0x587>
  4025eb:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4025f2:	3a 20 52 
  4025f5:	48 89 03             	mov    %rax,(%rbx)
  4025f8:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4025ff:	20 73 74 
  402602:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402606:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  40260d:	63 6f 6e 
  402610:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402614:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40261b:	20 61 6e 
  40261e:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402622:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402629:	67 61 6c 
  40262c:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402630:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402637:	6e 70 72 
  40263a:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40263e:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  402645:	6c 65 20 
  402648:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40264c:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  402653:	63 74 65 
  402656:	48 89 43 38          	mov    %rax,0x38(%rbx)
  40265a:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402660:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  402664:	89 ef                	mov    %ebp,%edi
  402666:	e8 25 e6 ff ff       	callq  400c90 <close@plt>
  40266b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402670:	e9 5c 01 00 00       	jmpq   4027d1 <submitr+0x587>
  402675:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40267c:	3a 20 43 
  40267f:	48 89 03             	mov    %rax,(%rbx)
  402682:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402689:	20 75 6e 
  40268c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402690:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402697:	74 6f 20 
  40269a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40269e:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4026a5:	20 74 6f 
  4026a8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4026ac:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4026b3:	72 65 73 
  4026b6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026ba:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4026c1:	65 72 76 
  4026c4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026c8:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  4026ce:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  4026d2:	89 ef                	mov    %ebp,%edi
  4026d4:	e8 b7 e5 ff ff       	callq  400c90 <close@plt>
  4026d9:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026de:	e9 ee 00 00 00       	jmpq   4027d1 <submitr+0x587>
  4026e3:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026ea:	3a 20 43 
  4026ed:	48 89 03             	mov    %rax,(%rbx)
  4026f0:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026f7:	20 75 6e 
  4026fa:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026fe:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402705:	74 6f 20 
  402708:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40270c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402713:	66 69 72 
  402716:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40271a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402721:	61 64 65 
  402724:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402728:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40272f:	6d 20 72 
  402732:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402736:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40273d:	20 73 65 
  402740:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402744:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  40274b:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  40274f:	89 ef                	mov    %ebp,%edi
  402751:	e8 3a e5 ff ff       	callq  400c90 <close@plt>
  402756:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40275b:	eb 74                	jmp    4027d1 <submitr+0x587>
  40275d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402764:	3a 20 43 
  402767:	48 89 03             	mov    %rax,(%rbx)
  40276a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402771:	20 75 6e 
  402774:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402778:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40277f:	74 6f 20 
  402782:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402786:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  40278d:	68 65 61 
  402790:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402794:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40279b:	66 72 6f 
  40279e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027a2:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  4027a9:	20 72 65 
  4027ac:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027b0:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  4027b7:	73 65 72 
  4027ba:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027be:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  4027c5:	89 ef                	mov    %ebp,%edi
  4027c7:	e8 c4 e4 ff ff       	callq  400c90 <close@plt>
  4027cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027d1:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4027d8:	5b                   	pop    %rbx
  4027d9:	5d                   	pop    %rbp
  4027da:	41 5c                	pop    %r12
  4027dc:	41 5d                	pop    %r13
  4027de:	41 5e                	pop    %r14
  4027e0:	41 5f                	pop    %r15
  4027e2:	c3                   	retq   
  4027e3:	85 c0                	test   %eax,%eax
  4027e5:	74 51                	je     402838 <submitr+0x5ee>
  4027e7:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4027ee:	00 
  4027ef:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  4027f6:	00 
  4027f7:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027fc:	e8 ca f9 ff ff       	callq  4021cb <rio_readlineb>
  402801:	48 85 c0             	test   %rax,%rax
  402804:	0f 8e 53 ff ff ff    	jle    40275d <submitr+0x513>
  40280a:	0f b6 94 24 30 60 00 	movzbl 0x6030(%rsp),%edx
  402811:	00 
  402812:	b8 0d 00 00 00       	mov    $0xd,%eax
  402817:	29 d0                	sub    %edx,%eax
  402819:	75 c8                	jne    4027e3 <submitr+0x599>
  40281b:	0f b6 94 24 31 60 00 	movzbl 0x6031(%rsp),%edx
  402822:	00 
  402823:	b8 0a 00 00 00       	mov    $0xa,%eax
  402828:	29 d0                	sub    %edx,%eax
  40282a:	75 b7                	jne    4027e3 <submitr+0x599>
  40282c:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  402833:	00 
  402834:	f7 d8                	neg    %eax
  402836:	eb ab                	jmp    4027e3 <submitr+0x599>
  402838:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  40283f:	00 
  402840:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402847:	00 
  402848:	ba 00 20 00 00       	mov    $0x2000,%edx
  40284d:	e8 79 f9 ff ff       	callq  4021cb <rio_readlineb>
  402852:	48 85 c0             	test   %rax,%rax
  402855:	7e 67                	jle    4028be <submitr+0x674>
  402857:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  40285e:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402864:	0f 85 d7 00 00 00    	jne    402941 <submitr+0x6f7>
  40286a:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  402871:	00 
  402872:	48 89 df             	mov    %rbx,%rdi
  402875:	e8 a6 e3 ff ff       	callq  400c20 <strcpy@plt>
  40287a:	89 ef                	mov    %ebp,%edi
  40287c:	e8 0f e4 ff ff       	callq  400c90 <close@plt>
  402881:	0f b6 03             	movzbl (%rbx),%eax
  402884:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402889:	29 c2                	sub    %eax,%edx
  40288b:	0f 85 da 00 00 00    	jne    40296b <submitr+0x721>
  402891:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402895:	b8 4b 00 00 00       	mov    $0x4b,%eax
  40289a:	29 c8                	sub    %ecx,%eax
  40289c:	0f 85 cb 00 00 00    	jne    40296d <submitr+0x723>
  4028a2:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  4028a6:	b8 0a 00 00 00       	mov    $0xa,%eax
  4028ab:	29 c8                	sub    %ecx,%eax
  4028ad:	0f 85 ba 00 00 00    	jne    40296d <submitr+0x723>
  4028b3:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  4028b7:	f7 d8                	neg    %eax
  4028b9:	e9 af 00 00 00       	jmpq   40296d <submitr+0x723>
  4028be:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028c5:	3a 20 43 
  4028c8:	48 89 03             	mov    %rax,(%rbx)
  4028cb:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028d2:	20 75 6e 
  4028d5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028d9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028e0:	74 6f 20 
  4028e3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028e7:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  4028ee:	73 74 61 
  4028f1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028f5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  4028fc:	65 73 73 
  4028ff:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402903:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40290a:	72 6f 6d 
  40290d:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402911:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402918:	6c 74 20 
  40291b:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40291f:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  402926:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  40292c:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402930:	89 ef                	mov    %ebp,%edi
  402932:	e8 59 e3 ff ff       	callq  400c90 <close@plt>
  402937:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40293c:	e9 90 fe ff ff       	jmpq   4027d1 <submitr+0x587>
  402941:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  402946:	48 8d 35 eb 0a 00 00 	lea    0xaeb(%rip),%rsi        # 403438 <trans_char+0x78>
  40294d:	48 89 df             	mov    %rbx,%rdi
  402950:	b8 00 00 00 00       	mov    $0x0,%eax
  402955:	e8 46 e4 ff ff       	callq  400da0 <sprintf@plt>
  40295a:	89 ef                	mov    %ebp,%edi
  40295c:	e8 2f e3 ff ff       	callq  400c90 <close@plt>
  402961:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402966:	e9 66 fe ff ff       	jmpq   4027d1 <submitr+0x587>
  40296b:	89 d0                	mov    %edx,%eax
  40296d:	f7 d8                	neg    %eax
  40296f:	0f 84 5c fe ff ff    	je     4027d1 <submitr+0x587>
  402975:	b9 05 00 00 00       	mov    $0x5,%ecx
  40297a:	48 8d 3d ff 0a 00 00 	lea    0xaff(%rip),%rdi        # 403480 <trans_char+0xc0>
  402981:	48 89 de             	mov    %rbx,%rsi
  402984:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402986:	0f 97 c0             	seta   %al
  402989:	0f 92 c1             	setb   %cl
  40298c:	29 c8                	sub    %ecx,%eax
  40298e:	0f be c0             	movsbl %al,%eax
  402991:	85 c0                	test   %eax,%eax
  402993:	0f 84 38 fe ff ff    	je     4027d1 <submitr+0x587>
  402999:	85 d2                	test   %edx,%edx
  40299b:	75 13                	jne    4029b0 <submitr+0x766>
  40299d:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4029a1:	ba 4b 00 00 00       	mov    $0x4b,%edx
  4029a6:	29 c2                	sub    %eax,%edx
  4029a8:	75 06                	jne    4029b0 <submitr+0x766>
  4029aa:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4029ae:	f7 da                	neg    %edx
  4029b0:	89 d0                	mov    %edx,%eax
  4029b2:	f7 d8                	neg    %eax
  4029b4:	0f 84 17 fe ff ff    	je     4027d1 <submitr+0x587>
  4029ba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029bf:	e9 0d fe ff ff       	jmpq   4027d1 <submitr+0x587>

00000000004029c4 <init_timeout>:
  4029c4:	85 ff                	test   %edi,%edi
  4029c6:	74 20                	je     4029e8 <init_timeout+0x24>
  4029c8:	53                   	push   %rbx
  4029c9:	89 fb                	mov    %edi,%ebx
  4029cb:	85 ff                	test   %edi,%edi
  4029cd:	78 1b                	js     4029ea <init_timeout+0x26>
  4029cf:	48 8d 35 05 f6 ff ff 	lea    -0x9fb(%rip),%rsi        # 401fdb <sigalrm_handler>
  4029d6:	bf 0e 00 00 00       	mov    $0xe,%edi
  4029db:	e8 d0 e2 ff ff       	callq  400cb0 <signal@plt>
  4029e0:	89 df                	mov    %ebx,%edi
  4029e2:	e8 99 e2 ff ff       	callq  400c80 <alarm@plt>
  4029e7:	5b                   	pop    %rbx
  4029e8:	f3 c3                	repz retq 
  4029ea:	bb 00 00 00 00       	mov    $0x0,%ebx
  4029ef:	eb de                	jmp    4029cf <init_timeout+0xb>

00000000004029f1 <init_driver>:
  4029f1:	41 54                	push   %r12
  4029f3:	55                   	push   %rbp
  4029f4:	53                   	push   %rbx
  4029f5:	48 83 ec 10          	sub    $0x10,%rsp
  4029f9:	48 89 fd             	mov    %rdi,%rbp
  4029fc:	be 01 00 00 00       	mov    $0x1,%esi
  402a01:	bf 0d 00 00 00       	mov    $0xd,%edi
  402a06:	e8 a5 e2 ff ff       	callq  400cb0 <signal@plt>
  402a0b:	be 01 00 00 00       	mov    $0x1,%esi
  402a10:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a15:	e8 96 e2 ff ff       	callq  400cb0 <signal@plt>
  402a1a:	be 01 00 00 00       	mov    $0x1,%esi
  402a1f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402a24:	e8 87 e2 ff ff       	callq  400cb0 <signal@plt>
  402a29:	ba 00 00 00 00       	mov    $0x0,%edx
  402a2e:	be 01 00 00 00       	mov    $0x1,%esi
  402a33:	bf 02 00 00 00       	mov    $0x2,%edi
  402a38:	e8 93 e3 ff ff       	callq  400dd0 <socket@plt>
  402a3d:	85 c0                	test   %eax,%eax
  402a3f:	0f 88 80 00 00 00    	js     402ac5 <init_driver+0xd4>
  402a45:	89 c3                	mov    %eax,%ebx
  402a47:	48 8d 3d 37 0a 00 00 	lea    0xa37(%rip),%rdi        # 403485 <trans_char+0xc5>
  402a4e:	e8 6d e2 ff ff       	callq  400cc0 <gethostbyname@plt>
  402a53:	48 85 c0             	test   %rax,%rax
  402a56:	0f 84 b5 00 00 00    	je     402b11 <init_driver+0x120>
  402a5c:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402a63:	00 
  402a64:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a6b:	00 00 
  402a6d:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402a73:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402a77:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402a7b:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402a80:	48 8b 39             	mov    (%rcx),%rdi
  402a83:	e8 c8 e2 ff ff       	callq  400d50 <bcopy@plt>
  402a88:	66 c7 44 24 02 3c a4 	movw   $0xa43c,0x2(%rsp)
  402a8f:	ba 10 00 00 00       	mov    $0x10,%edx
  402a94:	48 89 e6             	mov    %rsp,%rsi
  402a97:	89 df                	mov    %ebx,%edi
  402a99:	e8 22 e3 ff ff       	callq  400dc0 <connect@plt>
  402a9e:	85 c0                	test   %eax,%eax
  402aa0:	0f 88 d3 00 00 00    	js     402b79 <init_driver+0x188>
  402aa6:	89 df                	mov    %ebx,%edi
  402aa8:	e8 e3 e1 ff ff       	callq  400c90 <close@plt>
  402aad:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402ab3:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402ab7:	b8 00 00 00 00       	mov    $0x0,%eax
  402abc:	48 83 c4 10          	add    $0x10,%rsp
  402ac0:	5b                   	pop    %rbx
  402ac1:	5d                   	pop    %rbp
  402ac2:	41 5c                	pop    %r12
  402ac4:	c3                   	retq   
  402ac5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402acc:	3a 20 43 
  402acf:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ad3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402ada:	20 75 6e 
  402add:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ae1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402ae8:	74 6f 20 
  402aeb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402aef:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402af6:	65 20 73 
  402af9:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402afd:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402b04:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402b0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b0f:	eb ab                	jmp    402abc <init_driver+0xcb>
  402b11:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402b18:	3a 20 44 
  402b1b:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b1f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402b26:	20 75 6e 
  402b29:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b2d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b34:	74 6f 20 
  402b37:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402b3b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402b42:	76 65 20 
  402b45:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402b49:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402b50:	72 20 61 
  402b53:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402b57:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402b5e:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402b64:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402b68:	89 df                	mov    %ebx,%edi
  402b6a:	e8 21 e1 ff ff       	callq  400c90 <close@plt>
  402b6f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b74:	e9 43 ff ff ff       	jmpq   402abc <init_driver+0xcb>
  402b79:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402b80:	3a 20 55 
  402b83:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402b87:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402b8e:	20 74 6f 
  402b91:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402b95:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402b9c:	65 63 74 
  402b9f:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ba3:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402baa:	65 72 76 
  402bad:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402bb1:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402bb7:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402bbb:	89 df                	mov    %ebx,%edi
  402bbd:	e8 ce e0 ff ff       	callq  400c90 <close@plt>
  402bc2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bc7:	e9 f0 fe ff ff       	jmpq   402abc <init_driver+0xcb>

0000000000402bcc <driver_post>:
  402bcc:	53                   	push   %rbx
  402bcd:	4c 89 cb             	mov    %r9,%rbx
  402bd0:	45 85 c0             	test   %r8d,%r8d
  402bd3:	75 18                	jne    402bed <driver_post+0x21>
  402bd5:	48 85 ff             	test   %rdi,%rdi
  402bd8:	74 05                	je     402bdf <driver_post+0x13>
  402bda:	80 3f 00             	cmpb   $0x0,(%rdi)
  402bdd:	75 32                	jne    402c11 <driver_post+0x45>
  402bdf:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402be4:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402be8:	44 89 c0             	mov    %r8d,%eax
  402beb:	5b                   	pop    %rbx
  402bec:	c3                   	retq   
  402bed:	48 89 ce             	mov    %rcx,%rsi
  402bf0:	48 8d 3d 9c 08 00 00 	lea    0x89c(%rip),%rdi        # 403493 <trans_char+0xd3>
  402bf7:	b8 00 00 00 00       	mov    $0x0,%eax
  402bfc:	e8 5f e0 ff ff       	callq  400c60 <printf@plt>
  402c01:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402c06:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402c0a:	b8 00 00 00 00       	mov    $0x0,%eax
  402c0f:	eb da                	jmp    402beb <driver_post+0x1f>
  402c11:	48 83 ec 08          	sub    $0x8,%rsp
  402c15:	41 51                	push   %r9
  402c17:	49 89 c9             	mov    %rcx,%r9
  402c1a:	49 89 d0             	mov    %rdx,%r8
  402c1d:	48 89 f9             	mov    %rdi,%rcx
  402c20:	48 89 f2             	mov    %rsi,%rdx
  402c23:	be a4 3c 00 00       	mov    $0x3ca4,%esi
  402c28:	48 8d 3d 56 08 00 00 	lea    0x856(%rip),%rdi        # 403485 <trans_char+0xc5>
  402c2f:	e8 16 f6 ff ff       	callq  40224a <submitr>
  402c34:	48 83 c4 10          	add    $0x10,%rsp
  402c38:	eb b1                	jmp    402beb <driver_post+0x1f>

0000000000402c3a <check>:
  402c3a:	89 f8                	mov    %edi,%eax
  402c3c:	c1 e8 1c             	shr    $0x1c,%eax
  402c3f:	85 c0                	test   %eax,%eax
  402c41:	74 1d                	je     402c60 <check+0x26>
  402c43:	b9 00 00 00 00       	mov    $0x0,%ecx
  402c48:	83 f9 1f             	cmp    $0x1f,%ecx
  402c4b:	7f 0d                	jg     402c5a <check+0x20>
  402c4d:	89 f8                	mov    %edi,%eax
  402c4f:	d3 e8                	shr    %cl,%eax
  402c51:	3c 0a                	cmp    $0xa,%al
  402c53:	74 11                	je     402c66 <check+0x2c>
  402c55:	83 c1 08             	add    $0x8,%ecx
  402c58:	eb ee                	jmp    402c48 <check+0xe>
  402c5a:	b8 01 00 00 00       	mov    $0x1,%eax
  402c5f:	c3                   	retq   
  402c60:	b8 00 00 00 00       	mov    $0x0,%eax
  402c65:	c3                   	retq   
  402c66:	b8 00 00 00 00       	mov    $0x0,%eax
  402c6b:	c3                   	retq   

0000000000402c6c <gencookie>:
  402c6c:	53                   	push   %rbx
  402c6d:	83 c7 01             	add    $0x1,%edi
  402c70:	e8 8b df ff ff       	callq  400c00 <srandom@plt>
  402c75:	e8 96 e0 ff ff       	callq  400d10 <random@plt>
  402c7a:	89 c3                	mov    %eax,%ebx
  402c7c:	89 c7                	mov    %eax,%edi
  402c7e:	e8 b7 ff ff ff       	callq  402c3a <check>
  402c83:	85 c0                	test   %eax,%eax
  402c85:	74 ee                	je     402c75 <gencookie+0x9>
  402c87:	89 d8                	mov    %ebx,%eax
  402c89:	5b                   	pop    %rbx
  402c8a:	c3                   	retq   
  402c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000402c90 <__libc_csu_init>:
  402c90:	41 57                	push   %r15
  402c92:	41 56                	push   %r14
  402c94:	41 89 ff             	mov    %edi,%r15d
  402c97:	41 55                	push   %r13
  402c99:	41 54                	push   %r12
  402c9b:	4c 8d 25 66 21 20 00 	lea    0x202166(%rip),%r12        # 604e08 <__frame_dummy_init_array_entry>
  402ca2:	55                   	push   %rbp
  402ca3:	48 8d 2d 66 21 20 00 	lea    0x202166(%rip),%rbp        # 604e10 <__init_array_end>
  402caa:	53                   	push   %rbx
  402cab:	49 89 f6             	mov    %rsi,%r14
  402cae:	49 89 d5             	mov    %rdx,%r13
  402cb1:	4c 29 e5             	sub    %r12,%rbp
  402cb4:	48 83 ec 08          	sub    $0x8,%rsp
  402cb8:	48 c1 fd 03          	sar    $0x3,%rbp
  402cbc:	e8 ef de ff ff       	callq  400bb0 <_init>
  402cc1:	48 85 ed             	test   %rbp,%rbp
  402cc4:	74 20                	je     402ce6 <__libc_csu_init+0x56>
  402cc6:	31 db                	xor    %ebx,%ebx
  402cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402ccf:	00 
  402cd0:	4c 89 ea             	mov    %r13,%rdx
  402cd3:	4c 89 f6             	mov    %r14,%rsi
  402cd6:	44 89 ff             	mov    %r15d,%edi
  402cd9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402cdd:	48 83 c3 01          	add    $0x1,%rbx
  402ce1:	48 39 dd             	cmp    %rbx,%rbp
  402ce4:	75 ea                	jne    402cd0 <__libc_csu_init+0x40>
  402ce6:	48 83 c4 08          	add    $0x8,%rsp
  402cea:	5b                   	pop    %rbx
  402ceb:	5d                   	pop    %rbp
  402cec:	41 5c                	pop    %r12
  402cee:	41 5d                	pop    %r13
  402cf0:	41 5e                	pop    %r14
  402cf2:	41 5f                	pop    %r15
  402cf4:	c3                   	retq   
  402cf5:	90                   	nop
  402cf6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402cfd:	00 00 00 

0000000000402d00 <__libc_csu_fini>:
  402d00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402d04 <_fini>:
  402d04:	48 83 ec 08          	sub    $0x8,%rsp
  402d08:	48 83 c4 08          	add    $0x8,%rsp
  402d0c:	c3                   	retq   
