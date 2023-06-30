
backprop-1.0:     file format elf64-x86-64


Disassembly of section .init:

0000000000400818 <_init>:
  400818:	48 83 ec 08          	sub    $0x8,%rsp
  40081c:	48 8b 05 f5 59 20 00 	mov    0x2059f5(%rip),%rax        # 606218 <_DYNAMIC+0x200>
  400823:	48 85 c0             	test   %rax,%rax
  400826:	74 05                	je     40082d <_init+0x15>
  400828:	e8 23 01 00 00       	callq  400950 <open@plt+0x10>
  40082d:	48 83 c4 08          	add    $0x8,%rsp
  400831:	c3                   	retq   

Disassembly of section .plt:

0000000000400840 <exp@plt-0x10>:
  400840:	ff 35 e2 59 20 00    	pushq  0x2059e2(%rip)        # 606228 <_GLOBAL_OFFSET_TABLE_+0x8>
  400846:	ff 25 e4 59 20 00    	jmpq   *0x2059e4(%rip)        # 606230 <_GLOBAL_OFFSET_TABLE_+0x10>
  40084c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400850 <exp@plt>:
  400850:	ff 25 e2 59 20 00    	jmpq   *0x2059e2(%rip)        # 606238 <_GLOBAL_OFFSET_TABLE_+0x18>
  400856:	68 00 00 00 00       	pushq  $0x0
  40085b:	e9 e0 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400860 <printf@plt>:
  400860:	ff 25 da 59 20 00    	jmpq   *0x2059da(%rip)        # 606240 <_GLOBAL_OFFSET_TABLE_+0x20>
  400866:	68 01 00 00 00       	pushq  $0x1
  40086b:	e9 d0 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400870 <close@plt>:
  400870:	ff 25 d2 59 20 00    	jmpq   *0x2059d2(%rip)        # 606248 <_GLOBAL_OFFSET_TABLE_+0x28>
  400876:	68 02 00 00 00       	pushq  $0x2
  40087b:	e9 c0 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400880 <exit@plt>:
  400880:	ff 25 ca 59 20 00    	jmpq   *0x2059ca(%rip)        # 606250 <_GLOBAL_OFFSET_TABLE_+0x30>
  400886:	68 03 00 00 00       	pushq  $0x3
  40088b:	e9 b0 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400890 <gettimeofday@plt>:
  400890:	ff 25 c2 59 20 00    	jmpq   *0x2059c2(%rip)        # 606258 <_GLOBAL_OFFSET_TABLE_+0x38>
  400896:	68 04 00 00 00       	pushq  $0x4
  40089b:	e9 a0 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008a0 <read@plt>:
  4008a0:	ff 25 ba 59 20 00    	jmpq   *0x2059ba(%rip)        # 606260 <_GLOBAL_OFFSET_TABLE_+0x40>
  4008a6:	68 05 00 00 00       	pushq  $0x5
  4008ab:	e9 90 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008b0 <malloc@plt>:
  4008b0:	ff 25 b2 59 20 00    	jmpq   *0x2059b2(%rip)        # 606268 <_GLOBAL_OFFSET_TABLE_+0x48>
  4008b6:	68 06 00 00 00       	pushq  $0x6
  4008bb:	e9 80 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008c0 <fopen@plt>:
  4008c0:	ff 25 aa 59 20 00    	jmpq   *0x2059aa(%rip)        # 606270 <_GLOBAL_OFFSET_TABLE_+0x50>
  4008c6:	68 07 00 00 00       	pushq  $0x7
  4008cb:	e9 70 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008d0 <__libc_start_main@plt>:
  4008d0:	ff 25 a2 59 20 00    	jmpq   *0x2059a2(%rip)        # 606278 <_GLOBAL_OFFSET_TABLE_+0x58>
  4008d6:	68 08 00 00 00       	pushq  $0x8
  4008db:	e9 60 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008e0 <free@plt>:
  4008e0:	ff 25 9a 59 20 00    	jmpq   *0x20599a(%rip)        # 606280 <_GLOBAL_OFFSET_TABLE_+0x60>
  4008e6:	68 09 00 00 00       	pushq  $0x9
  4008eb:	e9 50 ff ff ff       	jmpq   400840 <_init+0x28>

00000000004008f0 <atoi@plt>:
  4008f0:	ff 25 92 59 20 00    	jmpq   *0x205992(%rip)        # 606288 <_GLOBAL_OFFSET_TABLE_+0x68>
  4008f6:	68 0a 00 00 00       	pushq  $0xa
  4008fb:	e9 40 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400900 <srand@plt>:
  400900:	ff 25 8a 59 20 00    	jmpq   *0x20598a(%rip)        # 606290 <_GLOBAL_OFFSET_TABLE_+0x70>
  400906:	68 0b 00 00 00       	pushq  $0xb
  40090b:	e9 30 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400910 <fclose@plt>:
  400910:	ff 25 82 59 20 00    	jmpq   *0x205982(%rip)        # 606298 <_GLOBAL_OFFSET_TABLE_+0x78>
  400916:	68 0c 00 00 00       	pushq  $0xc
  40091b:	e9 20 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400920 <fwrite@plt>:
  400920:	ff 25 7a 59 20 00    	jmpq   *0x20597a(%rip)        # 6062a0 <_GLOBAL_OFFSET_TABLE_+0x80>
  400926:	68 0d 00 00 00       	pushq  $0xd
  40092b:	e9 10 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400930 <fprintf@plt>:
  400930:	ff 25 72 59 20 00    	jmpq   *0x205972(%rip)        # 6062a8 <_GLOBAL_OFFSET_TABLE_+0x88>
  400936:	68 0e 00 00 00       	pushq  $0xe
  40093b:	e9 00 ff ff ff       	jmpq   400840 <_init+0x28>

0000000000400940 <open@plt>:
  400940:	ff 25 6a 59 20 00    	jmpq   *0x20596a(%rip)        # 6062b0 <_GLOBAL_OFFSET_TABLE_+0x90>
  400946:	68 0f 00 00 00       	pushq  $0xf
  40094b:	e9 f0 fe ff ff       	jmpq   400840 <_init+0x28>

Disassembly of section .plt.got:

0000000000400950 <.plt.got>:
  400950:	ff 25 c2 58 20 00    	jmpq   *0x2058c2(%rip)        # 606218 <_DYNAMIC+0x200>
  400956:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400960 <_start>:
  400960:	31 ed                	xor    %ebp,%ebp
  400962:	49 89 d1             	mov    %rdx,%r9
  400965:	5e                   	pop    %rsi
  400966:	48 89 e2             	mov    %rsp,%rdx
  400969:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40096d:	50                   	push   %rax
  40096e:	54                   	push   %rsp
  40096f:	49 c7 c0 00 56 40 00 	mov    $0x405600,%r8
  400976:	48 c7 c1 90 55 40 00 	mov    $0x405590,%rcx
  40097d:	48 c7 c7 e0 0a 40 00 	mov    $0x400ae0,%rdi
  400984:	e8 47 ff ff ff       	callq  4008d0 <__libc_start_main@plt>
  400989:	f4                   	hlt    
  40098a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400990 <deregister_tm_clones>:
  400990:	b8 cf 62 60 00       	mov    $0x6062cf,%eax
  400995:	55                   	push   %rbp
  400996:	48 2d c8 62 60 00    	sub    $0x6062c8,%rax
  40099c:	48 83 f8 0e          	cmp    $0xe,%rax
  4009a0:	48 89 e5             	mov    %rsp,%rbp
  4009a3:	76 1b                	jbe    4009c0 <deregister_tm_clones+0x30>
  4009a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4009aa:	48 85 c0             	test   %rax,%rax
  4009ad:	74 11                	je     4009c0 <deregister_tm_clones+0x30>
  4009af:	5d                   	pop    %rbp
  4009b0:	bf c8 62 60 00       	mov    $0x6062c8,%edi
  4009b5:	ff e0                	jmpq   *%rax
  4009b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4009be:	00 00 
  4009c0:	5d                   	pop    %rbp
  4009c1:	c3                   	retq   
  4009c2:	0f 1f 40 00          	nopl   0x0(%rax)
  4009c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4009cd:	00 00 00 

00000000004009d0 <register_tm_clones>:
  4009d0:	be c8 62 60 00       	mov    $0x6062c8,%esi
  4009d5:	55                   	push   %rbp
  4009d6:	48 81 ee c8 62 60 00 	sub    $0x6062c8,%rsi
  4009dd:	48 c1 fe 03          	sar    $0x3,%rsi
  4009e1:	48 89 e5             	mov    %rsp,%rbp
  4009e4:	48 89 f0             	mov    %rsi,%rax
  4009e7:	48 c1 e8 3f          	shr    $0x3f,%rax
  4009eb:	48 01 c6             	add    %rax,%rsi
  4009ee:	48 d1 fe             	sar    %rsi
  4009f1:	74 15                	je     400a08 <register_tm_clones+0x38>
  4009f3:	b8 00 00 00 00       	mov    $0x0,%eax
  4009f8:	48 85 c0             	test   %rax,%rax
  4009fb:	74 0b                	je     400a08 <register_tm_clones+0x38>
  4009fd:	5d                   	pop    %rbp
  4009fe:	bf c8 62 60 00       	mov    $0x6062c8,%edi
  400a03:	ff e0                	jmpq   *%rax
  400a05:	0f 1f 00             	nopl   (%rax)
  400a08:	5d                   	pop    %rbp
  400a09:	c3                   	retq   
  400a0a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400a10 <__do_global_dtors_aux>:
  400a10:	80 3d d1 58 20 00 00 	cmpb   $0x0,0x2058d1(%rip)        # 6062e8 <completed.7594>
  400a17:	75 11                	jne    400a2a <__do_global_dtors_aux+0x1a>
  400a19:	55                   	push   %rbp
  400a1a:	48 89 e5             	mov    %rsp,%rbp
  400a1d:	e8 6e ff ff ff       	callq  400990 <deregister_tm_clones>
  400a22:	5d                   	pop    %rbp
  400a23:	c6 05 be 58 20 00 01 	movb   $0x1,0x2058be(%rip)        # 6062e8 <completed.7594>
  400a2a:	f3 c3                	repz retq 
  400a2c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a30 <frame_dummy>:
  400a30:	bf 10 60 60 00       	mov    $0x606010,%edi
  400a35:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400a39:	75 05                	jne    400a40 <frame_dummy+0x10>
  400a3b:	eb 93                	jmp    4009d0 <register_tm_clones>
  400a3d:	0f 1f 00             	nopl   (%rax)
  400a40:	b8 00 00 00 00       	mov    $0x0,%eax
  400a45:	48 85 c0             	test   %rax,%rax
  400a48:	74 f1                	je     400a3b <frame_dummy+0xb>
  400a4a:	55                   	push   %rbp
  400a4b:	48 89 e5             	mov    %rsp,%rbp
  400a4e:	ff d0                	callq  *%rax
  400a50:	5d                   	pop    %rbp
  400a51:	e9 7a ff ff ff       	jmpq   4009d0 <register_tm_clones>
  400a56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a5d:	00 00 00 

0000000000400a60 <gettime>:
  400a60:	55                   	push   %rbp
  400a61:	48 89 e5             	mov    %rsp,%rbp
  400a64:	48 83 ec 20          	sub    $0x20,%rsp
  400a68:	48 8d 7d f0          	lea    -0x10(%rbp),%rdi
  400a6c:	48 be 00 00 00 00 00 	movabs $0x0,%rsi
  400a73:	00 00 00 
  400a76:	e8 15 fe ff ff       	callq  400890 <gettimeofday@plt>
  400a7b:	f2 0f 10 04 25 18 56 	movsd  0x405618,%xmm0
  400a82:	40 00 
  400a84:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  400a88:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  400a8c:	f2 48 0f 2a ce       	cvtsi2sd %rsi,%xmm1
  400a91:	f2 48 0f 2a d7       	cvtsi2sd %rdi,%xmm2
  400a96:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400a9a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  400a9e:	f2 48 0f 2a de       	cvtsi2sd %rsi,%xmm3
  400aa3:	f2 48 0f 2a e7       	cvtsi2sd %rdi,%xmm4
  400aa8:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
  400aac:	f2 0f 59 e0          	mulsd  %xmm0,%xmm4
  400ab0:	f2 0f 58 cb          	addsd  %xmm3,%xmm1
  400ab4:	f2 0f 58 d4          	addsd  %xmm4,%xmm2
  400ab8:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
  400abc:	89 45 ec             	mov    %eax,-0x14(%rbp)
  400abf:	f2 0f 11 4d e0       	movsd  %xmm1,-0x20(%rbp)
  400ac4:	0f 84 05 00 00 00    	je     400acf <gettime+0x6f>
  400aca:	e8 91 4a 00 00       	callq  405560 <check_flag>
  400acf:	f2 0f 10 45 e0       	movsd  -0x20(%rbp),%xmm0
  400ad4:	48 83 c4 20          	add    $0x20,%rsp
  400ad8:	5d                   	pop    %rbp
  400ad9:	c3                   	retq   
  400ada:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400ae0 <main>:
  400ae0:	55                   	push   %rbp
  400ae1:	48 89 e5             	mov    %rsp,%rbp
  400ae4:	48 83 ec 30          	sub    $0x30,%rsp
  400ae8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400aeb:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400aef:	8b 7d fc             	mov    -0x4(%rbp),%edi
  400af2:	3b 7d fc             	cmp    -0x4(%rbp),%edi
  400af5:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400af8:	0f 84 05 00 00 00    	je     400b03 <main+0x23>
  400afe:	e8 5d 4a 00 00       	callq  405560 <check_flag>
  400b03:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400b07:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  400b0b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400b0f:	0f 84 05 00 00 00    	je     400b1a <main+0x3a>
  400b15:	e8 46 4a 00 00       	callq  405560 <check_flag>
  400b1a:	8b 7d ec             	mov    -0x14(%rbp),%edi
  400b1d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
  400b21:	e8 5a 47 00 00       	callq  405280 <setup>
  400b26:	bf 00 00 00 00       	mov    $0x0,%edi
  400b2b:	89 45 dc             	mov    %eax,-0x24(%rbp)
  400b2e:	89 f8                	mov    %edi,%eax
  400b30:	48 83 c4 30          	add    $0x30,%rsp
  400b34:	5d                   	pop    %rbp
  400b35:	c3                   	retq   
  400b36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400b3d:	00 00 00 

0000000000400b40 <bpnn_train_kernel>:
  400b40:	55                   	push   %rbp
  400b41:	48 89 e5             	mov    %rsp,%rbp
  400b44:	48 81 ec 40 01 00 00 	sub    $0x140,%rsp
  400b4b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400b4f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  400b53:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  400b57:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400b5b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400b5f:	8b 02                	mov    (%rdx),%eax
  400b61:	3b 06                	cmp    (%rsi),%eax
  400b63:	89 45 d0             	mov    %eax,-0x30(%rbp)
  400b66:	0f 84 05 00 00 00    	je     400b71 <bpnn_train_kernel+0x31>
  400b6c:	e8 ef 49 00 00       	callq  405560 <check_flag>
  400b71:	8b 45 d0             	mov    -0x30(%rbp),%eax
  400b74:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  400b77:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400b7b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400b7f:	8b 71 04             	mov    0x4(%rcx),%esi
  400b82:	3b 72 04             	cmp    0x4(%rdx),%esi
  400b85:	89 75 cc             	mov    %esi,-0x34(%rbp)
  400b88:	0f 84 05 00 00 00    	je     400b93 <bpnn_train_kernel+0x53>
  400b8e:	e8 cd 49 00 00       	callq  405560 <check_flag>
  400b93:	8b 45 cc             	mov    -0x34(%rbp),%eax
  400b96:	89 45 e0             	mov    %eax,-0x20(%rbp)
  400b99:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400b9d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400ba1:	8b 71 08             	mov    0x8(%rcx),%esi
  400ba4:	3b 72 08             	cmp    0x8(%rdx),%esi
  400ba7:	89 75 c8             	mov    %esi,-0x38(%rbp)
  400baa:	0f 84 05 00 00 00    	je     400bb5 <bpnn_train_kernel+0x75>
  400bb0:	e8 ab 49 00 00       	callq  405560 <check_flag>
  400bb5:	48 8d 3c 25 30 56 40 	lea    0x405630,%rdi
  400bbc:	00 
  400bbd:	8b 45 c8             	mov    -0x38(%rbp),%eax
  400bc0:	89 45 dc             	mov    %eax,-0x24(%rbp)
  400bc3:	b0 00                	mov    $0x0,%al
  400bc5:	e8 96 fc ff ff       	callq  400860 <printf@plt>
  400bca:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  400bce:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400bd2:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  400bd6:	48 3b 79 10          	cmp    0x10(%rcx),%rdi
  400bda:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  400bdd:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400be1:	0f 84 05 00 00 00    	je     400bec <bpnn_train_kernel+0xac>
  400be7:	e8 74 49 00 00       	callq  405560 <check_flag>
  400bec:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400bf0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400bf4:	48 8b 40 18          	mov    0x18(%rax),%rax
  400bf8:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  400bfc:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  400c00:	0f 84 05 00 00 00    	je     400c0b <bpnn_train_kernel+0xcb>
  400c06:	e8 55 49 00 00       	callq  405560 <check_flag>
  400c0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c0f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400c13:	48 8b 40 40          	mov    0x40(%rax),%rax
  400c17:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  400c1b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  400c1f:	0f 84 05 00 00 00    	je     400c2a <bpnn_train_kernel+0xea>
  400c25:	e8 36 49 00 00       	callq  405560 <check_flag>
  400c2a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400c2d:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400c30:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  400c33:	0f 84 05 00 00 00    	je     400c3e <bpnn_train_kernel+0xfe>
  400c39:	e8 22 49 00 00       	callq  405560 <check_flag>
  400c3e:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400c41:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400c44:	89 45 a0             	mov    %eax,-0x60(%rbp)
  400c47:	0f 84 05 00 00 00    	je     400c52 <bpnn_train_kernel+0x112>
  400c4d:	e8 0e 49 00 00       	callq  405560 <check_flag>
  400c52:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  400c56:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  400c5a:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  400c5e:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  400c61:	44 8b 45 a0          	mov    -0x60(%rbp),%r8d
  400c65:	e8 d6 18 00 00       	callq  402540 <bpnn_layerforward>
  400c6a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400c6e:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400c72:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  400c76:	48 3b 56 18          	cmp    0x18(%rsi),%rdx
  400c7a:	48 89 55 98          	mov    %rdx,-0x68(%rbp)
  400c7e:	0f 84 05 00 00 00    	je     400c89 <bpnn_train_kernel+0x149>
  400c84:	e8 d7 48 00 00       	callq  405560 <check_flag>
  400c89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c8d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400c91:	48 8b 40 20          	mov    0x20(%rax),%rax
  400c95:	48 3b 41 20          	cmp    0x20(%rcx),%rax
  400c99:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  400c9d:	0f 84 05 00 00 00    	je     400ca8 <bpnn_train_kernel+0x168>
  400ca3:	e8 b8 48 00 00       	callq  405560 <check_flag>
  400ca8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400cac:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400cb0:	48 8b 40 48          	mov    0x48(%rax),%rax
  400cb4:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  400cb8:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  400cbc:	0f 84 05 00 00 00    	je     400cc7 <bpnn_train_kernel+0x187>
  400cc2:	e8 99 48 00 00       	callq  405560 <check_flag>
  400cc7:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400cca:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400ccd:	89 45 84             	mov    %eax,-0x7c(%rbp)
  400cd0:	0f 84 05 00 00 00    	je     400cdb <bpnn_train_kernel+0x19b>
  400cd6:	e8 85 48 00 00       	callq  405560 <check_flag>
  400cdb:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400cde:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  400ce1:	89 45 80             	mov    %eax,-0x80(%rbp)
  400ce4:	0f 84 05 00 00 00    	je     400cef <bpnn_train_kernel+0x1af>
  400cea:	e8 71 48 00 00       	callq  405560 <check_flag>
  400cef:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  400cf3:	48 8b 75 90          	mov    -0x70(%rbp),%rsi
  400cf7:	48 8b 55 88          	mov    -0x78(%rbp),%rdx
  400cfb:	8b 4d 84             	mov    -0x7c(%rbp),%ecx
  400cfe:	44 8b 45 80          	mov    -0x80(%rbp),%r8d
  400d02:	e8 39 18 00 00       	callq  402540 <bpnn_layerforward>
  400d07:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400d0b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400d0f:	48 8b 52 30          	mov    0x30(%rdx),%rdx
  400d13:	48 3b 56 30          	cmp    0x30(%rsi),%rdx
  400d17:	48 89 95 78 ff ff ff 	mov    %rdx,-0x88(%rbp)
  400d1e:	0f 84 05 00 00 00    	je     400d29 <bpnn_train_kernel+0x1e9>
  400d24:	e8 37 48 00 00       	callq  405560 <check_flag>
  400d29:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d2d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400d31:	48 8b 40 38          	mov    0x38(%rax),%rax
  400d35:	48 3b 41 38          	cmp    0x38(%rcx),%rax
  400d39:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  400d40:	0f 84 05 00 00 00    	je     400d4b <bpnn_train_kernel+0x20b>
  400d46:	e8 15 48 00 00       	callq  405560 <check_flag>
  400d4b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400d4f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400d53:	48 8b 40 20          	mov    0x20(%rax),%rax
  400d57:	48 3b 41 20          	cmp    0x20(%rcx),%rax
  400d5b:	48 89 85 68 ff ff ff 	mov    %rax,-0x98(%rbp)
  400d62:	0f 84 05 00 00 00    	je     400d6d <bpnn_train_kernel+0x22d>
  400d68:	e8 f3 47 00 00       	callq  405560 <check_flag>
  400d6d:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400d70:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  400d73:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  400d79:	0f 84 05 00 00 00    	je     400d84 <bpnn_train_kernel+0x244>
  400d7f:	e8 dc 47 00 00       	callq  405560 <check_flag>
  400d84:	4c 8d 45 d8          	lea    -0x28(%rbp),%r8
  400d88:	48 8b bd 78 ff ff ff 	mov    -0x88(%rbp),%rdi
  400d8f:	48 8b b5 70 ff ff ff 	mov    -0x90(%rbp),%rsi
  400d96:	48 8b 95 68 ff ff ff 	mov    -0x98(%rbp),%rdx
  400d9d:	8b 8d 64 ff ff ff    	mov    -0x9c(%rbp),%ecx
  400da3:	e8 c8 19 00 00       	callq  402770 <bpnn_output_error>
  400da8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400dac:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  400db0:	48 8b 52 28          	mov    0x28(%rdx),%rdx
  400db4:	48 3b 56 28          	cmp    0x28(%rsi),%rdx
  400db8:	48 89 95 58 ff ff ff 	mov    %rdx,-0xa8(%rbp)
  400dbf:	0f 84 05 00 00 00    	je     400dca <bpnn_train_kernel+0x28a>
  400dc5:	e8 96 47 00 00       	callq  405560 <check_flag>
  400dca:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400dcd:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400dd0:	89 85 54 ff ff ff    	mov    %eax,-0xac(%rbp)
  400dd6:	0f 84 05 00 00 00    	je     400de1 <bpnn_train_kernel+0x2a1>
  400ddc:	e8 7f 47 00 00       	callq  405560 <check_flag>
  400de1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400de5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400de9:	48 8b 40 30          	mov    0x30(%rax),%rax
  400ded:	48 3b 41 30          	cmp    0x30(%rcx),%rax
  400df1:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  400df8:	0f 84 05 00 00 00    	je     400e03 <bpnn_train_kernel+0x2c3>
  400dfe:	e8 5d 47 00 00       	callq  405560 <check_flag>
  400e03:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400e06:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  400e09:	89 85 44 ff ff ff    	mov    %eax,-0xbc(%rbp)
  400e0f:	0f 84 05 00 00 00    	je     400e1a <bpnn_train_kernel+0x2da>
  400e15:	e8 46 47 00 00       	callq  405560 <check_flag>
  400e1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e1e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400e22:	48 8b 40 48          	mov    0x48(%rax),%rax
  400e26:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  400e2a:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  400e31:	0f 84 05 00 00 00    	je     400e3c <bpnn_train_kernel+0x2fc>
  400e37:	e8 24 47 00 00       	callq  405560 <check_flag>
  400e3c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e40:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400e44:	48 8b 40 18          	mov    0x18(%rax),%rax
  400e48:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  400e4c:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  400e53:	0f 84 05 00 00 00    	je     400e5e <bpnn_train_kernel+0x31e>
  400e59:	e8 02 47 00 00       	callq  405560 <check_flag>
  400e5e:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
  400e62:	48 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%rdi
  400e69:	8b b5 54 ff ff ff    	mov    -0xac(%rbp),%esi
  400e6f:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
  400e76:	8b 8d 44 ff ff ff    	mov    -0xbc(%rbp),%ecx
  400e7c:	4c 8b 85 38 ff ff ff 	mov    -0xc8(%rbp),%r8
  400e83:	4c 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%r9
  400e8a:	48 89 04 24          	mov    %rax,(%rsp)
  400e8e:	e8 0d 1c 00 00       	callq  402aa0 <bpnn_hidden_error>
  400e93:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e97:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400e9b:	48 8b 40 30          	mov    0x30(%rax),%rax
  400e9f:	48 3b 42 30          	cmp    0x30(%rdx),%rax
  400ea3:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  400eaa:	0f 84 05 00 00 00    	je     400eb5 <bpnn_train_kernel+0x375>
  400eb0:	e8 ab 46 00 00       	callq  405560 <check_flag>
  400eb5:	8b 45 dc             	mov    -0x24(%rbp),%eax
  400eb8:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  400ebb:	89 85 24 ff ff ff    	mov    %eax,-0xdc(%rbp)
  400ec1:	0f 84 05 00 00 00    	je     400ecc <bpnn_train_kernel+0x38c>
  400ec7:	e8 94 46 00 00       	callq  405560 <check_flag>
  400ecc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ed0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400ed4:	48 8b 40 18          	mov    0x18(%rax),%rax
  400ed8:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  400edc:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  400ee3:	0f 84 05 00 00 00    	je     400eee <bpnn_train_kernel+0x3ae>
  400ee9:	e8 72 46 00 00       	callq  405560 <check_flag>
  400eee:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400ef1:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400ef4:	89 85 14 ff ff ff    	mov    %eax,-0xec(%rbp)
  400efa:	0f 84 05 00 00 00    	je     400f05 <bpnn_train_kernel+0x3c5>
  400f00:	e8 5b 46 00 00       	callq  405560 <check_flag>
  400f05:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f09:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400f0d:	48 8b 40 48          	mov    0x48(%rax),%rax
  400f11:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  400f15:	48 89 85 08 ff ff ff 	mov    %rax,-0xf8(%rbp)
  400f1c:	0f 84 05 00 00 00    	je     400f27 <bpnn_train_kernel+0x3e7>
  400f22:	e8 39 46 00 00       	callq  405560 <check_flag>
  400f27:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f2b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400f2f:	48 8b 40 58          	mov    0x58(%rax),%rax
  400f33:	48 3b 41 58          	cmp    0x58(%rcx),%rax
  400f37:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  400f3e:	0f 84 05 00 00 00    	je     400f49 <bpnn_train_kernel+0x409>
  400f44:	e8 17 46 00 00       	callq  405560 <check_flag>
  400f49:	48 8b bd 28 ff ff ff 	mov    -0xd8(%rbp),%rdi
  400f50:	8b b5 24 ff ff ff    	mov    -0xdc(%rbp),%esi
  400f56:	48 8b 95 18 ff ff ff 	mov    -0xe8(%rbp),%rdx
  400f5d:	8b 8d 14 ff ff ff    	mov    -0xec(%rbp),%ecx
  400f63:	4c 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%r8
  400f6a:	4c 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%r9
  400f71:	e8 3a 1f 00 00       	callq  402eb0 <bpnn_adjust_weights>
  400f76:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  400f7a:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  400f7e:	48 8b 52 28          	mov    0x28(%rdx),%rdx
  400f82:	48 3b 57 28          	cmp    0x28(%rdi),%rdx
  400f86:	48 89 95 f8 fe ff ff 	mov    %rdx,-0x108(%rbp)
  400f8d:	0f 84 05 00 00 00    	je     400f98 <bpnn_train_kernel+0x458>
  400f93:	e8 c8 45 00 00       	callq  405560 <check_flag>
  400f98:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400f9b:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400f9e:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%rbp)
  400fa4:	0f 84 05 00 00 00    	je     400faf <bpnn_train_kernel+0x46f>
  400faa:	e8 b1 45 00 00       	callq  405560 <check_flag>
  400faf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fb3:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400fb7:	48 8b 40 10          	mov    0x10(%rax),%rax
  400fbb:	48 3b 41 10          	cmp    0x10(%rcx),%rax
  400fbf:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  400fc6:	0f 84 05 00 00 00    	je     400fd1 <bpnn_train_kernel+0x491>
  400fcc:	e8 8f 45 00 00       	callq  405560 <check_flag>
  400fd1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  400fd4:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400fd7:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%rbp)
  400fdd:	0f 84 05 00 00 00    	je     400fe8 <bpnn_train_kernel+0x4a8>
  400fe3:	e8 78 45 00 00       	callq  405560 <check_flag>
  400fe8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400fec:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  400ff0:	48 8b 40 40          	mov    0x40(%rax),%rax
  400ff4:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  400ff8:	48 89 85 d8 fe ff ff 	mov    %rax,-0x128(%rbp)
  400fff:	0f 84 05 00 00 00    	je     40100a <bpnn_train_kernel+0x4ca>
  401005:	e8 56 45 00 00       	callq  405560 <check_flag>
  40100a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40100e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401012:	48 8b 40 50          	mov    0x50(%rax),%rax
  401016:	48 3b 41 50          	cmp    0x50(%rcx),%rax
  40101a:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
  401021:	0f 84 05 00 00 00    	je     40102c <bpnn_train_kernel+0x4ec>
  401027:	e8 34 45 00 00       	callq  405560 <check_flag>
  40102c:	48 8b bd f8 fe ff ff 	mov    -0x108(%rbp),%rdi
  401033:	8b b5 f4 fe ff ff    	mov    -0x10c(%rbp),%esi
  401039:	48 8b 95 e8 fe ff ff 	mov    -0x118(%rbp),%rdx
  401040:	8b 8d e4 fe ff ff    	mov    -0x11c(%rbp),%ecx
  401046:	4c 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%r8
  40104d:	4c 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%r9
  401054:	e8 57 1e 00 00       	callq  402eb0 <bpnn_adjust_weights>
  401059:	48 81 c4 40 01 00 00 	add    $0x140,%rsp
  401060:	5d                   	pop    %rbp
  401061:	c3                   	retq   
  401062:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  401069:	1f 84 00 00 00 00 00 

0000000000401070 <drnd>:
  401070:	55                   	push   %rbp
  401071:	48 89 e5             	mov    %rsp,%rbp
  401074:	f3 0f 10 04 25 28 56 	movss  0x405628,%xmm0
  40107b:	40 00 
  40107d:	5d                   	pop    %rbp
  40107e:	c3                   	retq   
  40107f:	90                   	nop

0000000000401080 <dpn1>:
  401080:	55                   	push   %rbp
  401081:	48 89 e5             	mov    %rsp,%rbp
  401084:	48 83 ec 10          	sub    $0x10,%rsp
  401088:	e8 e3 ff ff ff       	callq  401070 <drnd>
  40108d:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  401094:	00 00 00 
  401097:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  40109c:	48 b8 02 00 00 00 00 	movabs $0x2,%rax
  4010a3:	00 00 00 
  4010a6:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
  4010ab:	f3 0f 5a d8          	cvtss2sd %xmm0,%xmm3
  4010af:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4010b3:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
  4010b7:	f2 0f 59 c2          	mulsd  %xmm2,%xmm0
  4010bb:	f2 0f 5c d9          	subsd  %xmm1,%xmm3
  4010bf:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
  4010c3:	f2 0f 5a cb          	cvtsd2ss %xmm3,%xmm1
  4010c7:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  4010cb:	0f 2e c8             	ucomiss %xmm0,%xmm1
  4010ce:	f3 0f 11 4d fc       	movss  %xmm1,-0x4(%rbp)
  4010d3:	0f 84 05 00 00 00    	je     4010de <dpn1+0x5e>
  4010d9:	e8 82 44 00 00       	callq  405560 <check_flag>
  4010de:	f3 0f 10 45 fc       	movss  -0x4(%rbp),%xmm0
  4010e3:	48 83 c4 10          	add    $0x10,%rsp
  4010e7:	5d                   	pop    %rbp
  4010e8:	c3                   	retq   
  4010e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004010f0 <squash>:
  4010f0:	55                   	push   %rbp
  4010f1:	48 89 e5             	mov    %rsp,%rbp
  4010f4:	48 83 ec 20          	sub    $0x20,%rsp
  4010f8:	f2 0f 5a c8          	cvtsd2ss %xmm0,%xmm1
  4010fc:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  401100:	0f 2e c8             	ucomiss %xmm0,%xmm1
  401103:	f3 0f 11 4d f4       	movss  %xmm1,-0xc(%rbp)
  401108:	0f 84 05 00 00 00    	je     401113 <squash+0x23>
  40110e:	e8 4d 44 00 00       	callq  405560 <check_flag>
  401113:	f3 0f 10 45 f4       	movss  -0xc(%rbp),%xmm0
  401118:	f3 0f 11 45 fc       	movss  %xmm0,-0x4(%rbp)
  40111d:	f3 0f 10 4d fc       	movss  -0x4(%rbp),%xmm1
  401122:	f3 0f 10 55 fc       	movss  -0x4(%rbp),%xmm2
  401127:	66 0f 7e c8          	movd   %xmm1,%eax
  40112b:	35 00 00 00 80       	xor    $0x80000000,%eax
  401130:	66 0f 6e c8          	movd   %eax,%xmm1
  401134:	66 0f 7e d0          	movd   %xmm2,%eax
  401138:	35 00 00 00 80       	xor    $0x80000000,%eax
  40113d:	66 0f 6e d0          	movd   %eax,%xmm2
  401141:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  401145:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  401149:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
  40114d:	f2 0f 11 4d e8       	movsd  %xmm1,-0x18(%rbp)
  401152:	0f 84 05 00 00 00    	je     40115d <squash+0x6d>
  401158:	e8 03 44 00 00       	callq  405560 <check_flag>
  40115d:	f2 0f 10 45 e8       	movsd  -0x18(%rbp),%xmm0
  401162:	e8 e9 f6 ff ff       	callq  400850 <exp@plt>
  401167:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  40116e:	00 00 00 
  401171:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
  401176:	0f 28 d1             	movaps %xmm1,%xmm2
  401179:	f2 0f 58 d0          	addsd  %xmm0,%xmm2
  40117d:	0f 28 d9             	movaps %xmm1,%xmm3
  401180:	f2 0f 58 d8          	addsd  %xmm0,%xmm3
  401184:	0f 28 c1             	movaps %xmm1,%xmm0
  401187:	f2 0f 5e c2          	divsd  %xmm2,%xmm0
  40118b:	f2 0f 5e cb          	divsd  %xmm3,%xmm1
  40118f:	f2 0f 5a c0          	cvtsd2ss %xmm0,%xmm0
  401193:	f2 0f 5a c9          	cvtsd2ss %xmm1,%xmm1
  401197:	0f 2e c1             	ucomiss %xmm1,%xmm0
  40119a:	f3 0f 11 45 e4       	movss  %xmm0,-0x1c(%rbp)
  40119f:	0f 84 05 00 00 00    	je     4011aa <squash+0xba>
  4011a5:	e8 b6 43 00 00       	callq  405560 <check_flag>
  4011aa:	f3 0f 10 45 e4       	movss  -0x1c(%rbp),%xmm0
  4011af:	48 83 c4 20          	add    $0x20,%rsp
  4011b3:	5d                   	pop    %rbp
  4011b4:	c3                   	retq   
  4011b5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
  4011bc:	00 00 00 00 

00000000004011c0 <alloc_1d_dbl>:
  4011c0:	55                   	push   %rbp
  4011c1:	48 89 e5             	mov    %rsp,%rbp
  4011c4:	48 83 ec 40          	sub    $0x40,%rsp
  4011c8:	89 7d f4             	mov    %edi,-0xc(%rbp)
  4011cb:	8b 7d f4             	mov    -0xc(%rbp),%edi
  4011ce:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4011d1:	48 63 cf             	movslq %edi,%rcx
  4011d4:	48 63 d0             	movslq %eax,%rdx
  4011d7:	48 c1 e1 02          	shl    $0x2,%rcx
  4011db:	48 c1 e2 02          	shl    $0x2,%rdx
  4011df:	89 c8                	mov    %ecx,%eax
  4011e1:	89 d7                	mov    %edx,%edi
  4011e3:	89 c0                	mov    %eax,%eax
  4011e5:	89 c1                	mov    %eax,%ecx
  4011e7:	89 f8                	mov    %edi,%eax
  4011e9:	89 c2                	mov    %eax,%edx
  4011eb:	48 39 d1             	cmp    %rdx,%rcx
  4011ee:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
  4011f2:	0f 84 05 00 00 00    	je     4011fd <alloc_1d_dbl+0x3d>
  4011f8:	e8 63 43 00 00       	callq  405560 <check_flag>
  4011fd:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  401201:	e8 aa f6 ff ff       	callq  4008b0 <malloc@plt>
  401206:	48 89 c7             	mov    %rax,%rdi
  401209:	48 39 c7             	cmp    %rax,%rdi
  40120c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401210:	0f 84 05 00 00 00    	je     40121b <alloc_1d_dbl+0x5b>
  401216:	e8 45 43 00 00       	callq  405560 <check_flag>
  40121b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40121f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  401223:	48 85 c0             	test   %rax,%rax
  401226:	0f 94 c1             	sete   %cl
  401229:	b2 01                	mov    $0x1,%dl
  40122b:	84 d2                	test   %dl,%dl
  40122d:	88 4d d7             	mov    %cl,-0x29(%rbp)
  401230:	0f 85 0a 00 00 00    	jne    401240 <alloc_1d_dbl+0x80>
  401236:	e9 00 00 00 00       	jmpq   40123b <alloc_1d_dbl+0x7b>
  40123b:	e8 20 43 00 00       	callq  405560 <check_flag>
  401240:	8a 45 d7             	mov    -0x29(%rbp),%al
  401243:	a8 01                	test   $0x1,%al
  401245:	0f 85 05 00 00 00    	jne    401250 <alloc_1d_dbl+0x90>
  40124b:	e9 1f 00 00 00       	jmpq   40126f <alloc_1d_dbl+0xaf>
  401250:	48 8d 3c 25 4c 56 40 	lea    0x40564c,%rdi
  401257:	00 
  401258:	b0 00                	mov    $0x0,%al
  40125a:	e8 01 f6 ff ff       	callq  400860 <printf@plt>
  40125f:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401266:	00 
  401267:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40126a:	e9 1f 00 00 00       	jmpq   40128e <alloc_1d_dbl+0xce>
  40126f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401273:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  401277:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40127b:	0f 84 05 00 00 00    	je     401286 <alloc_1d_dbl+0xc6>
  401281:	e8 da 42 00 00       	callq  405560 <check_flag>
  401286:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40128a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40128e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401292:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  401296:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40129a:	0f 84 05 00 00 00    	je     4012a5 <alloc_1d_dbl+0xe5>
  4012a0:	e8 bb 42 00 00       	callq  405560 <check_flag>
  4012a5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4012a9:	48 83 c4 40          	add    $0x40,%rsp
  4012ad:	5d                   	pop    %rbp
  4012ae:	c3                   	retq   
  4012af:	90                   	nop

00000000004012b0 <alloc_2d_dbl>:
  4012b0:	55                   	push   %rbp
  4012b1:	48 89 e5             	mov    %rsp,%rbp
  4012b4:	48 83 ec 70          	sub    $0x70,%rsp
  4012b8:	89 7d f4             	mov    %edi,-0xc(%rbp)
  4012bb:	89 75 f0             	mov    %esi,-0x10(%rbp)
  4012be:	8b 75 f4             	mov    -0xc(%rbp),%esi
  4012c1:	8b 7d f4             	mov    -0xc(%rbp),%edi
  4012c4:	48 63 c6             	movslq %esi,%rax
  4012c7:	48 63 cf             	movslq %edi,%rcx
  4012ca:	48 c1 e0 03          	shl    $0x3,%rax
  4012ce:	48 c1 e1 03          	shl    $0x3,%rcx
  4012d2:	89 c6                	mov    %eax,%esi
  4012d4:	89 cf                	mov    %ecx,%edi
  4012d6:	89 f6                	mov    %esi,%esi
  4012d8:	89 f0                	mov    %esi,%eax
  4012da:	89 fe                	mov    %edi,%esi
  4012dc:	89 f1                	mov    %esi,%ecx
  4012de:	48 39 c8             	cmp    %rcx,%rax
  4012e1:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4012e5:	0f 84 05 00 00 00    	je     4012f0 <alloc_2d_dbl+0x40>
  4012eb:	e8 70 42 00 00       	callq  405560 <check_flag>
  4012f0:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  4012f4:	e8 b7 f5 ff ff       	callq  4008b0 <malloc@plt>
  4012f9:	48 89 c7             	mov    %rax,%rdi
  4012fc:	48 39 c7             	cmp    %rax,%rdi
  4012ff:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  401303:	0f 84 05 00 00 00    	je     40130e <alloc_2d_dbl+0x5e>
  401309:	e8 52 42 00 00       	callq  405560 <check_flag>
  40130e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401312:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401316:	48 85 c0             	test   %rax,%rax
  401319:	0f 94 c1             	sete   %cl
  40131c:	b2 01                	mov    $0x1,%dl
  40131e:	84 d2                	test   %dl,%dl
  401320:	88 4d cf             	mov    %cl,-0x31(%rbp)
  401323:	0f 85 0a 00 00 00    	jne    401333 <alloc_2d_dbl+0x83>
  401329:	e9 00 00 00 00       	jmpq   40132e <alloc_2d_dbl+0x7e>
  40132e:	e8 2d 42 00 00       	callq  405560 <check_flag>
  401333:	8a 45 cf             	mov    -0x31(%rbp),%al
  401336:	a8 01                	test   $0x1,%al
  401338:	0f 85 05 00 00 00    	jne    401343 <alloc_2d_dbl+0x93>
  40133e:	e9 1f 00 00 00       	jmpq   401362 <alloc_2d_dbl+0xb2>
  401343:	48 8d 3c 25 7d 56 40 	lea    0x40567d,%rdi
  40134a:	00 
  40134b:	b0 00                	mov    $0x0,%al
  40134d:	e8 0e f5 ff ff       	callq  400860 <printf@plt>
  401352:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  401359:	00 
  40135a:	89 45 c8             	mov    %eax,-0x38(%rbp)
  40135d:	e9 e8 00 00 00       	jmpq   40144a <alloc_2d_dbl+0x19a>
  401362:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401369:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40136c:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  40136f:	29 c8                	sub    %ecx,%eax
  401371:	0f 9c c2             	setl   %dl
  401374:	40 b6 01             	mov    $0x1,%sil
  401377:	40 84 f6             	test   %sil,%sil
  40137a:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40137d:	88 55 c3             	mov    %dl,-0x3d(%rbp)
  401380:	0f 85 0a 00 00 00    	jne    401390 <alloc_2d_dbl+0xe0>
  401386:	e9 00 00 00 00       	jmpq   40138b <alloc_2d_dbl+0xdb>
  40138b:	e8 d0 41 00 00       	callq  405560 <check_flag>
  401390:	8a 45 c3             	mov    -0x3d(%rbp),%al
  401393:	a8 01                	test   $0x1,%al
  401395:	0f 85 05 00 00 00    	jne    4013a0 <alloc_2d_dbl+0xf0>
  40139b:	e9 8b 00 00 00       	jmpq   40142b <alloc_2d_dbl+0x17b>
  4013a0:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4013a3:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  4013a6:	89 45 bc             	mov    %eax,-0x44(%rbp)
  4013a9:	0f 84 05 00 00 00    	je     4013b4 <alloc_2d_dbl+0x104>
  4013af:	e8 ac 41 00 00       	callq  405560 <check_flag>
  4013b4:	8b 7d bc             	mov    -0x44(%rbp),%edi
  4013b7:	e8 04 fe ff ff       	callq  4011c0 <alloc_1d_dbl>
  4013bc:	8b 7d ec             	mov    -0x14(%rbp),%edi
  4013bf:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  4013c2:	48 63 d7             	movslq %edi,%rdx
  4013c5:	48 63 f1             	movslq %ecx,%rsi
  4013c8:	4c 8b 45 e0          	mov    -0x20(%rbp),%r8
  4013cc:	4c 8b 4d e0          	mov    -0x20(%rbp),%r9
  4013d0:	48 c1 e2 03          	shl    $0x3,%rdx
  4013d4:	49 01 d0             	add    %rdx,%r8
  4013d7:	48 c1 e6 03          	shl    $0x3,%rsi
  4013db:	49 01 f1             	add    %rsi,%r9
  4013de:	4d 39 c8             	cmp    %r9,%r8
  4013e1:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4013e5:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
  4013e9:	0f 84 05 00 00 00    	je     4013f4 <alloc_2d_dbl+0x144>
  4013ef:	e8 6c 41 00 00       	callq  405560 <check_flag>
  4013f4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  4013f8:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  4013fc:	48 89 08             	mov    %rcx,(%rax)
  4013ff:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401402:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401405:	05 01 00 00 00       	add    $0x1,%eax
  40140a:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401410:	39 c8                	cmp    %ecx,%eax
  401412:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  401415:	0f 84 05 00 00 00    	je     401420 <alloc_2d_dbl+0x170>
  40141b:	e8 40 41 00 00       	callq  405560 <check_flag>
  401420:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  401423:	89 45 ec             	mov    %eax,-0x14(%rbp)
  401426:	e9 3e ff ff ff       	jmpq   401369 <alloc_2d_dbl+0xb9>
  40142b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40142f:	48 3b 45 e0          	cmp    -0x20(%rbp),%rax
  401433:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  401437:	0f 84 05 00 00 00    	je     401442 <alloc_2d_dbl+0x192>
  40143d:	e8 1e 41 00 00       	callq  405560 <check_flag>
  401442:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  401446:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40144a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40144e:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  401452:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  401456:	0f 84 05 00 00 00    	je     401461 <alloc_2d_dbl+0x1b1>
  40145c:	e8 ff 40 00 00       	callq  405560 <check_flag>
  401461:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  401465:	48 83 c4 70          	add    $0x70,%rsp
  401469:	5d                   	pop    %rbp
  40146a:	c3                   	retq   
  40146b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401470 <bpnn_randomize_weights>:
  401470:	55                   	push   %rbp
  401471:	48 89 e5             	mov    %rsp,%rbp
  401474:	48 83 ec 40          	sub    $0x40,%rsp
  401478:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40147c:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40147f:	89 55 f0             	mov    %edx,-0x10(%rbp)
  401482:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  401489:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40148c:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  40148f:	29 c8                	sub    %ecx,%eax
  401491:	0f 9e c2             	setle  %dl
  401494:	40 b6 01             	mov    $0x1,%sil
  401497:	40 84 f6             	test   %sil,%sil
  40149a:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40149d:	88 55 e3             	mov    %dl,-0x1d(%rbp)
  4014a0:	0f 85 0a 00 00 00    	jne    4014b0 <bpnn_randomize_weights+0x40>
  4014a6:	e9 00 00 00 00       	jmpq   4014ab <bpnn_randomize_weights+0x3b>
  4014ab:	e8 b0 40 00 00       	callq  405560 <check_flag>
  4014b0:	8a 45 e3             	mov    -0x1d(%rbp),%al
  4014b3:	a8 01                	test   $0x1,%al
  4014b5:	0f 85 05 00 00 00    	jne    4014c0 <bpnn_randomize_weights+0x50>
  4014bb:	e9 f4 00 00 00       	jmpq   4015b4 <bpnn_randomize_weights+0x144>
  4014c0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  4014c7:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4014ca:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  4014cd:	29 c8                	sub    %ecx,%eax
  4014cf:	0f 9e c2             	setle  %dl
  4014d2:	40 b6 01             	mov    $0x1,%sil
  4014d5:	40 84 f6             	test   %sil,%sil
  4014d8:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4014db:	88 55 db             	mov    %dl,-0x25(%rbp)
  4014de:	0f 85 0a 00 00 00    	jne    4014ee <bpnn_randomize_weights+0x7e>
  4014e4:	e9 00 00 00 00       	jmpq   4014e9 <bpnn_randomize_weights+0x79>
  4014e9:	e8 72 40 00 00       	callq  405560 <check_flag>
  4014ee:	8a 45 db             	mov    -0x25(%rbp),%al
  4014f1:	a8 01                	test   $0x1,%al
  4014f3:	0f 85 05 00 00 00    	jne    4014fe <bpnn_randomize_weights+0x8e>
  4014f9:	e9 85 00 00 00       	jmpq   401583 <bpnn_randomize_weights+0x113>
  4014fe:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401501:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  401504:	48 63 d0             	movslq %eax,%rdx
  401507:	48 63 f1             	movslq %ecx,%rsi
  40150a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40150d:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401510:	48 63 f8             	movslq %eax,%rdi
  401513:	4c 63 c1             	movslq %ecx,%r8
  401516:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  40151a:	4c 8b 55 f8          	mov    -0x8(%rbp),%r10
  40151e:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  401522:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  401526:	48 c1 e2 02          	shl    $0x2,%rdx
  40152a:	48 01 d7             	add    %rdx,%rdi
  40152d:	48 c1 e6 02          	shl    $0x2,%rsi
  401531:	49 01 f0             	add    %rsi,%r8
  401534:	4c 39 c7             	cmp    %r8,%rdi
  401537:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  40153b:	0f 84 05 00 00 00    	je     401546 <bpnn_randomize_weights+0xd6>
  401541:	e8 1a 40 00 00       	callq  405560 <check_flag>
  401546:	f3 0f 10 04 25 28 56 	movss  0x405628,%xmm0
  40154d:	40 00 
  40154f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401553:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401557:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40155a:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  40155d:	05 01 00 00 00       	add    $0x1,%eax
  401562:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401568:	39 c8                	cmp    %ecx,%eax
  40156a:	89 45 cc             	mov    %eax,-0x34(%rbp)
  40156d:	0f 84 05 00 00 00    	je     401578 <bpnn_randomize_weights+0x108>
  401573:	e8 e8 3f 00 00       	callq  405560 <check_flag>
  401578:	8b 45 cc             	mov    -0x34(%rbp),%eax
  40157b:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40157e:	e9 44 ff ff ff       	jmpq   4014c7 <bpnn_randomize_weights+0x57>
  401583:	e9 00 00 00 00       	jmpq   401588 <bpnn_randomize_weights+0x118>
  401588:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40158b:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  40158e:	05 01 00 00 00       	add    $0x1,%eax
  401593:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401599:	39 c8                	cmp    %ecx,%eax
  40159b:	89 45 c8             	mov    %eax,-0x38(%rbp)
  40159e:	0f 84 05 00 00 00    	je     4015a9 <bpnn_randomize_weights+0x139>
  4015a4:	e8 b7 3f 00 00       	callq  405560 <check_flag>
  4015a9:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4015ac:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4015af:	e9 d5 fe ff ff       	jmpq   401489 <bpnn_randomize_weights+0x19>
  4015b4:	48 83 c4 40          	add    $0x40,%rsp
  4015b8:	5d                   	pop    %rbp
  4015b9:	c3                   	retq   
  4015ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004015c0 <bpnn_randomize_row>:
  4015c0:	55                   	push   %rbp
  4015c1:	48 89 e5             	mov    %rsp,%rbp
  4015c4:	48 83 ec 30          	sub    $0x30,%rsp
  4015c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4015cc:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4015cf:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  4015d6:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4015d9:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4015dc:	29 c8                	sub    %ecx,%eax
  4015de:	0f 9e c2             	setle  %dl
  4015e1:	40 b6 01             	mov    $0x1,%sil
  4015e4:	40 84 f6             	test   %sil,%sil
  4015e7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4015ea:	88 55 eb             	mov    %dl,-0x15(%rbp)
  4015ed:	0f 85 0a 00 00 00    	jne    4015fd <bpnn_randomize_row+0x3d>
  4015f3:	e9 00 00 00 00       	jmpq   4015f8 <bpnn_randomize_row+0x38>
  4015f8:	e8 63 3f 00 00       	callq  405560 <check_flag>
  4015fd:	8a 45 eb             	mov    -0x15(%rbp),%al
  401600:	a8 01                	test   $0x1,%al
  401602:	0f 85 05 00 00 00    	jne    40160d <bpnn_randomize_row+0x4d>
  401608:	e9 71 00 00 00       	jmpq   40167e <bpnn_randomize_row+0xbe>
  40160d:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401610:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  401613:	48 63 d0             	movslq %eax,%rdx
  401616:	48 63 f1             	movslq %ecx,%rsi
  401619:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40161d:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  401621:	48 c1 e2 02          	shl    $0x2,%rdx
  401625:	48 01 d7             	add    %rdx,%rdi
  401628:	48 c1 e6 02          	shl    $0x2,%rsi
  40162c:	49 01 f0             	add    %rsi,%r8
  40162f:	4c 39 c7             	cmp    %r8,%rdi
  401632:	48 89 7d e0          	mov    %rdi,-0x20(%rbp)
  401636:	0f 84 05 00 00 00    	je     401641 <bpnn_randomize_row+0x81>
  40163c:	e8 1f 3f 00 00       	callq  405560 <check_flag>
  401641:	f3 0f 10 04 25 2c 56 	movss  0x40562c,%xmm0
  401648:	40 00 
  40164a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40164e:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401652:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401655:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  401658:	05 01 00 00 00       	add    $0x1,%eax
  40165d:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401663:	39 c8                	cmp    %ecx,%eax
  401665:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401668:	0f 84 05 00 00 00    	je     401673 <bpnn_randomize_row+0xb3>
  40166e:	e8 ed 3e 00 00       	callq  405560 <check_flag>
  401673:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401676:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401679:	e9 58 ff ff ff       	jmpq   4015d6 <bpnn_randomize_row+0x16>
  40167e:	48 83 c4 30          	add    $0x30,%rsp
  401682:	5d                   	pop    %rbp
  401683:	c3                   	retq   
  401684:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40168b:	00 00 00 00 00 

0000000000401690 <bpnn_zero_weights>:
  401690:	55                   	push   %rbp
  401691:	48 89 e5             	mov    %rsp,%rbp
  401694:	48 83 ec 40          	sub    $0x40,%rsp
  401698:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40169c:	89 75 f4             	mov    %esi,-0xc(%rbp)
  40169f:	89 55 f0             	mov    %edx,-0x10(%rbp)
  4016a2:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  4016a9:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4016ac:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  4016af:	29 c8                	sub    %ecx,%eax
  4016b1:	0f 9e c2             	setle  %dl
  4016b4:	40 b6 01             	mov    $0x1,%sil
  4016b7:	40 84 f6             	test   %sil,%sil
  4016ba:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4016bd:	88 55 e3             	mov    %dl,-0x1d(%rbp)
  4016c0:	0f 85 0a 00 00 00    	jne    4016d0 <bpnn_zero_weights+0x40>
  4016c6:	e9 00 00 00 00       	jmpq   4016cb <bpnn_zero_weights+0x3b>
  4016cb:	e8 90 3e 00 00       	callq  405560 <check_flag>
  4016d0:	8a 45 e3             	mov    -0x1d(%rbp),%al
  4016d3:	a8 01                	test   $0x1,%al
  4016d5:	0f 85 05 00 00 00    	jne    4016e0 <bpnn_zero_weights+0x50>
  4016db:	e9 ee 00 00 00       	jmpq   4017ce <bpnn_zero_weights+0x13e>
  4016e0:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
  4016e7:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4016ea:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  4016ed:	29 c8                	sub    %ecx,%eax
  4016ef:	0f 9e c2             	setle  %dl
  4016f2:	40 b6 01             	mov    $0x1,%sil
  4016f5:	40 84 f6             	test   %sil,%sil
  4016f8:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4016fb:	88 55 db             	mov    %dl,-0x25(%rbp)
  4016fe:	0f 85 0a 00 00 00    	jne    40170e <bpnn_zero_weights+0x7e>
  401704:	e9 00 00 00 00       	jmpq   401709 <bpnn_zero_weights+0x79>
  401709:	e8 52 3e 00 00       	callq  405560 <check_flag>
  40170e:	8a 45 db             	mov    -0x25(%rbp),%al
  401711:	a8 01                	test   $0x1,%al
  401713:	0f 85 05 00 00 00    	jne    40171e <bpnn_zero_weights+0x8e>
  401719:	e9 7f 00 00 00       	jmpq   40179d <bpnn_zero_weights+0x10d>
  40171e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401721:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  401724:	48 63 d0             	movslq %eax,%rdx
  401727:	48 63 f1             	movslq %ecx,%rsi
  40172a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40172d:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401730:	48 63 f8             	movslq %eax,%rdi
  401733:	4c 63 c1             	movslq %ecx,%r8
  401736:	4c 8b 4d f8          	mov    -0x8(%rbp),%r9
  40173a:	4c 8b 55 f8          	mov    -0x8(%rbp),%r10
  40173e:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  401742:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  401746:	48 c1 e2 02          	shl    $0x2,%rdx
  40174a:	48 01 d7             	add    %rdx,%rdi
  40174d:	48 c1 e6 02          	shl    $0x2,%rsi
  401751:	49 01 f0             	add    %rsi,%r8
  401754:	4c 39 c7             	cmp    %r8,%rdi
  401757:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  40175b:	0f 84 05 00 00 00    	je     401766 <bpnn_zero_weights+0xd6>
  401761:	e8 fa 3d 00 00       	callq  405560 <check_flag>
  401766:	0f 57 c0             	xorps  %xmm0,%xmm0
  401769:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40176d:	f3 0f 11 00          	movss  %xmm0,(%rax)
  401771:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401774:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  401777:	05 01 00 00 00       	add    $0x1,%eax
  40177c:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401782:	39 c8                	cmp    %ecx,%eax
  401784:	89 45 cc             	mov    %eax,-0x34(%rbp)
  401787:	0f 84 05 00 00 00    	je     401792 <bpnn_zero_weights+0x102>
  40178d:	e8 ce 3d 00 00       	callq  405560 <check_flag>
  401792:	8b 45 cc             	mov    -0x34(%rbp),%eax
  401795:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401798:	e9 4a ff ff ff       	jmpq   4016e7 <bpnn_zero_weights+0x57>
  40179d:	e9 00 00 00 00       	jmpq   4017a2 <bpnn_zero_weights+0x112>
  4017a2:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4017a5:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  4017a8:	05 01 00 00 00       	add    $0x1,%eax
  4017ad:	81 c1 01 00 00 00    	add    $0x1,%ecx
  4017b3:	39 c8                	cmp    %ecx,%eax
  4017b5:	89 45 c8             	mov    %eax,-0x38(%rbp)
  4017b8:	0f 84 05 00 00 00    	je     4017c3 <bpnn_zero_weights+0x133>
  4017be:	e8 9d 3d 00 00       	callq  405560 <check_flag>
  4017c3:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4017c6:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4017c9:	e9 db fe ff ff       	jmpq   4016a9 <bpnn_zero_weights+0x19>
  4017ce:	48 83 c4 40          	add    $0x40,%rsp
  4017d2:	5d                   	pop    %rbp
  4017d3:	c3                   	retq   
  4017d4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4017db:	00 00 00 00 00 

00000000004017e0 <bpnn_initialize>:
  4017e0:	55                   	push   %rbp
  4017e1:	48 89 e5             	mov    %rsp,%rbp
  4017e4:	48 83 ec 10          	sub    $0x10,%rsp
  4017e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4017eb:	8b 7d fc             	mov    -0x4(%rbp),%edi
  4017ee:	3b 7d fc             	cmp    -0x4(%rbp),%edi
  4017f1:	89 7d f8             	mov    %edi,-0x8(%rbp)
  4017f4:	0f 84 05 00 00 00    	je     4017ff <bpnn_initialize+0x1f>
  4017fa:	e8 61 3d 00 00       	callq  405560 <check_flag>
  4017ff:	48 8d 3c 25 b0 56 40 	lea    0x4056b0,%rdi
  401806:	00 
  401807:	8b 75 f8             	mov    -0x8(%rbp),%esi
  40180a:	b0 00                	mov    $0x0,%al
  40180c:	e8 4f f0 ff ff       	callq  400860 <printf@plt>
  401811:	8b 75 fc             	mov    -0x4(%rbp),%esi
  401814:	3b 75 fc             	cmp    -0x4(%rbp),%esi
  401817:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40181a:	89 75 f0             	mov    %esi,-0x10(%rbp)
  40181d:	0f 84 05 00 00 00    	je     401828 <bpnn_initialize+0x48>
  401823:	e8 38 3d 00 00       	callq  405560 <check_flag>
  401828:	8b 7d f0             	mov    -0x10(%rbp),%edi
  40182b:	e8 d0 f0 ff ff       	callq  400900 <srand@plt>
  401830:	48 83 c4 10          	add    $0x10,%rsp
  401834:	5d                   	pop    %rbp
  401835:	c3                   	retq   
  401836:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40183d:	00 00 00 

0000000000401840 <bpnn_internal_create>:
  401840:	55                   	push   %rbp
  401841:	48 89 e5             	mov    %rsp,%rbp
  401844:	48 81 ec 60 01 00 00 	sub    $0x160,%rsp
  40184b:	48 b8 60 00 00 00 00 	movabs $0x60,%rax
  401852:	00 00 00 
  401855:	89 7d f4             	mov    %edi,-0xc(%rbp)
  401858:	89 75 f0             	mov    %esi,-0x10(%rbp)
  40185b:	89 55 ec             	mov    %edx,-0x14(%rbp)
  40185e:	48 89 c7             	mov    %rax,%rdi
  401861:	e8 4a f0 ff ff       	callq  4008b0 <malloc@plt>
  401866:	48 89 c7             	mov    %rax,%rdi
  401869:	48 39 c7             	cmp    %rax,%rdi
  40186c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  401870:	0f 84 05 00 00 00    	je     40187b <bpnn_internal_create+0x3b>
  401876:	e8 e5 3c 00 00       	callq  405560 <check_flag>
  40187b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40187f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  401883:	48 85 c0             	test   %rax,%rax
  401886:	0f 94 c1             	sete   %cl
  401889:	b2 01                	mov    $0x1,%dl
  40188b:	84 d2                	test   %dl,%dl
  40188d:	88 4d d7             	mov    %cl,-0x29(%rbp)
  401890:	0f 85 0a 00 00 00    	jne    4018a0 <bpnn_internal_create+0x60>
  401896:	e9 00 00 00 00       	jmpq   40189b <bpnn_internal_create+0x5b>
  40189b:	e8 c0 3c 00 00       	callq  405560 <check_flag>
  4018a0:	8a 45 d7             	mov    -0x29(%rbp),%al
  4018a3:	a8 01                	test   $0x1,%al
  4018a5:	0f 85 05 00 00 00    	jne    4018b0 <bpnn_internal_create+0x70>
  4018ab:	e9 1f 00 00 00       	jmpq   4018cf <bpnn_internal_create+0x8f>
  4018b0:	48 8d 3c 25 d2 56 40 	lea    0x4056d2,%rdi
  4018b7:	00 
  4018b8:	b0 00                	mov    $0x0,%al
  4018ba:	e8 a1 ef ff ff       	callq  400860 <printf@plt>
  4018bf:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4018c6:	00 
  4018c7:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4018ca:	e9 f2 05 00 00       	jmpq   401ec1 <bpnn_internal_create+0x681>
  4018cf:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4018d2:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  4018d5:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4018d8:	0f 84 05 00 00 00    	je     4018e3 <bpnn_internal_create+0xa3>
  4018de:	e8 7d 3c 00 00       	callq  405560 <check_flag>
  4018e3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4018e7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4018eb:	48 39 c8             	cmp    %rcx,%rax
  4018ee:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  4018f2:	0f 84 05 00 00 00    	je     4018fd <bpnn_internal_create+0xbd>
  4018f8:	e8 63 3c 00 00       	callq  405560 <check_flag>
  4018fd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  401901:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  401904:	89 08                	mov    %ecx,(%rax)
  401906:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401909:	3b 55 f0             	cmp    -0x10(%rbp),%edx
  40190c:	89 55 bc             	mov    %edx,-0x44(%rbp)
  40190f:	0f 84 05 00 00 00    	je     40191a <bpnn_internal_create+0xda>
  401915:	e8 46 3c 00 00       	callq  405560 <check_flag>
  40191a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40191e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401922:	48 05 04 00 00 00    	add    $0x4,%rax
  401928:	48 81 c1 04 00 00 00 	add    $0x4,%rcx
  40192f:	48 39 c8             	cmp    %rcx,%rax
  401932:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  401936:	0f 84 05 00 00 00    	je     401941 <bpnn_internal_create+0x101>
  40193c:	e8 1f 3c 00 00       	callq  405560 <check_flag>
  401941:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  401945:	8b 4d bc             	mov    -0x44(%rbp),%ecx
  401948:	89 08                	mov    %ecx,(%rax)
  40194a:	8b 55 ec             	mov    -0x14(%rbp),%edx
  40194d:	3b 55 ec             	cmp    -0x14(%rbp),%edx
  401950:	89 55 ac             	mov    %edx,-0x54(%rbp)
  401953:	0f 84 05 00 00 00    	je     40195e <bpnn_internal_create+0x11e>
  401959:	e8 02 3c 00 00       	callq  405560 <check_flag>
  40195e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  401962:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401966:	48 05 08 00 00 00    	add    $0x8,%rax
  40196c:	48 81 c1 08 00 00 00 	add    $0x8,%rcx
  401973:	48 39 c8             	cmp    %rcx,%rax
  401976:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  40197a:	0f 84 05 00 00 00    	je     401985 <bpnn_internal_create+0x145>
  401980:	e8 db 3b 00 00       	callq  405560 <check_flag>
  401985:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  401989:	8b 4d ac             	mov    -0x54(%rbp),%ecx
  40198c:	89 08                	mov    %ecx,(%rax)
  40198e:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401991:	8b 75 f4             	mov    -0xc(%rbp),%esi
  401994:	81 c2 01 00 00 00    	add    $0x1,%edx
  40199a:	81 c6 01 00 00 00    	add    $0x1,%esi
  4019a0:	39 f2                	cmp    %esi,%edx
  4019a2:	89 55 9c             	mov    %edx,-0x64(%rbp)
  4019a5:	0f 84 05 00 00 00    	je     4019b0 <bpnn_internal_create+0x170>
  4019ab:	e8 b0 3b 00 00       	callq  405560 <check_flag>
  4019b0:	8b 7d 9c             	mov    -0x64(%rbp),%edi
  4019b3:	e8 08 f8 ff ff       	callq  4011c0 <alloc_1d_dbl>
  4019b8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  4019bc:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4019c0:	48 81 c1 10 00 00 00 	add    $0x10,%rcx
  4019c7:	48 81 c2 10 00 00 00 	add    $0x10,%rdx
  4019ce:	48 39 d1             	cmp    %rdx,%rcx
  4019d1:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4019d5:	48 89 4d 88          	mov    %rcx,-0x78(%rbp)
  4019d9:	0f 84 05 00 00 00    	je     4019e4 <bpnn_internal_create+0x1a4>
  4019df:	e8 7c 3b 00 00       	callq  405560 <check_flag>
  4019e4:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  4019e8:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  4019ec:	48 89 08             	mov    %rcx,(%rax)
  4019ef:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4019f2:	8b 75 f0             	mov    -0x10(%rbp),%esi
  4019f5:	81 c2 01 00 00 00    	add    $0x1,%edx
  4019fb:	81 c6 01 00 00 00    	add    $0x1,%esi
  401a01:	39 f2                	cmp    %esi,%edx
  401a03:	89 55 84             	mov    %edx,-0x7c(%rbp)
  401a06:	0f 84 05 00 00 00    	je     401a11 <bpnn_internal_create+0x1d1>
  401a0c:	e8 4f 3b 00 00       	callq  405560 <check_flag>
  401a11:	8b 7d 84             	mov    -0x7c(%rbp),%edi
  401a14:	e8 a7 f7 ff ff       	callq  4011c0 <alloc_1d_dbl>
  401a19:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401a1d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401a21:	48 81 c1 18 00 00 00 	add    $0x18,%rcx
  401a28:	48 81 c2 18 00 00 00 	add    $0x18,%rdx
  401a2f:	48 39 d1             	cmp    %rdx,%rcx
  401a32:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  401a39:	48 89 8d 70 ff ff ff 	mov    %rcx,-0x90(%rbp)
  401a40:	0f 84 05 00 00 00    	je     401a4b <bpnn_internal_create+0x20b>
  401a46:	e8 15 3b 00 00       	callq  405560 <check_flag>
  401a4b:	48 8b 85 70 ff ff ff 	mov    -0x90(%rbp),%rax
  401a52:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  401a59:	48 89 08             	mov    %rcx,(%rax)
  401a5c:	8b 55 ec             	mov    -0x14(%rbp),%edx
  401a5f:	8b 75 ec             	mov    -0x14(%rbp),%esi
  401a62:	81 c2 01 00 00 00    	add    $0x1,%edx
  401a68:	81 c6 01 00 00 00    	add    $0x1,%esi
  401a6e:	39 f2                	cmp    %esi,%edx
  401a70:	89 95 6c ff ff ff    	mov    %edx,-0x94(%rbp)
  401a76:	0f 84 05 00 00 00    	je     401a81 <bpnn_internal_create+0x241>
  401a7c:	e8 df 3a 00 00       	callq  405560 <check_flag>
  401a81:	8b bd 6c ff ff ff    	mov    -0x94(%rbp),%edi
  401a87:	e8 34 f7 ff ff       	callq  4011c0 <alloc_1d_dbl>
  401a8c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401a90:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401a94:	48 81 c1 20 00 00 00 	add    $0x20,%rcx
  401a9b:	48 81 c2 20 00 00 00 	add    $0x20,%rdx
  401aa2:	48 39 d1             	cmp    %rdx,%rcx
  401aa5:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
  401aac:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  401ab3:	0f 84 05 00 00 00    	je     401abe <bpnn_internal_create+0x27e>
  401ab9:	e8 a2 3a 00 00       	callq  405560 <check_flag>
  401abe:	48 8b 85 58 ff ff ff 	mov    -0xa8(%rbp),%rax
  401ac5:	48 8b 8d 60 ff ff ff 	mov    -0xa0(%rbp),%rcx
  401acc:	48 89 08             	mov    %rcx,(%rax)
  401acf:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401ad2:	8b 75 f0             	mov    -0x10(%rbp),%esi
  401ad5:	81 c2 01 00 00 00    	add    $0x1,%edx
  401adb:	81 c6 01 00 00 00    	add    $0x1,%esi
  401ae1:	39 f2                	cmp    %esi,%edx
  401ae3:	89 95 54 ff ff ff    	mov    %edx,-0xac(%rbp)
  401ae9:	0f 84 05 00 00 00    	je     401af4 <bpnn_internal_create+0x2b4>
  401aef:	e8 6c 3a 00 00       	callq  405560 <check_flag>
  401af4:	8b bd 54 ff ff ff    	mov    -0xac(%rbp),%edi
  401afa:	e8 c1 f6 ff ff       	callq  4011c0 <alloc_1d_dbl>
  401aff:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401b03:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401b07:	48 81 c1 28 00 00 00 	add    $0x28,%rcx
  401b0e:	48 81 c2 28 00 00 00 	add    $0x28,%rdx
  401b15:	48 39 d1             	cmp    %rdx,%rcx
  401b18:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  401b1f:	48 89 8d 40 ff ff ff 	mov    %rcx,-0xc0(%rbp)
  401b26:	0f 84 05 00 00 00    	je     401b31 <bpnn_internal_create+0x2f1>
  401b2c:	e8 2f 3a 00 00       	callq  405560 <check_flag>
  401b31:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
  401b38:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  401b3f:	48 89 08             	mov    %rcx,(%rax)
  401b42:	8b 55 ec             	mov    -0x14(%rbp),%edx
  401b45:	8b 75 ec             	mov    -0x14(%rbp),%esi
  401b48:	81 c2 01 00 00 00    	add    $0x1,%edx
  401b4e:	81 c6 01 00 00 00    	add    $0x1,%esi
  401b54:	39 f2                	cmp    %esi,%edx
  401b56:	89 95 3c ff ff ff    	mov    %edx,-0xc4(%rbp)
  401b5c:	0f 84 05 00 00 00    	je     401b67 <bpnn_internal_create+0x327>
  401b62:	e8 f9 39 00 00       	callq  405560 <check_flag>
  401b67:	8b bd 3c ff ff ff    	mov    -0xc4(%rbp),%edi
  401b6d:	e8 4e f6 ff ff       	callq  4011c0 <alloc_1d_dbl>
  401b72:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401b76:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401b7a:	48 81 c1 30 00 00 00 	add    $0x30,%rcx
  401b81:	48 81 c2 30 00 00 00 	add    $0x30,%rdx
  401b88:	48 39 d1             	cmp    %rdx,%rcx
  401b8b:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  401b92:	48 89 8d 28 ff ff ff 	mov    %rcx,-0xd8(%rbp)
  401b99:	0f 84 05 00 00 00    	je     401ba4 <bpnn_internal_create+0x364>
  401b9f:	e8 bc 39 00 00       	callq  405560 <check_flag>
  401ba4:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  401bab:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
  401bb2:	48 89 08             	mov    %rcx,(%rax)
  401bb5:	8b 55 ec             	mov    -0x14(%rbp),%edx
  401bb8:	8b 75 ec             	mov    -0x14(%rbp),%esi
  401bbb:	81 c2 01 00 00 00    	add    $0x1,%edx
  401bc1:	81 c6 01 00 00 00    	add    $0x1,%esi
  401bc7:	39 f2                	cmp    %esi,%edx
  401bc9:	89 95 24 ff ff ff    	mov    %edx,-0xdc(%rbp)
  401bcf:	0f 84 05 00 00 00    	je     401bda <bpnn_internal_create+0x39a>
  401bd5:	e8 86 39 00 00       	callq  405560 <check_flag>
  401bda:	8b bd 24 ff ff ff    	mov    -0xdc(%rbp),%edi
  401be0:	e8 db f5 ff ff       	callq  4011c0 <alloc_1d_dbl>
  401be5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401be9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401bed:	48 81 c1 38 00 00 00 	add    $0x38,%rcx
  401bf4:	48 81 c2 38 00 00 00 	add    $0x38,%rdx
  401bfb:	48 39 d1             	cmp    %rdx,%rcx
  401bfe:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  401c05:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
  401c0c:	0f 84 05 00 00 00    	je     401c17 <bpnn_internal_create+0x3d7>
  401c12:	e8 49 39 00 00       	callq  405560 <check_flag>
  401c17:	48 8b 85 10 ff ff ff 	mov    -0xf0(%rbp),%rax
  401c1e:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  401c25:	48 89 08             	mov    %rcx,(%rax)
  401c28:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401c2b:	8b 75 f4             	mov    -0xc(%rbp),%esi
  401c2e:	81 c2 01 00 00 00    	add    $0x1,%edx
  401c34:	81 c6 01 00 00 00    	add    $0x1,%esi
  401c3a:	39 f2                	cmp    %esi,%edx
  401c3c:	89 95 0c ff ff ff    	mov    %edx,-0xf4(%rbp)
  401c42:	0f 84 05 00 00 00    	je     401c4d <bpnn_internal_create+0x40d>
  401c48:	e8 13 39 00 00       	callq  405560 <check_flag>
  401c4d:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401c50:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  401c53:	05 01 00 00 00       	add    $0x1,%eax
  401c58:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401c5e:	39 c8                	cmp    %ecx,%eax
  401c60:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
  401c66:	0f 84 05 00 00 00    	je     401c71 <bpnn_internal_create+0x431>
  401c6c:	e8 ef 38 00 00       	callq  405560 <check_flag>
  401c71:	8b bd 0c ff ff ff    	mov    -0xf4(%rbp),%edi
  401c77:	8b b5 08 ff ff ff    	mov    -0xf8(%rbp),%esi
  401c7d:	e8 2e f6 ff ff       	callq  4012b0 <alloc_2d_dbl>
  401c82:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401c86:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401c8a:	48 81 c1 40 00 00 00 	add    $0x40,%rcx
  401c91:	48 81 c2 40 00 00 00 	add    $0x40,%rdx
  401c98:	48 39 d1             	cmp    %rdx,%rcx
  401c9b:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  401ca2:	48 89 8d f8 fe ff ff 	mov    %rcx,-0x108(%rbp)
  401ca9:	0f 84 05 00 00 00    	je     401cb4 <bpnn_internal_create+0x474>
  401caf:	e8 ac 38 00 00       	callq  405560 <check_flag>
  401cb4:	48 8b 85 f8 fe ff ff 	mov    -0x108(%rbp),%rax
  401cbb:	48 8b 8d 00 ff ff ff 	mov    -0x100(%rbp),%rcx
  401cc2:	48 89 08             	mov    %rcx,(%rax)
  401cc5:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401cc8:	8b 75 f0             	mov    -0x10(%rbp),%esi
  401ccb:	81 c2 01 00 00 00    	add    $0x1,%edx
  401cd1:	81 c6 01 00 00 00    	add    $0x1,%esi
  401cd7:	39 f2                	cmp    %esi,%edx
  401cd9:	89 95 f4 fe ff ff    	mov    %edx,-0x10c(%rbp)
  401cdf:	0f 84 05 00 00 00    	je     401cea <bpnn_internal_create+0x4aa>
  401ce5:	e8 76 38 00 00       	callq  405560 <check_flag>
  401cea:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401ced:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401cf0:	05 01 00 00 00       	add    $0x1,%eax
  401cf5:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401cfb:	39 c8                	cmp    %ecx,%eax
  401cfd:	89 85 f0 fe ff ff    	mov    %eax,-0x110(%rbp)
  401d03:	0f 84 05 00 00 00    	je     401d0e <bpnn_internal_create+0x4ce>
  401d09:	e8 52 38 00 00       	callq  405560 <check_flag>
  401d0e:	8b bd f4 fe ff ff    	mov    -0x10c(%rbp),%edi
  401d14:	8b b5 f0 fe ff ff    	mov    -0x110(%rbp),%esi
  401d1a:	e8 91 f5 ff ff       	callq  4012b0 <alloc_2d_dbl>
  401d1f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401d23:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401d27:	48 81 c1 48 00 00 00 	add    $0x48,%rcx
  401d2e:	48 81 c2 48 00 00 00 	add    $0x48,%rdx
  401d35:	48 39 d1             	cmp    %rdx,%rcx
  401d38:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  401d3f:	48 89 8d e0 fe ff ff 	mov    %rcx,-0x120(%rbp)
  401d46:	0f 84 05 00 00 00    	je     401d51 <bpnn_internal_create+0x511>
  401d4c:	e8 0f 38 00 00       	callq  405560 <check_flag>
  401d51:	48 8b 85 e0 fe ff ff 	mov    -0x120(%rbp),%rax
  401d58:	48 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%rcx
  401d5f:	48 89 08             	mov    %rcx,(%rax)
  401d62:	8b 55 f4             	mov    -0xc(%rbp),%edx
  401d65:	8b 75 f4             	mov    -0xc(%rbp),%esi
  401d68:	81 c2 01 00 00 00    	add    $0x1,%edx
  401d6e:	81 c6 01 00 00 00    	add    $0x1,%esi
  401d74:	39 f2                	cmp    %esi,%edx
  401d76:	89 95 dc fe ff ff    	mov    %edx,-0x124(%rbp)
  401d7c:	0f 84 05 00 00 00    	je     401d87 <bpnn_internal_create+0x547>
  401d82:	e8 d9 37 00 00       	callq  405560 <check_flag>
  401d87:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401d8a:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  401d8d:	05 01 00 00 00       	add    $0x1,%eax
  401d92:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401d98:	39 c8                	cmp    %ecx,%eax
  401d9a:	89 85 d8 fe ff ff    	mov    %eax,-0x128(%rbp)
  401da0:	0f 84 05 00 00 00    	je     401dab <bpnn_internal_create+0x56b>
  401da6:	e8 b5 37 00 00       	callq  405560 <check_flag>
  401dab:	8b bd dc fe ff ff    	mov    -0x124(%rbp),%edi
  401db1:	8b b5 d8 fe ff ff    	mov    -0x128(%rbp),%esi
  401db7:	e8 f4 f4 ff ff       	callq  4012b0 <alloc_2d_dbl>
  401dbc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401dc0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401dc4:	48 81 c1 50 00 00 00 	add    $0x50,%rcx
  401dcb:	48 81 c2 50 00 00 00 	add    $0x50,%rdx
  401dd2:	48 39 d1             	cmp    %rdx,%rcx
  401dd5:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
  401ddc:	48 89 8d c8 fe ff ff 	mov    %rcx,-0x138(%rbp)
  401de3:	0f 84 05 00 00 00    	je     401dee <bpnn_internal_create+0x5ae>
  401de9:	e8 72 37 00 00       	callq  405560 <check_flag>
  401dee:	48 8b 85 c8 fe ff ff 	mov    -0x138(%rbp),%rax
  401df5:	48 8b 8d d0 fe ff ff 	mov    -0x130(%rbp),%rcx
  401dfc:	48 89 08             	mov    %rcx,(%rax)
  401dff:	8b 55 f0             	mov    -0x10(%rbp),%edx
  401e02:	8b 75 f0             	mov    -0x10(%rbp),%esi
  401e05:	81 c2 01 00 00 00    	add    $0x1,%edx
  401e0b:	81 c6 01 00 00 00    	add    $0x1,%esi
  401e11:	39 f2                	cmp    %esi,%edx
  401e13:	89 95 c4 fe ff ff    	mov    %edx,-0x13c(%rbp)
  401e19:	0f 84 05 00 00 00    	je     401e24 <bpnn_internal_create+0x5e4>
  401e1f:	e8 3c 37 00 00       	callq  405560 <check_flag>
  401e24:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401e27:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  401e2a:	05 01 00 00 00       	add    $0x1,%eax
  401e2f:	81 c1 01 00 00 00    	add    $0x1,%ecx
  401e35:	39 c8                	cmp    %ecx,%eax
  401e37:	89 85 c0 fe ff ff    	mov    %eax,-0x140(%rbp)
  401e3d:	0f 84 05 00 00 00    	je     401e48 <bpnn_internal_create+0x608>
  401e43:	e8 18 37 00 00       	callq  405560 <check_flag>
  401e48:	8b bd c4 fe ff ff    	mov    -0x13c(%rbp),%edi
  401e4e:	8b b5 c0 fe ff ff    	mov    -0x140(%rbp),%esi
  401e54:	e8 57 f4 ff ff       	callq  4012b0 <alloc_2d_dbl>
  401e59:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  401e5d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401e61:	48 81 c1 58 00 00 00 	add    $0x58,%rcx
  401e68:	48 81 c2 58 00 00 00 	add    $0x58,%rdx
  401e6f:	48 39 d1             	cmp    %rdx,%rcx
  401e72:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  401e79:	48 89 8d b0 fe ff ff 	mov    %rcx,-0x150(%rbp)
  401e80:	0f 84 05 00 00 00    	je     401e8b <bpnn_internal_create+0x64b>
  401e86:	e8 d5 36 00 00       	callq  405560 <check_flag>
  401e8b:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  401e92:	48 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%rcx
  401e99:	48 89 08             	mov    %rcx,(%rax)
  401e9c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  401ea0:	48 3b 55 e0          	cmp    -0x20(%rbp),%rdx
  401ea4:	48 89 95 a8 fe ff ff 	mov    %rdx,-0x158(%rbp)
  401eab:	0f 84 05 00 00 00    	je     401eb6 <bpnn_internal_create+0x676>
  401eb1:	e8 aa 36 00 00       	callq  405560 <check_flag>
  401eb6:	48 8b 85 a8 fe ff ff 	mov    -0x158(%rbp),%rax
  401ebd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401ec1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ec5:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  401ec9:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  401ed0:	0f 84 05 00 00 00    	je     401edb <bpnn_internal_create+0x69b>
  401ed6:	e8 85 36 00 00       	callq  405560 <check_flag>
  401edb:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  401ee2:	48 81 c4 60 01 00 00 	add    $0x160,%rsp
  401ee9:	5d                   	pop    %rbp
  401eea:	c3                   	retq   
  401eeb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000401ef0 <bpnn_free>:
  401ef0:	55                   	push   %rbp
  401ef1:	48 89 e5             	mov    %rsp,%rbp
  401ef4:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
  401efb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401eff:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401f03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f07:	8b 0f                	mov    (%rdi),%ecx
  401f09:	3b 08                	cmp    (%rax),%ecx
  401f0b:	89 4d e8             	mov    %ecx,-0x18(%rbp)
  401f0e:	0f 84 05 00 00 00    	je     401f19 <bpnn_free+0x29>
  401f14:	e8 47 36 00 00       	callq  405560 <check_flag>
  401f19:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401f1c:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401f1f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401f23:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401f27:	8b 71 04             	mov    0x4(%rcx),%esi
  401f2a:	3b 72 04             	cmp    0x4(%rdx),%esi
  401f2d:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  401f30:	0f 84 05 00 00 00    	je     401f3b <bpnn_free+0x4b>
  401f36:	e8 25 36 00 00       	callq  405560 <check_flag>
  401f3b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401f3e:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401f41:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  401f45:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401f49:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  401f4d:	48 8b 52 10          	mov    0x10(%rdx),%rdx
  401f51:	48 39 d1             	cmp    %rdx,%rcx
  401f54:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  401f58:	0f 84 05 00 00 00    	je     401f63 <bpnn_free+0x73>
  401f5e:	e8 fd 35 00 00       	callq  405560 <check_flag>
  401f63:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  401f67:	e8 74 e9 ff ff       	callq  4008e0 <free@plt>
  401f6c:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401f70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f74:	48 8b 7f 18          	mov    0x18(%rdi),%rdi
  401f78:	48 8b 40 18          	mov    0x18(%rax),%rax
  401f7c:	48 39 c7             	cmp    %rax,%rdi
  401f7f:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
  401f83:	0f 84 05 00 00 00    	je     401f8e <bpnn_free+0x9e>
  401f89:	e8 d2 35 00 00       	callq  405560 <check_flag>
  401f8e:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  401f92:	e8 49 e9 ff ff       	callq  4008e0 <free@plt>
  401f97:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401f9b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401f9f:	48 8b 7f 20          	mov    0x20(%rdi),%rdi
  401fa3:	48 8b 40 20          	mov    0x20(%rax),%rax
  401fa7:	48 39 c7             	cmp    %rax,%rdi
  401faa:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  401fae:	0f 84 05 00 00 00    	je     401fb9 <bpnn_free+0xc9>
  401fb4:	e8 a7 35 00 00       	callq  405560 <check_flag>
  401fb9:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  401fbd:	e8 1e e9 ff ff       	callq  4008e0 <free@plt>
  401fc2:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401fc6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fca:	48 8b 7f 28          	mov    0x28(%rdi),%rdi
  401fce:	48 8b 40 28          	mov    0x28(%rax),%rax
  401fd2:	48 39 c7             	cmp    %rax,%rdi
  401fd5:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  401fd9:	0f 84 05 00 00 00    	je     401fe4 <bpnn_free+0xf4>
  401fdf:	e8 7c 35 00 00       	callq  405560 <check_flag>
  401fe4:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  401fe8:	e8 f3 e8 ff ff       	callq  4008e0 <free@plt>
  401fed:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  401ff1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ff5:	48 8b 7f 30          	mov    0x30(%rdi),%rdi
  401ff9:	48 8b 40 30          	mov    0x30(%rax),%rax
  401ffd:	48 39 c7             	cmp    %rax,%rdi
  402000:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  402004:	0f 84 05 00 00 00    	je     40200f <bpnn_free+0x11f>
  40200a:	e8 51 35 00 00       	callq  405560 <check_flag>
  40200f:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  402013:	e8 c8 e8 ff ff       	callq  4008e0 <free@plt>
  402018:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40201c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402020:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
  402024:	48 8b 40 38          	mov    0x38(%rax),%rax
  402028:	48 39 c7             	cmp    %rax,%rdi
  40202b:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  40202f:	0f 84 05 00 00 00    	je     40203a <bpnn_free+0x14a>
  402035:	e8 26 35 00 00       	callq  405560 <check_flag>
  40203a:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  40203e:	e8 9d e8 ff ff       	callq  4008e0 <free@plt>
  402043:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  40204a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40204d:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  402050:	29 c8                	sub    %ecx,%eax
  402052:	0f 9e c2             	setle  %dl
  402055:	40 b6 01             	mov    $0x1,%sil
  402058:	40 84 f6             	test   %sil,%sil
  40205b:	89 45 ac             	mov    %eax,-0x54(%rbp)
  40205e:	88 55 ab             	mov    %dl,-0x55(%rbp)
  402061:	0f 85 0a 00 00 00    	jne    402071 <bpnn_free+0x181>
  402067:	e9 00 00 00 00       	jmpq   40206c <bpnn_free+0x17c>
  40206c:	e8 ef 34 00 00       	callq  405560 <check_flag>
  402071:	8a 45 ab             	mov    -0x55(%rbp),%al
  402074:	a8 01                	test   $0x1,%al
  402076:	0f 85 05 00 00 00    	jne    402081 <bpnn_free+0x191>
  40207c:	e9 aa 00 00 00       	jmpq   40212b <bpnn_free+0x23b>
  402081:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402084:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  402087:	48 63 d0             	movslq %eax,%rdx
  40208a:	48 63 f1             	movslq %ecx,%rsi
  40208d:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402091:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402095:	48 8b 7f 40          	mov    0x40(%rdi),%rdi
  402099:	4d 8b 40 40          	mov    0x40(%r8),%r8
  40209d:	48 8b 14 d7          	mov    (%rdi,%rdx,8),%rdx
  4020a1:	49 8b 34 f0          	mov    (%r8,%rsi,8),%rsi
  4020a5:	48 39 f2             	cmp    %rsi,%rdx
  4020a8:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
  4020ac:	0f 84 05 00 00 00    	je     4020b7 <bpnn_free+0x1c7>
  4020b2:	e8 a9 34 00 00       	callq  405560 <check_flag>
  4020b7:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  4020bb:	e8 20 e8 ff ff       	callq  4008e0 <free@plt>
  4020c0:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4020c3:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  4020c6:	48 63 f8             	movslq %eax,%rdi
  4020c9:	48 63 d1             	movslq %ecx,%rdx
  4020cc:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  4020d0:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  4020d4:	48 8b 76 50          	mov    0x50(%rsi),%rsi
  4020d8:	4d 8b 40 50          	mov    0x50(%r8),%r8
  4020dc:	48 8b 34 fe          	mov    (%rsi,%rdi,8),%rsi
  4020e0:	49 8b 14 d0          	mov    (%r8,%rdx,8),%rdx
  4020e4:	48 39 d6             	cmp    %rdx,%rsi
  4020e7:	48 89 75 98          	mov    %rsi,-0x68(%rbp)
  4020eb:	0f 84 05 00 00 00    	je     4020f6 <bpnn_free+0x206>
  4020f1:	e8 6a 34 00 00       	callq  405560 <check_flag>
  4020f6:	48 8b 7d 98          	mov    -0x68(%rbp),%rdi
  4020fa:	e8 e1 e7 ff ff       	callq  4008e0 <free@plt>
  4020ff:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402102:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  402105:	05 01 00 00 00       	add    $0x1,%eax
  40210a:	81 c1 01 00 00 00    	add    $0x1,%ecx
  402110:	39 c8                	cmp    %ecx,%eax
  402112:	89 45 94             	mov    %eax,-0x6c(%rbp)
  402115:	0f 84 05 00 00 00    	je     402120 <bpnn_free+0x230>
  40211b:	e8 40 34 00 00       	callq  405560 <check_flag>
  402120:	8b 45 94             	mov    -0x6c(%rbp),%eax
  402123:	89 45 ec             	mov    %eax,-0x14(%rbp)
  402126:	e9 1f ff ff ff       	jmpq   40204a <bpnn_free+0x15a>
  40212b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40212f:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402133:	48 8b 40 40          	mov    0x40(%rax),%rax
  402137:	48 8b 49 40          	mov    0x40(%rcx),%rcx
  40213b:	48 39 c8             	cmp    %rcx,%rax
  40213e:	48 89 45 88          	mov    %rax,-0x78(%rbp)
  402142:	0f 84 05 00 00 00    	je     40214d <bpnn_free+0x25d>
  402148:	e8 13 34 00 00       	callq  405560 <check_flag>
  40214d:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  402151:	e8 8a e7 ff ff       	callq  4008e0 <free@plt>
  402156:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  40215a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40215e:	48 8b 7f 50          	mov    0x50(%rdi),%rdi
  402162:	48 8b 40 50          	mov    0x50(%rax),%rax
  402166:	48 39 c7             	cmp    %rax,%rdi
  402169:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  40216d:	0f 84 05 00 00 00    	je     402178 <bpnn_free+0x288>
  402173:	e8 e8 33 00 00       	callq  405560 <check_flag>
  402178:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  40217c:	e8 5f e7 ff ff       	callq  4008e0 <free@plt>
  402181:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
  402188:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40218b:	8b 4d f0             	mov    -0x10(%rbp),%ecx
  40218e:	29 c8                	sub    %ecx,%eax
  402190:	0f 9e c2             	setle  %dl
  402193:	40 b6 01             	mov    $0x1,%sil
  402196:	40 84 f6             	test   %sil,%sil
  402199:	89 85 7c ff ff ff    	mov    %eax,-0x84(%rbp)
  40219f:	88 95 7b ff ff ff    	mov    %dl,-0x85(%rbp)
  4021a5:	0f 85 0a 00 00 00    	jne    4021b5 <bpnn_free+0x2c5>
  4021ab:	e9 00 00 00 00       	jmpq   4021b0 <bpnn_free+0x2c0>
  4021b0:	e8 ab 33 00 00       	callq  405560 <check_flag>
  4021b5:	8a 85 7b ff ff ff    	mov    -0x85(%rbp),%al
  4021bb:	a8 01                	test   $0x1,%al
  4021bd:	0f 85 05 00 00 00    	jne    4021c8 <bpnn_free+0x2d8>
  4021c3:	e9 bc 00 00 00       	jmpq   402284 <bpnn_free+0x394>
  4021c8:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4021cb:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  4021ce:	48 63 d0             	movslq %eax,%rdx
  4021d1:	48 63 f1             	movslq %ecx,%rsi
  4021d4:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4021d8:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  4021dc:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
  4021e0:	4d 8b 40 48          	mov    0x48(%r8),%r8
  4021e4:	48 8b 14 d7          	mov    (%rdi,%rdx,8),%rdx
  4021e8:	49 8b 34 f0          	mov    (%r8,%rsi,8),%rsi
  4021ec:	48 39 f2             	cmp    %rsi,%rdx
  4021ef:	48 89 95 70 ff ff ff 	mov    %rdx,-0x90(%rbp)
  4021f6:	0f 84 05 00 00 00    	je     402201 <bpnn_free+0x311>
  4021fc:	e8 5f 33 00 00       	callq  405560 <check_flag>
  402201:	48 8b bd 70 ff ff ff 	mov    -0x90(%rbp),%rdi
  402208:	e8 d3 e6 ff ff       	callq  4008e0 <free@plt>
  40220d:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402210:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  402213:	48 63 f8             	movslq %eax,%rdi
  402216:	48 63 d1             	movslq %ecx,%rdx
  402219:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40221d:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402221:	48 8b 76 58          	mov    0x58(%rsi),%rsi
  402225:	4d 8b 40 58          	mov    0x58(%r8),%r8
  402229:	48 8b 34 fe          	mov    (%rsi,%rdi,8),%rsi
  40222d:	49 8b 14 d0          	mov    (%r8,%rdx,8),%rdx
  402231:	48 39 d6             	cmp    %rdx,%rsi
  402234:	48 89 b5 68 ff ff ff 	mov    %rsi,-0x98(%rbp)
  40223b:	0f 84 05 00 00 00    	je     402246 <bpnn_free+0x356>
  402241:	e8 1a 33 00 00       	callq  405560 <check_flag>
  402246:	48 8b bd 68 ff ff ff 	mov    -0x98(%rbp),%rdi
  40224d:	e8 8e e6 ff ff       	callq  4008e0 <free@plt>
  402252:	8b 45 ec             	mov    -0x14(%rbp),%eax
  402255:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  402258:	05 01 00 00 00       	add    $0x1,%eax
  40225d:	81 c1 01 00 00 00    	add    $0x1,%ecx
  402263:	39 c8                	cmp    %ecx,%eax
  402265:	89 85 64 ff ff ff    	mov    %eax,-0x9c(%rbp)
  40226b:	0f 84 05 00 00 00    	je     402276 <bpnn_free+0x386>
  402271:	e8 ea 32 00 00       	callq  405560 <check_flag>
  402276:	8b 85 64 ff ff ff    	mov    -0x9c(%rbp),%eax
  40227c:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40227f:	e9 04 ff ff ff       	jmpq   402188 <bpnn_free+0x298>
  402284:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402288:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40228c:	48 8b 40 48          	mov    0x48(%rax),%rax
  402290:	48 8b 49 48          	mov    0x48(%rcx),%rcx
  402294:	48 39 c8             	cmp    %rcx,%rax
  402297:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  40229e:	0f 84 05 00 00 00    	je     4022a9 <bpnn_free+0x3b9>
  4022a4:	e8 b7 32 00 00       	callq  405560 <check_flag>
  4022a9:	48 8b bd 58 ff ff ff 	mov    -0xa8(%rbp),%rdi
  4022b0:	e8 2b e6 ff ff       	callq  4008e0 <free@plt>
  4022b5:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4022b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022bd:	48 8b 7f 58          	mov    0x58(%rdi),%rdi
  4022c1:	48 8b 40 58          	mov    0x58(%rax),%rax
  4022c5:	48 39 c7             	cmp    %rax,%rdi
  4022c8:	48 89 bd 50 ff ff ff 	mov    %rdi,-0xb0(%rbp)
  4022cf:	0f 84 05 00 00 00    	je     4022da <bpnn_free+0x3ea>
  4022d5:	e8 86 32 00 00       	callq  405560 <check_flag>
  4022da:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  4022e1:	e8 fa e5 ff ff       	callq  4008e0 <free@plt>
  4022e6:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4022ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022ee:	48 39 c7             	cmp    %rax,%rdi
  4022f1:	48 89 bd 48 ff ff ff 	mov    %rdi,-0xb8(%rbp)
  4022f8:	0f 84 05 00 00 00    	je     402303 <bpnn_free+0x413>
  4022fe:	e8 5d 32 00 00       	callq  405560 <check_flag>
  402303:	48 8b bd 48 ff ff ff 	mov    -0xb8(%rbp),%rdi
  40230a:	e8 d1 e5 ff ff       	callq  4008e0 <free@plt>
  40230f:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
  402316:	5d                   	pop    %rbp
  402317:	c3                   	retq   
  402318:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40231f:	00 

0000000000402320 <bpnn_create>:
  402320:	55                   	push   %rbp
  402321:	48 89 e5             	mov    %rsp,%rbp
  402324:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40232b:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40232e:	89 75 f8             	mov    %esi,-0x8(%rbp)
  402331:	89 55 f4             	mov    %edx,-0xc(%rbp)
  402334:	8b 55 fc             	mov    -0x4(%rbp),%edx
  402337:	3b 55 fc             	cmp    -0x4(%rbp),%edx
  40233a:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  40233d:	0f 84 05 00 00 00    	je     402348 <bpnn_create+0x28>
  402343:	e8 18 32 00 00       	callq  405560 <check_flag>
  402348:	8b 45 f8             	mov    -0x8(%rbp),%eax
  40234b:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  40234e:	89 45 e0             	mov    %eax,-0x20(%rbp)
  402351:	0f 84 05 00 00 00    	je     40235c <bpnn_create+0x3c>
  402357:	e8 04 32 00 00       	callq  405560 <check_flag>
  40235c:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40235f:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  402362:	89 45 dc             	mov    %eax,-0x24(%rbp)
  402365:	0f 84 05 00 00 00    	je     402370 <bpnn_create+0x50>
  40236b:	e8 f0 31 00 00       	callq  405560 <check_flag>
  402370:	8b 7d e4             	mov    -0x1c(%rbp),%edi
  402373:	8b 75 e0             	mov    -0x20(%rbp),%esi
  402376:	8b 55 dc             	mov    -0x24(%rbp),%edx
  402379:	e8 c2 f4 ff ff       	callq  401840 <bpnn_internal_create>
  40237e:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402382:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402386:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
  40238a:	48 8b 40 40          	mov    0x40(%rax),%rax
  40238e:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  402392:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  402396:	0f 84 05 00 00 00    	je     4023a1 <bpnn_create+0x81>
  40239c:	e8 bf 31 00 00       	callq  405560 <check_flag>
  4023a1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4023a4:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  4023a7:	89 45 cc             	mov    %eax,-0x34(%rbp)
  4023aa:	0f 84 05 00 00 00    	je     4023b5 <bpnn_create+0x95>
  4023b0:	e8 ab 31 00 00       	callq  405560 <check_flag>
  4023b5:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4023b8:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4023bb:	89 45 c8             	mov    %eax,-0x38(%rbp)
  4023be:	0f 84 05 00 00 00    	je     4023c9 <bpnn_create+0xa9>
  4023c4:	e8 97 31 00 00       	callq  405560 <check_flag>
  4023c9:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  4023cd:	8b 75 cc             	mov    -0x34(%rbp),%esi
  4023d0:	8b 55 c8             	mov    -0x38(%rbp),%edx
  4023d3:	e8 98 f0 ff ff       	callq  401470 <bpnn_randomize_weights>
  4023d8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4023dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023e0:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
  4023e4:	48 3b 78 48          	cmp    0x48(%rax),%rdi
  4023e8:	48 89 7d c0          	mov    %rdi,-0x40(%rbp)
  4023ec:	0f 84 05 00 00 00    	je     4023f7 <bpnn_create+0xd7>
  4023f2:	e8 69 31 00 00       	callq  405560 <check_flag>
  4023f7:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4023fa:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4023fd:	89 45 bc             	mov    %eax,-0x44(%rbp)
  402400:	0f 84 05 00 00 00    	je     40240b <bpnn_create+0xeb>
  402406:	e8 55 31 00 00       	callq  405560 <check_flag>
  40240b:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40240e:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  402411:	89 45 b8             	mov    %eax,-0x48(%rbp)
  402414:	0f 84 05 00 00 00    	je     40241f <bpnn_create+0xff>
  40241a:	e8 41 31 00 00       	callq  405560 <check_flag>
  40241f:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  402423:	8b 75 bc             	mov    -0x44(%rbp),%esi
  402426:	8b 55 b8             	mov    -0x48(%rbp),%edx
  402429:	e8 42 f0 ff ff       	callq  401470 <bpnn_randomize_weights>
  40242e:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  402432:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402436:	48 8b 7f 50          	mov    0x50(%rdi),%rdi
  40243a:	48 3b 78 50          	cmp    0x50(%rax),%rdi
  40243e:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  402442:	0f 84 05 00 00 00    	je     40244d <bpnn_create+0x12d>
  402448:	e8 13 31 00 00       	callq  405560 <check_flag>
  40244d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402450:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  402453:	89 45 ac             	mov    %eax,-0x54(%rbp)
  402456:	0f 84 05 00 00 00    	je     402461 <bpnn_create+0x141>
  40245c:	e8 ff 30 00 00       	callq  405560 <check_flag>
  402461:	8b 45 f8             	mov    -0x8(%rbp),%eax
  402464:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  402467:	89 45 a8             	mov    %eax,-0x58(%rbp)
  40246a:	0f 84 05 00 00 00    	je     402475 <bpnn_create+0x155>
  402470:	e8 eb 30 00 00       	callq  405560 <check_flag>
  402475:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  402479:	8b 75 ac             	mov    -0x54(%rbp),%esi
  40247c:	8b 55 a8             	mov    -0x58(%rbp),%edx
  40247f:	e8 0c f2 ff ff       	callq  401690 <bpnn_zero_weights>
  402484:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  402488:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40248c:	48 8b 7f 58          	mov    0x58(%rdi),%rdi
  402490:	48 3b 78 58          	cmp    0x58(%rax),%rdi
  402494:	48 89 7d a0          	mov    %rdi,-0x60(%rbp)
  402498:	0f 84 05 00 00 00    	je     4024a3 <bpnn_create+0x183>
  40249e:	e8 bd 30 00 00       	callq  405560 <check_flag>
  4024a3:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4024a6:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  4024a9:	89 45 9c             	mov    %eax,-0x64(%rbp)
  4024ac:	0f 84 05 00 00 00    	je     4024b7 <bpnn_create+0x197>
  4024b2:	e8 a9 30 00 00       	callq  405560 <check_flag>
  4024b7:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4024ba:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  4024bd:	89 45 98             	mov    %eax,-0x68(%rbp)
  4024c0:	0f 84 05 00 00 00    	je     4024cb <bpnn_create+0x1ab>
  4024c6:	e8 95 30 00 00       	callq  405560 <check_flag>
  4024cb:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  4024cf:	8b 75 9c             	mov    -0x64(%rbp),%esi
  4024d2:	8b 55 98             	mov    -0x68(%rbp),%edx
  4024d5:	e8 b6 f1 ff ff       	callq  401690 <bpnn_zero_weights>
  4024da:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4024de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024e2:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
  4024e6:	48 3b 78 38          	cmp    0x38(%rax),%rdi
  4024ea:	48 89 7d 90          	mov    %rdi,-0x70(%rbp)
  4024ee:	0f 84 05 00 00 00    	je     4024f9 <bpnn_create+0x1d9>
  4024f4:	e8 67 30 00 00       	callq  405560 <check_flag>
  4024f9:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4024fc:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  4024ff:	89 45 8c             	mov    %eax,-0x74(%rbp)
  402502:	0f 84 05 00 00 00    	je     40250d <bpnn_create+0x1ed>
  402508:	e8 53 30 00 00       	callq  405560 <check_flag>
  40250d:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
  402511:	8b 75 8c             	mov    -0x74(%rbp),%esi
  402514:	e8 a7 f0 ff ff       	callq  4015c0 <bpnn_randomize_row>
  402519:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  40251d:	48 3b 7d e8          	cmp    -0x18(%rbp),%rdi
  402521:	48 89 7d 80          	mov    %rdi,-0x80(%rbp)
  402525:	0f 84 05 00 00 00    	je     402530 <bpnn_create+0x210>
  40252b:	e8 30 30 00 00       	callq  405560 <check_flag>
  402530:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  402534:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  40253b:	5d                   	pop    %rbp
  40253c:	c3                   	retq   
  40253d:	0f 1f 00             	nopl   (%rax)

0000000000402540 <bpnn_layerforward>:
  402540:	55                   	push   %rbp
  402541:	48 89 e5             	mov    %rsp,%rbp
  402544:	48 83 ec 70          	sub    $0x70,%rsp
  402548:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40254c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402550:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402554:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  402557:	44 89 45 e0          	mov    %r8d,-0x20(%rbp)
  40255b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40255f:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  402563:	48 39 f2             	cmp    %rsi,%rdx
  402566:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  40256a:	0f 84 05 00 00 00    	je     402575 <bpnn_layerforward+0x35>
  402570:	e8 eb 2f 00 00       	callq  405560 <check_flag>
  402575:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  40257c:	00 00 00 
  40257f:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  402584:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402588:	f3 0f 11 00          	movss  %xmm0,(%rax)
  40258c:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
  402593:	8b 45 d8             	mov    -0x28(%rbp),%eax
  402596:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  402599:	29 c8                	sub    %ecx,%eax
  40259b:	0f 9e c2             	setle  %dl
  40259e:	40 b6 01             	mov    $0x1,%sil
  4025a1:	40 84 f6             	test   %sil,%sil
  4025a4:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4025a7:	88 55 c3             	mov    %dl,-0x3d(%rbp)
  4025aa:	0f 85 0a 00 00 00    	jne    4025ba <bpnn_layerforward+0x7a>
  4025b0:	e9 00 00 00 00       	jmpq   4025b5 <bpnn_layerforward+0x75>
  4025b5:	e8 a6 2f 00 00       	callq  405560 <check_flag>
  4025ba:	8a 45 c3             	mov    -0x3d(%rbp),%al
  4025bd:	a8 01                	test   $0x1,%al
  4025bf:	0f 85 05 00 00 00    	jne    4025ca <bpnn_layerforward+0x8a>
  4025c5:	e9 9d 01 00 00       	jmpq   402767 <bpnn_layerforward+0x227>
  4025ca:	0f 57 c0             	xorps  %xmm0,%xmm0
  4025cd:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
  4025d2:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%rbp)
  4025d9:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4025dc:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  4025df:	29 c8                	sub    %ecx,%eax
  4025e1:	0f 9e c2             	setle  %dl
  4025e4:	40 b6 01             	mov    $0x1,%sil
  4025e7:	40 84 f6             	test   %sil,%sil
  4025ea:	89 45 bc             	mov    %eax,-0x44(%rbp)
  4025ed:	88 55 bb             	mov    %dl,-0x45(%rbp)
  4025f0:	0f 85 0a 00 00 00    	jne    402600 <bpnn_layerforward+0xc0>
  4025f6:	e9 00 00 00 00       	jmpq   4025fb <bpnn_layerforward+0xbb>
  4025fb:	e8 60 2f 00 00       	callq  405560 <check_flag>
  402600:	8a 45 bb             	mov    -0x45(%rbp),%al
  402603:	a8 01                	test   $0x1,%al
  402605:	0f 85 05 00 00 00    	jne    402610 <bpnn_layerforward+0xd0>
  40260b:	e9 b5 00 00 00       	jmpq   4026c5 <bpnn_layerforward+0x185>
  402610:	8b 45 d8             	mov    -0x28(%rbp),%eax
  402613:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  402616:	48 63 d0             	movslq %eax,%rdx
  402619:	48 63 f1             	movslq %ecx,%rsi
  40261c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40261f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  402622:	48 63 f8             	movslq %eax,%rdi
  402625:	4c 63 c1             	movslq %ecx,%r8
  402628:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  40262c:	4c 8b 55 e8          	mov    -0x18(%rbp),%r10
  402630:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  402634:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  402638:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  40263d:	f3 41 0f 10 0c b0    	movss  (%r8,%rsi,4),%xmm1
  402643:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  402646:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  402649:	48 63 d0             	movslq %eax,%rdx
  40264c:	48 63 f1             	movslq %ecx,%rsi
  40264f:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402653:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402657:	f3 0f 10 14 97       	movss  (%rdi,%rdx,4),%xmm2
  40265c:	f3 41 0f 10 1c b0    	movss  (%r8,%rsi,4),%xmm3
  402662:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  402666:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
  40266a:	f3 0f 10 55 dc       	movss  -0x24(%rbp),%xmm2
  40266f:	f3 0f 10 5d dc       	movss  -0x24(%rbp),%xmm3
  402674:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  402678:	f3 0f 58 d9          	addss  %xmm1,%xmm3
  40267c:	0f 2e d3             	ucomiss %xmm3,%xmm2
  40267f:	f3 0f 11 55 b4       	movss  %xmm2,-0x4c(%rbp)
  402684:	0f 84 05 00 00 00    	je     40268f <bpnn_layerforward+0x14f>
  40268a:	e8 d1 2e 00 00       	callq  405560 <check_flag>
  40268f:	f3 0f 10 45 b4       	movss  -0x4c(%rbp),%xmm0
  402694:	f3 0f 11 45 dc       	movss  %xmm0,-0x24(%rbp)
  402699:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40269c:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  40269f:	05 01 00 00 00       	add    $0x1,%eax
  4026a4:	81 c1 01 00 00 00    	add    $0x1,%ecx
  4026aa:	39 c8                	cmp    %ecx,%eax
  4026ac:	89 45 b0             	mov    %eax,-0x50(%rbp)
  4026af:	0f 84 05 00 00 00    	je     4026ba <bpnn_layerforward+0x17a>
  4026b5:	e8 a6 2e 00 00       	callq  405560 <check_flag>
  4026ba:	8b 45 b0             	mov    -0x50(%rbp),%eax
  4026bd:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4026c0:	e9 14 ff ff ff       	jmpq   4025d9 <bpnn_layerforward+0x99>
  4026c5:	f3 0f 10 45 dc       	movss  -0x24(%rbp),%xmm0
  4026ca:	f3 0f 10 4d dc       	movss  -0x24(%rbp),%xmm1
  4026cf:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4026d3:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  4026d7:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
  4026db:	f2 0f 11 45 a8       	movsd  %xmm0,-0x58(%rbp)
  4026e0:	0f 84 05 00 00 00    	je     4026eb <bpnn_layerforward+0x1ab>
  4026e6:	e8 75 2e 00 00       	callq  405560 <check_flag>
  4026eb:	f2 0f 10 45 a8       	movsd  -0x58(%rbp),%xmm0
  4026f0:	e8 fb e9 ff ff       	callq  4010f0 <squash>
  4026f5:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4026f8:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  4026fb:	48 63 d0             	movslq %eax,%rdx
  4026fe:	48 63 f1             	movslq %ecx,%rsi
  402701:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  402705:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  402709:	48 c1 e2 02          	shl    $0x2,%rdx
  40270d:	48 01 d7             	add    %rdx,%rdi
  402710:	48 c1 e6 02          	shl    $0x2,%rsi
  402714:	49 01 f0             	add    %rsi,%r8
  402717:	4c 39 c7             	cmp    %r8,%rdi
  40271a:	f3 0f 11 45 a4       	movss  %xmm0,-0x5c(%rbp)
  40271f:	48 89 7d 98          	mov    %rdi,-0x68(%rbp)
  402723:	0f 84 05 00 00 00    	je     40272e <bpnn_layerforward+0x1ee>
  402729:	e8 32 2e 00 00       	callq  405560 <check_flag>
  40272e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  402732:	f3 0f 10 45 a4       	movss  -0x5c(%rbp),%xmm0
  402737:	f3 0f 11 00          	movss  %xmm0,(%rax)
  40273b:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40273e:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  402741:	05 01 00 00 00       	add    $0x1,%eax
  402746:	81 c1 01 00 00 00    	add    $0x1,%ecx
  40274c:	39 c8                	cmp    %ecx,%eax
  40274e:	89 45 94             	mov    %eax,-0x6c(%rbp)
  402751:	0f 84 05 00 00 00    	je     40275c <bpnn_layerforward+0x21c>
  402757:	e8 04 2e 00 00       	callq  405560 <check_flag>
  40275c:	8b 45 94             	mov    -0x6c(%rbp),%eax
  40275f:	89 45 d8             	mov    %eax,-0x28(%rbp)
  402762:	e9 2c fe ff ff       	jmpq   402593 <bpnn_layerforward+0x53>
  402767:	48 83 c4 70          	add    $0x70,%rsp
  40276b:	5d                   	pop    %rbp
  40276c:	c3                   	retq   
  40276d:	0f 1f 00             	nopl   (%rax)

0000000000402770 <bpnn_output_error>:
  402770:	55                   	push   %rbp
  402771:	48 89 e5             	mov    %rsp,%rbp
  402774:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  40277b:	0f 57 c0             	xorps  %xmm0,%xmm0
  40277e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402782:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  402786:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  40278a:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  40278d:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
  402791:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
  402796:	c7 45 d4 01 00 00 00 	movl   $0x1,-0x2c(%rbp)
  40279d:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4027a0:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  4027a3:	29 c8                	sub    %ecx,%eax
  4027a5:	0f 9e c2             	setle  %dl
  4027a8:	40 b6 01             	mov    $0x1,%sil
  4027ab:	40 84 f6             	test   %sil,%sil
  4027ae:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  4027b1:	88 55 c3             	mov    %dl,-0x3d(%rbp)
  4027b4:	0f 85 0a 00 00 00    	jne    4027c4 <bpnn_output_error+0x54>
  4027ba:	e9 00 00 00 00       	jmpq   4027bf <bpnn_output_error+0x4f>
  4027bf:	e8 9c 2d 00 00       	callq  405560 <check_flag>
  4027c4:	8a 45 c3             	mov    -0x3d(%rbp),%al
  4027c7:	a8 01                	test   $0x1,%al
  4027c9:	0f 85 05 00 00 00    	jne    4027d4 <bpnn_output_error+0x64>
  4027cf:	e9 7c 02 00 00       	jmpq   402a50 <bpnn_output_error+0x2e0>
  4027d4:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4027d7:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  4027da:	48 63 d0             	movslq %eax,%rdx
  4027dd:	48 63 f1             	movslq %ecx,%rsi
  4027e0:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  4027e4:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  4027e8:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  4027ed:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  4027f2:	f3 0f 11 45 bc       	movss  %xmm0,-0x44(%rbp)
  4027f7:	0f 84 05 00 00 00    	je     402802 <bpnn_output_error+0x92>
  4027fd:	e8 5e 2d 00 00       	callq  405560 <check_flag>
  402802:	f3 0f 10 45 bc       	movss  -0x44(%rbp),%xmm0
  402807:	f3 0f 11 45 d0       	movss  %xmm0,-0x30(%rbp)
  40280c:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40280f:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  402812:	48 63 d0             	movslq %eax,%rdx
  402815:	48 63 f1             	movslq %ecx,%rsi
  402818:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  40281c:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  402820:	f3 0f 10 0c 97       	movss  (%rdi,%rdx,4),%xmm1
  402825:	41 0f 2e 0c b0       	ucomiss (%r8,%rsi,4),%xmm1
  40282a:	f3 0f 11 4d b8       	movss  %xmm1,-0x48(%rbp)
  40282f:	0f 84 05 00 00 00    	je     40283a <bpnn_output_error+0xca>
  402835:	e8 26 2d 00 00       	callq  405560 <check_flag>
  40283a:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  402841:	00 00 00 
  402844:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  402849:	f3 0f 10 4d b8       	movss  -0x48(%rbp),%xmm1
  40284e:	f3 0f 11 4d cc       	movss  %xmm1,-0x34(%rbp)
  402853:	f3 0f 10 55 d0       	movss  -0x30(%rbp),%xmm2
  402858:	f3 0f 10 5d d0       	movss  -0x30(%rbp),%xmm3
  40285d:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  402861:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
  402865:	f3 0f 10 65 d0       	movss  -0x30(%rbp),%xmm4
  40286a:	f3 0f 10 6d d0       	movss  -0x30(%rbp),%xmm5
  40286f:	f3 0f 5a e4          	cvtss2sd %xmm4,%xmm4
  402873:	f3 0f 5a ed          	cvtss2sd %xmm5,%xmm5
  402877:	0f 28 f0             	movaps %xmm0,%xmm6
  40287a:	f2 0f 5c f4          	subsd  %xmm4,%xmm6
  40287e:	f2 0f 5c c5          	subsd  %xmm5,%xmm0
  402882:	f2 0f 59 d6          	mulsd  %xmm6,%xmm2
  402886:	f2 0f 59 d8          	mulsd  %xmm0,%xmm3
  40288a:	f3 0f 10 45 cc       	movss  -0x34(%rbp),%xmm0
  40288f:	f3 0f 10 65 cc       	movss  -0x34(%rbp),%xmm4
  402894:	f3 0f 10 6d d0       	movss  -0x30(%rbp),%xmm5
  402899:	f3 0f 10 75 d0       	movss  -0x30(%rbp),%xmm6
  40289e:	f3 0f 5c c5          	subss  %xmm5,%xmm0
  4028a2:	f3 0f 5c e6          	subss  %xmm6,%xmm4
  4028a6:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  4028aa:	f3 0f 5a e4          	cvtss2sd %xmm4,%xmm4
  4028ae:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
  4028b2:	f2 0f 59 dc          	mulsd  %xmm4,%xmm3
  4028b6:	f2 0f 5a c2          	cvtsd2ss %xmm2,%xmm0
  4028ba:	f2 0f 5a d3          	cvtsd2ss %xmm3,%xmm2
  4028be:	0f 2e c2             	ucomiss %xmm2,%xmm0
  4028c1:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
  4028c6:	0f 84 05 00 00 00    	je     4028d1 <bpnn_output_error+0x161>
  4028cc:	e8 8f 2c 00 00       	callq  405560 <check_flag>
  4028d1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4028d4:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  4028d7:	48 63 d0             	movslq %eax,%rdx
  4028da:	48 63 f1             	movslq %ecx,%rsi
  4028dd:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4028e1:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  4028e5:	48 c1 e2 02          	shl    $0x2,%rdx
  4028e9:	48 01 d7             	add    %rdx,%rdi
  4028ec:	48 c1 e6 02          	shl    $0x2,%rsi
  4028f0:	49 01 f0             	add    %rsi,%r8
  4028f3:	4c 39 c7             	cmp    %r8,%rdi
  4028f6:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  4028fa:	0f 84 05 00 00 00    	je     402905 <bpnn_output_error+0x195>
  402900:	e8 5b 2c 00 00       	callq  405560 <check_flag>
  402905:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  402909:	f3 0f 10 45 b4       	movss  -0x4c(%rbp),%xmm0
  40290e:	f3 0f 11 00          	movss  %xmm0,(%rax)
  402912:	48 63 4d d4          	movslq -0x2c(%rbp),%rcx
  402916:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40291a:	f3 0f 10 0c 8a       	movss  (%rdx,%rcx,4),%xmm1
  40291f:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  402923:	0f 57 d2             	xorps  %xmm2,%xmm2
  402926:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
  40292a:	40 0f 97 c6          	seta   %sil
  40292e:	40 b7 01             	mov    $0x1,%dil
  402931:	40 84 ff             	test   %dil,%dil
  402934:	40 88 75 a7          	mov    %sil,-0x59(%rbp)
  402938:	0f 85 0a 00 00 00    	jne    402948 <bpnn_output_error+0x1d8>
  40293e:	e9 00 00 00 00       	jmpq   402943 <bpnn_output_error+0x1d3>
  402943:	e8 18 2c 00 00       	callq  405560 <check_flag>
  402948:	8a 45 a7             	mov    -0x59(%rbp),%al
  40294b:	a8 01                	test   $0x1,%al
  40294d:	0f 85 05 00 00 00    	jne    402958 <bpnn_output_error+0x1e8>
  402953:	e9 3d 00 00 00       	jmpq   402995 <bpnn_output_error+0x225>
  402958:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40295b:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  40295e:	48 63 d0             	movslq %eax,%rdx
  402961:	48 63 f1             	movslq %ecx,%rsi
  402964:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402968:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  40296c:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  402971:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  402976:	f3 0f 11 45 a0       	movss  %xmm0,-0x60(%rbp)
  40297b:	0f 84 05 00 00 00    	je     402986 <bpnn_output_error+0x216>
  402981:	e8 da 2b 00 00       	callq  405560 <check_flag>
  402986:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
  40298b:	f3 0f 11 45 9c       	movss  %xmm0,-0x64(%rbp)
  402990:	e9 5b 00 00 00       	jmpq   4029f0 <bpnn_output_error+0x280>
  402995:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  402998:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  40299b:	48 63 d0             	movslq %eax,%rdx
  40299e:	48 63 f1             	movslq %ecx,%rsi
  4029a1:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4029a5:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  4029a9:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  4029ae:	f3 41 0f 10 0c b0    	movss  (%r8,%rsi,4),%xmm1
  4029b4:	66 0f 7e c0          	movd   %xmm0,%eax
  4029b8:	35 00 00 00 80       	xor    $0x80000000,%eax
  4029bd:	66 0f 6e c0          	movd   %eax,%xmm0
  4029c1:	66 0f 7e c8          	movd   %xmm1,%eax
  4029c5:	35 00 00 00 80       	xor    $0x80000000,%eax
  4029ca:	66 0f 6e c8          	movd   %eax,%xmm1
  4029ce:	0f 2e c1             	ucomiss %xmm1,%xmm0
  4029d1:	f3 0f 11 45 98       	movss  %xmm0,-0x68(%rbp)
  4029d6:	0f 84 05 00 00 00    	je     4029e1 <bpnn_output_error+0x271>
  4029dc:	e8 7f 2b 00 00       	callq  405560 <check_flag>
  4029e1:	f3 0f 10 45 98       	movss  -0x68(%rbp),%xmm0
  4029e6:	f3 0f 11 45 9c       	movss  %xmm0,-0x64(%rbp)
  4029eb:	e9 00 00 00 00       	jmpq   4029f0 <bpnn_output_error+0x280>
  4029f0:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
  4029f5:	f3 0f 10 4d c8       	movss  -0x38(%rbp),%xmm1
  4029fa:	f3 0f 10 55 c8       	movss  -0x38(%rbp),%xmm2
  4029ff:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  402a03:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  402a07:	0f 2e ca             	ucomiss %xmm2,%xmm1
  402a0a:	f3 0f 11 4d 94       	movss  %xmm1,-0x6c(%rbp)
  402a0f:	0f 84 05 00 00 00    	je     402a1a <bpnn_output_error+0x2aa>
  402a15:	e8 46 2b 00 00       	callq  405560 <check_flag>
  402a1a:	f3 0f 10 45 94       	movss  -0x6c(%rbp),%xmm0
  402a1f:	f3 0f 11 45 c8       	movss  %xmm0,-0x38(%rbp)
  402a24:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  402a27:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  402a2a:	05 01 00 00 00       	add    $0x1,%eax
  402a2f:	81 c1 01 00 00 00    	add    $0x1,%ecx
  402a35:	39 c8                	cmp    %ecx,%eax
  402a37:	89 45 90             	mov    %eax,-0x70(%rbp)
  402a3a:	0f 84 05 00 00 00    	je     402a45 <bpnn_output_error+0x2d5>
  402a40:	e8 1b 2b 00 00       	callq  405560 <check_flag>
  402a45:	8b 45 90             	mov    -0x70(%rbp),%eax
  402a48:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  402a4b:	e9 4d fd ff ff       	jmpq   40279d <bpnn_output_error+0x2d>
  402a50:	f3 0f 10 45 c8       	movss  -0x38(%rbp),%xmm0
  402a55:	0f 2e 45 c8          	ucomiss -0x38(%rbp),%xmm0
  402a59:	f3 0f 11 45 8c       	movss  %xmm0,-0x74(%rbp)
  402a5e:	0f 84 05 00 00 00    	je     402a69 <bpnn_output_error+0x2f9>
  402a64:	e8 f7 2a 00 00       	callq  405560 <check_flag>
  402a69:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402a6d:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  402a71:	48 89 45 80          	mov    %rax,-0x80(%rbp)
  402a75:	0f 84 05 00 00 00    	je     402a80 <bpnn_output_error+0x310>
  402a7b:	e8 e0 2a 00 00       	callq  405560 <check_flag>
  402a80:	48 8b 45 80          	mov    -0x80(%rbp),%rax
  402a84:	f3 0f 10 45 8c       	movss  -0x74(%rbp),%xmm0
  402a89:	f3 0f 11 00          	movss  %xmm0,(%rax)
  402a8d:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  402a94:	5d                   	pop    %rbp
  402a95:	c3                   	retq   
  402a96:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402a9d:	00 00 00 

0000000000402aa0 <bpnn_hidden_error>:
  402aa0:	55                   	push   %rbp
  402aa1:	48 89 e5             	mov    %rsp,%rbp
  402aa4:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  402aab:	48 8b 45 10          	mov    0x10(%rbp),%rax
  402aaf:	0f 57 c0             	xorps  %xmm0,%xmm0
  402ab2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402ab6:	89 75 f4             	mov    %esi,-0xc(%rbp)
  402ab9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402abd:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  402ac0:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
  402ac4:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
  402ac8:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  402acc:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
  402ad1:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%rbp)
  402ad8:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402adb:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  402ade:	29 c8                	sub    %ecx,%eax
  402ae0:	0f 9e c2             	setle  %dl
  402ae3:	40 b6 01             	mov    $0x1,%sil
  402ae6:	40 84 f6             	test   %sil,%sil
  402ae9:	89 45 b0             	mov    %eax,-0x50(%rbp)
  402aec:	88 55 af             	mov    %dl,-0x51(%rbp)
  402aef:	0f 85 0a 00 00 00    	jne    402aff <bpnn_hidden_error+0x5f>
  402af5:	e9 00 00 00 00       	jmpq   402afa <bpnn_hidden_error+0x5a>
  402afa:	e8 61 2a 00 00       	callq  405560 <check_flag>
  402aff:	8a 45 af             	mov    -0x51(%rbp),%al
  402b02:	a8 01                	test   $0x1,%al
  402b04:	0f 85 05 00 00 00    	jne    402b0f <bpnn_hidden_error+0x6f>
  402b0a:	e9 48 03 00 00       	jmpq   402e57 <bpnn_hidden_error+0x3b7>
  402b0f:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402b12:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402b15:	48 63 d0             	movslq %eax,%rdx
  402b18:	48 63 f1             	movslq %ecx,%rsi
  402b1b:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  402b1f:	4c 8b 45 d0          	mov    -0x30(%rbp),%r8
  402b23:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  402b28:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  402b2d:	f3 0f 11 45 a8       	movss  %xmm0,-0x58(%rbp)
  402b32:	0f 84 05 00 00 00    	je     402b3d <bpnn_hidden_error+0x9d>
  402b38:	e8 23 2a 00 00       	callq  405560 <check_flag>
  402b3d:	0f 57 c0             	xorps  %xmm0,%xmm0
  402b40:	f3 0f 10 4d a8       	movss  -0x58(%rbp),%xmm1
  402b45:	f3 0f 11 4d bc       	movss  %xmm1,-0x44(%rbp)
  402b4a:	f3 0f 11 45 b8       	movss  %xmm0,-0x48(%rbp)
  402b4f:	c7 45 c0 01 00 00 00 	movl   $0x1,-0x40(%rbp)
  402b56:	8b 45 c0             	mov    -0x40(%rbp),%eax
  402b59:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  402b5c:	29 c8                	sub    %ecx,%eax
  402b5e:	0f 9e c2             	setle  %dl
  402b61:	40 b6 01             	mov    $0x1,%sil
  402b64:	40 84 f6             	test   %sil,%sil
  402b67:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  402b6a:	88 55 a3             	mov    %dl,-0x5d(%rbp)
  402b6d:	0f 85 0a 00 00 00    	jne    402b7d <bpnn_hidden_error+0xdd>
  402b73:	e9 00 00 00 00       	jmpq   402b78 <bpnn_hidden_error+0xd8>
  402b78:	e8 e3 29 00 00       	callq  405560 <check_flag>
  402b7d:	8a 45 a3             	mov    -0x5d(%rbp),%al
  402b80:	a8 01                	test   $0x1,%al
  402b82:	0f 85 05 00 00 00    	jne    402b8d <bpnn_hidden_error+0xed>
  402b88:	e9 b5 00 00 00       	jmpq   402c42 <bpnn_hidden_error+0x1a2>
  402b8d:	8b 45 c0             	mov    -0x40(%rbp),%eax
  402b90:	8b 4d c0             	mov    -0x40(%rbp),%ecx
  402b93:	48 63 d0             	movslq %eax,%rdx
  402b96:	48 63 f1             	movslq %ecx,%rsi
  402b99:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  402b9d:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  402ba1:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  402ba6:	f3 41 0f 10 0c b0    	movss  (%r8,%rsi,4),%xmm1
  402bac:	8b 45 c0             	mov    -0x40(%rbp),%eax
  402baf:	8b 4d c0             	mov    -0x40(%rbp),%ecx
  402bb2:	48 63 d0             	movslq %eax,%rdx
  402bb5:	48 63 f1             	movslq %ecx,%rsi
  402bb8:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402bbb:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402bbe:	48 63 f8             	movslq %eax,%rdi
  402bc1:	4c 63 c1             	movslq %ecx,%r8
  402bc4:	4c 8b 4d d8          	mov    -0x28(%rbp),%r9
  402bc8:	4c 8b 55 d8          	mov    -0x28(%rbp),%r10
  402bcc:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  402bd0:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  402bd4:	f3 0f 10 14 97       	movss  (%rdi,%rdx,4),%xmm2
  402bd9:	f3 41 0f 10 1c b0    	movss  (%r8,%rsi,4),%xmm3
  402bdf:	f3 0f 59 c2          	mulss  %xmm2,%xmm0
  402be3:	f3 0f 59 cb          	mulss  %xmm3,%xmm1
  402be7:	f3 0f 10 55 b8       	movss  -0x48(%rbp),%xmm2
  402bec:	f3 0f 10 5d b8       	movss  -0x48(%rbp),%xmm3
  402bf1:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  402bf5:	f3 0f 58 d9          	addss  %xmm1,%xmm3
  402bf9:	0f 2e d3             	ucomiss %xmm3,%xmm2
  402bfc:	f3 0f 11 55 9c       	movss  %xmm2,-0x64(%rbp)
  402c01:	0f 84 05 00 00 00    	je     402c0c <bpnn_hidden_error+0x16c>
  402c07:	e8 54 29 00 00       	callq  405560 <check_flag>
  402c0c:	f3 0f 10 45 9c       	movss  -0x64(%rbp),%xmm0
  402c11:	f3 0f 11 45 b8       	movss  %xmm0,-0x48(%rbp)
  402c16:	8b 45 c0             	mov    -0x40(%rbp),%eax
  402c19:	8b 4d c0             	mov    -0x40(%rbp),%ecx
  402c1c:	05 01 00 00 00       	add    $0x1,%eax
  402c21:	81 c1 01 00 00 00    	add    $0x1,%ecx
  402c27:	39 c8                	cmp    %ecx,%eax
  402c29:	89 45 98             	mov    %eax,-0x68(%rbp)
  402c2c:	0f 84 05 00 00 00    	je     402c37 <bpnn_hidden_error+0x197>
  402c32:	e8 29 29 00 00       	callq  405560 <check_flag>
  402c37:	8b 45 98             	mov    -0x68(%rbp),%eax
  402c3a:	89 45 c0             	mov    %eax,-0x40(%rbp)
  402c3d:	e9 14 ff ff ff       	jmpq   402b56 <bpnn_hidden_error+0xb6>
  402c42:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  402c49:	00 00 00 
  402c4c:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
  402c51:	f3 0f 10 4d bc       	movss  -0x44(%rbp),%xmm1
  402c56:	f3 0f 10 55 bc       	movss  -0x44(%rbp),%xmm2
  402c5b:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  402c5f:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  402c63:	f3 0f 10 5d bc       	movss  -0x44(%rbp),%xmm3
  402c68:	f3 0f 10 65 bc       	movss  -0x44(%rbp),%xmm4
  402c6d:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
  402c71:	f3 0f 5a e4          	cvtss2sd %xmm4,%xmm4
  402c75:	0f 28 e8             	movaps %xmm0,%xmm5
  402c78:	f2 0f 5c eb          	subsd  %xmm3,%xmm5
  402c7c:	f2 0f 5c c4          	subsd  %xmm4,%xmm0
  402c80:	f2 0f 59 cd          	mulsd  %xmm5,%xmm1
  402c84:	f2 0f 59 d0          	mulsd  %xmm0,%xmm2
  402c88:	f3 0f 10 45 b8       	movss  -0x48(%rbp),%xmm0
  402c8d:	f3 0f 10 5d b8       	movss  -0x48(%rbp),%xmm3
  402c92:	f3 0f 5a c0          	cvtss2sd %xmm0,%xmm0
  402c96:	f3 0f 5a db          	cvtss2sd %xmm3,%xmm3
  402c9a:	f2 0f 59 c8          	mulsd  %xmm0,%xmm1
  402c9e:	f2 0f 59 d3          	mulsd  %xmm3,%xmm2
  402ca2:	f2 0f 5a c1          	cvtsd2ss %xmm1,%xmm0
  402ca6:	f2 0f 5a ca          	cvtsd2ss %xmm2,%xmm1
  402caa:	0f 2e c1             	ucomiss %xmm1,%xmm0
  402cad:	f3 0f 11 45 94       	movss  %xmm0,-0x6c(%rbp)
  402cb2:	0f 84 05 00 00 00    	je     402cbd <bpnn_hidden_error+0x21d>
  402cb8:	e8 a3 28 00 00       	callq  405560 <check_flag>
  402cbd:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402cc0:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402cc3:	48 63 d0             	movslq %eax,%rdx
  402cc6:	48 63 f1             	movslq %ecx,%rsi
  402cc9:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402ccd:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402cd1:	48 c1 e2 02          	shl    $0x2,%rdx
  402cd5:	48 01 d7             	add    %rdx,%rdi
  402cd8:	48 c1 e6 02          	shl    $0x2,%rsi
  402cdc:	49 01 f0             	add    %rsi,%r8
  402cdf:	4c 39 c7             	cmp    %r8,%rdi
  402ce2:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  402ce6:	0f 84 05 00 00 00    	je     402cf1 <bpnn_hidden_error+0x251>
  402cec:	e8 6f 28 00 00       	callq  405560 <check_flag>
  402cf1:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  402cf5:	f3 0f 10 45 94       	movss  -0x6c(%rbp),%xmm0
  402cfa:	f3 0f 11 00          	movss  %xmm0,(%rax)
  402cfe:	48 63 4d c4          	movslq -0x3c(%rbp),%rcx
  402d02:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  402d06:	f3 0f 10 0c 8a       	movss  (%rdx,%rcx,4),%xmm1
  402d0b:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  402d0f:	0f 57 d2             	xorps  %xmm2,%xmm2
  402d12:	66 0f 2e ca          	ucomisd %xmm2,%xmm1
  402d16:	40 0f 97 c6          	seta   %sil
  402d1a:	40 b7 01             	mov    $0x1,%dil
  402d1d:	40 84 ff             	test   %dil,%dil
  402d20:	40 88 75 87          	mov    %sil,-0x79(%rbp)
  402d24:	0f 85 0a 00 00 00    	jne    402d34 <bpnn_hidden_error+0x294>
  402d2a:	e9 00 00 00 00       	jmpq   402d2f <bpnn_hidden_error+0x28f>
  402d2f:	e8 2c 28 00 00       	callq  405560 <check_flag>
  402d34:	8a 45 87             	mov    -0x79(%rbp),%al
  402d37:	a8 01                	test   $0x1,%al
  402d39:	0f 85 05 00 00 00    	jne    402d44 <bpnn_hidden_error+0x2a4>
  402d3f:	e9 40 00 00 00       	jmpq   402d84 <bpnn_hidden_error+0x2e4>
  402d44:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402d47:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402d4a:	48 63 d0             	movslq %eax,%rdx
  402d4d:	48 63 f1             	movslq %ecx,%rsi
  402d50:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402d54:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402d58:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  402d5d:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  402d62:	f3 0f 11 45 80       	movss  %xmm0,-0x80(%rbp)
  402d67:	0f 84 05 00 00 00    	je     402d72 <bpnn_hidden_error+0x2d2>
  402d6d:	e8 ee 27 00 00       	callq  405560 <check_flag>
  402d72:	f3 0f 10 45 80       	movss  -0x80(%rbp),%xmm0
  402d77:	f3 0f 11 85 7c ff ff 	movss  %xmm0,-0x84(%rbp)
  402d7e:	ff 
  402d7f:	e9 64 00 00 00       	jmpq   402de8 <bpnn_hidden_error+0x348>
  402d84:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402d87:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402d8a:	48 63 d0             	movslq %eax,%rdx
  402d8d:	48 63 f1             	movslq %ecx,%rsi
  402d90:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402d94:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402d98:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  402d9d:	f3 41 0f 10 0c b0    	movss  (%r8,%rsi,4),%xmm1
  402da3:	66 0f 7e c0          	movd   %xmm0,%eax
  402da7:	35 00 00 00 80       	xor    $0x80000000,%eax
  402dac:	66 0f 6e c0          	movd   %eax,%xmm0
  402db0:	66 0f 7e c8          	movd   %xmm1,%eax
  402db4:	35 00 00 00 80       	xor    $0x80000000,%eax
  402db9:	66 0f 6e c8          	movd   %eax,%xmm1
  402dbd:	0f 2e c1             	ucomiss %xmm1,%xmm0
  402dc0:	f3 0f 11 85 78 ff ff 	movss  %xmm0,-0x88(%rbp)
  402dc7:	ff 
  402dc8:	0f 84 05 00 00 00    	je     402dd3 <bpnn_hidden_error+0x333>
  402dce:	e8 8d 27 00 00       	callq  405560 <check_flag>
  402dd3:	f3 0f 10 85 78 ff ff 	movss  -0x88(%rbp),%xmm0
  402dda:	ff 
  402ddb:	f3 0f 11 85 7c ff ff 	movss  %xmm0,-0x84(%rbp)
  402de2:	ff 
  402de3:	e9 00 00 00 00       	jmpq   402de8 <bpnn_hidden_error+0x348>
  402de8:	f3 0f 10 85 7c ff ff 	movss  -0x84(%rbp),%xmm0
  402def:	ff 
  402df0:	f3 0f 10 4d b4       	movss  -0x4c(%rbp),%xmm1
  402df5:	f3 0f 10 55 b4       	movss  -0x4c(%rbp),%xmm2
  402dfa:	f3 0f 58 c8          	addss  %xmm0,%xmm1
  402dfe:	f3 0f 58 d0          	addss  %xmm0,%xmm2
  402e02:	0f 2e ca             	ucomiss %xmm2,%xmm1
  402e05:	f3 0f 11 8d 74 ff ff 	movss  %xmm1,-0x8c(%rbp)
  402e0c:	ff 
  402e0d:	0f 84 05 00 00 00    	je     402e18 <bpnn_hidden_error+0x378>
  402e13:	e8 48 27 00 00       	callq  405560 <check_flag>
  402e18:	f3 0f 10 85 74 ff ff 	movss  -0x8c(%rbp),%xmm0
  402e1f:	ff 
  402e20:	f3 0f 11 45 b4       	movss  %xmm0,-0x4c(%rbp)
  402e25:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402e28:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402e2b:	05 01 00 00 00       	add    $0x1,%eax
  402e30:	81 c1 01 00 00 00    	add    $0x1,%ecx
  402e36:	39 c8                	cmp    %ecx,%eax
  402e38:	89 85 70 ff ff ff    	mov    %eax,-0x90(%rbp)
  402e3e:	0f 84 05 00 00 00    	je     402e49 <bpnn_hidden_error+0x3a9>
  402e44:	e8 17 27 00 00       	callq  405560 <check_flag>
  402e49:	8b 85 70 ff ff ff    	mov    -0x90(%rbp),%eax
  402e4f:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  402e52:	e9 81 fc ff ff       	jmpq   402ad8 <bpnn_hidden_error+0x38>
  402e57:	f3 0f 10 45 b4       	movss  -0x4c(%rbp),%xmm0
  402e5c:	0f 2e 45 b4          	ucomiss -0x4c(%rbp),%xmm0
  402e60:	f3 0f 11 85 6c ff ff 	movss  %xmm0,-0x94(%rbp)
  402e67:	ff 
  402e68:	0f 84 05 00 00 00    	je     402e73 <bpnn_hidden_error+0x3d3>
  402e6e:	e8 ed 26 00 00       	callq  405560 <check_flag>
  402e73:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402e77:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  402e7b:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
  402e82:	0f 84 05 00 00 00    	je     402e8d <bpnn_hidden_error+0x3ed>
  402e88:	e8 d3 26 00 00       	callq  405560 <check_flag>
  402e8d:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  402e94:	f3 0f 10 85 6c ff ff 	movss  -0x94(%rbp),%xmm0
  402e9b:	ff 
  402e9c:	f3 0f 11 00          	movss  %xmm0,(%rax)
  402ea0:	48 81 c4 a0 00 00 00 	add    $0xa0,%rsp
  402ea7:	5d                   	pop    %rbp
  402ea8:	c3                   	retq   
  402ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000402eb0 <bpnn_adjust_weights>:
  402eb0:	55                   	push   %rbp
  402eb1:	48 89 e5             	mov    %rsp,%rbp
  402eb4:	48 81 ec 80 00 00 00 	sub    $0x80,%rsp
  402ebb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402ebf:	89 75 f4             	mov    %esi,-0xc(%rbp)
  402ec2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  402ec6:	89 4d e4             	mov    %ecx,-0x1c(%rbp)
  402ec9:	4c 89 45 d8          	mov    %r8,-0x28(%rbp)
  402ecd:	4c 89 4d d0          	mov    %r9,-0x30(%rbp)
  402ed1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402ed5:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  402ed9:	48 39 fa             	cmp    %rdi,%rdx
  402edc:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  402ee0:	0f 84 05 00 00 00    	je     402eeb <bpnn_adjust_weights+0x3b>
  402ee6:	e8 75 26 00 00       	callq  405560 <check_flag>
  402eeb:	48 b8 01 00 00 00 00 	movabs $0x1,%rax
  402ef2:	00 00 00 
  402ef5:	f3 48 0f 2a c0       	cvtsi2ss %rax,%xmm0
  402efa:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402efe:	f3 0f 11 00          	movss  %xmm0,(%rax)
  402f02:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%rbp)
  402f09:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402f0c:	8b 4d f4             	mov    -0xc(%rbp),%ecx
  402f0f:	29 c8                	sub    %ecx,%eax
  402f11:	0f 9e c2             	setle  %dl
  402f14:	40 b6 01             	mov    $0x1,%sil
  402f17:	40 84 f6             	test   %sil,%sil
  402f1a:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  402f1d:	88 55 b3             	mov    %dl,-0x4d(%rbp)
  402f20:	0f 85 0a 00 00 00    	jne    402f30 <bpnn_adjust_weights+0x80>
  402f26:	e9 00 00 00 00       	jmpq   402f2b <bpnn_adjust_weights+0x7b>
  402f2b:	e8 30 26 00 00       	callq  405560 <check_flag>
  402f30:	8a 45 b3             	mov    -0x4d(%rbp),%al
  402f33:	a8 01                	test   $0x1,%al
  402f35:	0f 85 05 00 00 00    	jne    402f40 <bpnn_adjust_weights+0x90>
  402f3b:	e9 5f 02 00 00       	jmpq   40319f <bpnn_adjust_weights+0x2ef>
  402f40:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
  402f47:	8b 45 c8             	mov    -0x38(%rbp),%eax
  402f4a:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  402f4d:	29 c8                	sub    %ecx,%eax
  402f4f:	0f 9e c2             	setle  %dl
  402f52:	40 b6 01             	mov    $0x1,%sil
  402f55:	40 84 f6             	test   %sil,%sil
  402f58:	89 45 ac             	mov    %eax,-0x54(%rbp)
  402f5b:	88 55 ab             	mov    %dl,-0x55(%rbp)
  402f5e:	0f 85 0a 00 00 00    	jne    402f6e <bpnn_adjust_weights+0xbe>
  402f64:	e9 00 00 00 00       	jmpq   402f69 <bpnn_adjust_weights+0xb9>
  402f69:	e8 f2 25 00 00       	callq  405560 <check_flag>
  402f6e:	8a 45 ab             	mov    -0x55(%rbp),%al
  402f71:	a8 01                	test   $0x1,%al
  402f73:	0f 85 05 00 00 00    	jne    402f7e <bpnn_adjust_weights+0xce>
  402f79:	e9 f0 01 00 00       	jmpq   40316e <bpnn_adjust_weights+0x2be>
  402f7e:	f2 0f 10 04 25 20 56 	movsd  0x405620,%xmm0
  402f85:	40 00 
  402f87:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402f8a:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402f8d:	48 63 d0             	movslq %eax,%rdx
  402f90:	48 63 f1             	movslq %ecx,%rsi
  402f93:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  402f97:	4c 8b 45 f8          	mov    -0x8(%rbp),%r8
  402f9b:	f3 0f 10 0c 97       	movss  (%rdi,%rdx,4),%xmm1
  402fa0:	f3 41 0f 10 14 b0    	movss  (%r8,%rsi,4),%xmm2
  402fa6:	f3 0f 5a c9          	cvtss2sd %xmm1,%xmm1
  402faa:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  402fae:	0f 28 d8             	movaps %xmm0,%xmm3
  402fb1:	f2 0f 59 d9          	mulsd  %xmm1,%xmm3
  402fb5:	0f 28 c8             	movaps %xmm0,%xmm1
  402fb8:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
  402fbc:	8b 45 c8             	mov    -0x38(%rbp),%eax
  402fbf:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  402fc2:	48 63 d0             	movslq %eax,%rdx
  402fc5:	48 63 f1             	movslq %ecx,%rsi
  402fc8:	48 8b 7d e8          	mov    -0x18(%rbp),%rdi
  402fcc:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  402fd0:	f3 0f 10 14 97       	movss  (%rdi,%rdx,4),%xmm2
  402fd5:	f3 41 0f 10 24 b0    	movss  (%r8,%rsi,4),%xmm4
  402fdb:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  402fdf:	f3 0f 5a e4          	cvtss2sd %xmm4,%xmm4
  402fe3:	f2 0f 59 da          	mulsd  %xmm2,%xmm3
  402fe7:	f2 0f 59 cc          	mulsd  %xmm4,%xmm1
  402feb:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  402fee:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  402ff1:	48 63 d0             	movslq %eax,%rdx
  402ff4:	48 63 f1             	movslq %ecx,%rsi
  402ff7:	8b 45 c8             	mov    -0x38(%rbp),%eax
  402ffa:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  402ffd:	48 63 f8             	movslq %eax,%rdi
  403000:	4c 63 c1             	movslq %ecx,%r8
  403003:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  403007:	4c 8b 55 d0          	mov    -0x30(%rbp),%r10
  40300b:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  40300f:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  403013:	f3 0f 10 14 97       	movss  (%rdi,%rdx,4),%xmm2
  403018:	f3 41 0f 10 24 b0    	movss  (%r8,%rsi,4),%xmm4
  40301e:	f3 0f 5a d2          	cvtss2sd %xmm2,%xmm2
  403022:	f3 0f 5a e4          	cvtss2sd %xmm4,%xmm4
  403026:	0f 28 e8             	movaps %xmm0,%xmm5
  403029:	f2 0f 59 ea          	mulsd  %xmm2,%xmm5
  40302d:	f2 0f 59 c4          	mulsd  %xmm4,%xmm0
  403031:	f2 0f 58 dd          	addsd  %xmm5,%xmm3
  403035:	f2 0f 58 c8          	addsd  %xmm0,%xmm1
  403039:	f2 0f 5a c3          	cvtsd2ss %xmm3,%xmm0
  40303d:	f2 0f 5a c9          	cvtsd2ss %xmm1,%xmm1
  403041:	0f 2e c1             	ucomiss %xmm1,%xmm0
  403044:	f3 0f 11 45 a4       	movss  %xmm0,-0x5c(%rbp)
  403049:	0f 84 05 00 00 00    	je     403054 <bpnn_adjust_weights+0x1a4>
  40304f:	e8 0c 25 00 00       	callq  405560 <check_flag>
  403054:	f3 0f 10 45 a4       	movss  -0x5c(%rbp),%xmm0
  403059:	f3 0f 11 45 cc       	movss  %xmm0,-0x34(%rbp)
  40305e:	f3 0f 10 4d cc       	movss  -0x34(%rbp),%xmm1
  403063:	f3 0f 10 55 cc       	movss  -0x34(%rbp),%xmm2
  403068:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  40306b:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  40306e:	48 63 d0             	movslq %eax,%rdx
  403071:	48 63 f1             	movslq %ecx,%rsi
  403074:	8b 45 c8             	mov    -0x38(%rbp),%eax
  403077:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  40307a:	48 63 f8             	movslq %eax,%rdi
  40307d:	4c 63 c1             	movslq %ecx,%r8
  403080:	4c 8b 4d d8          	mov    -0x28(%rbp),%r9
  403084:	4c 8b 55 d8          	mov    -0x28(%rbp),%r10
  403088:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  40308c:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  403090:	49 89 d1             	mov    %rdx,%r9
  403093:	49 c1 e1 02          	shl    $0x2,%r9
  403097:	49 89 fa             	mov    %rdi,%r10
  40309a:	4d 01 ca             	add    %r9,%r10
  40309d:	f3 0f 10 1c 97       	movss  (%rdi,%rdx,4),%xmm3
  4030a2:	f3 41 0f 10 24 b0    	movss  (%r8,%rsi,4),%xmm4
  4030a8:	f3 0f 58 d9          	addss  %xmm1,%xmm3
  4030ac:	f3 0f 58 e2          	addss  %xmm2,%xmm4
  4030b0:	0f 2e dc             	ucomiss %xmm4,%xmm3
  4030b3:	f3 0f 11 5d a0       	movss  %xmm3,-0x60(%rbp)
  4030b8:	4c 89 55 98          	mov    %r10,-0x68(%rbp)
  4030bc:	0f 84 05 00 00 00    	je     4030c7 <bpnn_adjust_weights+0x217>
  4030c2:	e8 99 24 00 00       	callq  405560 <check_flag>
  4030c7:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  4030cb:	f3 0f 10 45 a0       	movss  -0x60(%rbp),%xmm0
  4030d0:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4030d4:	f3 0f 10 4d cc       	movss  -0x34(%rbp),%xmm1
  4030d9:	0f 2e 4d cc          	ucomiss -0x34(%rbp),%xmm1
  4030dd:	f3 0f 11 4d 94       	movss  %xmm1,-0x6c(%rbp)
  4030e2:	0f 84 05 00 00 00    	je     4030ed <bpnn_adjust_weights+0x23d>
  4030e8:	e8 73 24 00 00       	callq  405560 <check_flag>
  4030ed:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  4030f0:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  4030f3:	48 63 d0             	movslq %eax,%rdx
  4030f6:	48 63 f1             	movslq %ecx,%rsi
  4030f9:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4030fc:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  4030ff:	48 63 f8             	movslq %eax,%rdi
  403102:	4c 63 c1             	movslq %ecx,%r8
  403105:	4c 8b 4d d0          	mov    -0x30(%rbp),%r9
  403109:	4c 8b 55 d0          	mov    -0x30(%rbp),%r10
  40310d:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  403111:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  403115:	48 c1 e2 02          	shl    $0x2,%rdx
  403119:	48 01 d7             	add    %rdx,%rdi
  40311c:	48 c1 e6 02          	shl    $0x2,%rsi
  403120:	49 01 f0             	add    %rsi,%r8
  403123:	4c 39 c7             	cmp    %r8,%rdi
  403126:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  40312a:	0f 84 05 00 00 00    	je     403135 <bpnn_adjust_weights+0x285>
  403130:	e8 2b 24 00 00       	callq  405560 <check_flag>
  403135:	48 8b 45 88          	mov    -0x78(%rbp),%rax
  403139:	f3 0f 10 45 94       	movss  -0x6c(%rbp),%xmm0
  40313e:	f3 0f 11 00          	movss  %xmm0,(%rax)
  403142:	8b 45 c8             	mov    -0x38(%rbp),%eax
  403145:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  403148:	05 01 00 00 00       	add    $0x1,%eax
  40314d:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403153:	39 c8                	cmp    %ecx,%eax
  403155:	89 45 84             	mov    %eax,-0x7c(%rbp)
  403158:	0f 84 05 00 00 00    	je     403163 <bpnn_adjust_weights+0x2b3>
  40315e:	e8 fd 23 00 00       	callq  405560 <check_flag>
  403163:	8b 45 84             	mov    -0x7c(%rbp),%eax
  403166:	89 45 c8             	mov    %eax,-0x38(%rbp)
  403169:	e9 d9 fd ff ff       	jmpq   402f47 <bpnn_adjust_weights+0x97>
  40316e:	e9 00 00 00 00       	jmpq   403173 <bpnn_adjust_weights+0x2c3>
  403173:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  403176:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  403179:	05 01 00 00 00       	add    $0x1,%eax
  40317e:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403184:	39 c8                	cmp    %ecx,%eax
  403186:	89 45 80             	mov    %eax,-0x80(%rbp)
  403189:	0f 84 05 00 00 00    	je     403194 <bpnn_adjust_weights+0x2e4>
  40318f:	e8 cc 23 00 00       	callq  405560 <check_flag>
  403194:	8b 45 80             	mov    -0x80(%rbp),%eax
  403197:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40319a:	e9 6a fd ff ff       	jmpq   402f09 <bpnn_adjust_weights+0x59>
  40319f:	48 81 c4 80 00 00 00 	add    $0x80,%rsp
  4031a6:	5d                   	pop    %rbp
  4031a7:	c3                   	retq   
  4031a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4031af:	00 

00000000004031b0 <bpnn_feedforward>:
  4031b0:	55                   	push   %rbp
  4031b1:	48 89 e5             	mov    %rsp,%rbp
  4031b4:	48 83 ec 60          	sub    $0x60,%rsp
  4031b8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4031bc:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4031c0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4031c4:	8b 0f                	mov    (%rdi),%ecx
  4031c6:	3b 08                	cmp    (%rax),%ecx
  4031c8:	89 4d e8             	mov    %ecx,-0x18(%rbp)
  4031cb:	0f 84 05 00 00 00    	je     4031d6 <bpnn_feedforward+0x26>
  4031d1:	e8 8a 23 00 00       	callq  405560 <check_flag>
  4031d6:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4031d9:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4031dc:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4031e0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4031e4:	8b 71 04             	mov    0x4(%rcx),%esi
  4031e7:	3b 72 04             	cmp    0x4(%rdx),%esi
  4031ea:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  4031ed:	0f 84 05 00 00 00    	je     4031f8 <bpnn_feedforward+0x48>
  4031f3:	e8 68 23 00 00       	callq  405560 <check_flag>
  4031f8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4031fb:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4031fe:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403202:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403206:	8b 71 08             	mov    0x8(%rcx),%esi
  403209:	3b 72 08             	cmp    0x8(%rdx),%esi
  40320c:	89 75 e0             	mov    %esi,-0x20(%rbp)
  40320f:	0f 84 05 00 00 00    	je     40321a <bpnn_feedforward+0x6a>
  403215:	e8 46 23 00 00       	callq  405560 <check_flag>
  40321a:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40321d:	89 45 ec             	mov    %eax,-0x14(%rbp)
  403220:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403224:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403228:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  40322c:	48 3b 4a 10          	cmp    0x10(%rdx),%rcx
  403230:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
  403234:	0f 84 05 00 00 00    	je     40323f <bpnn_feedforward+0x8f>
  40323a:	e8 21 23 00 00       	callq  405560 <check_flag>
  40323f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403243:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403247:	48 8b 40 18          	mov    0x18(%rax),%rax
  40324b:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  40324f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  403253:	0f 84 05 00 00 00    	je     40325e <bpnn_feedforward+0xae>
  403259:	e8 02 23 00 00       	callq  405560 <check_flag>
  40325e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403262:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403266:	48 8b 40 40          	mov    0x40(%rax),%rax
  40326a:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  40326e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  403272:	0f 84 05 00 00 00    	je     40327d <bpnn_feedforward+0xcd>
  403278:	e8 e3 22 00 00       	callq  405560 <check_flag>
  40327d:	8b 45 f4             	mov    -0xc(%rbp),%eax
  403280:	3b 45 f4             	cmp    -0xc(%rbp),%eax
  403283:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  403286:	0f 84 05 00 00 00    	je     403291 <bpnn_feedforward+0xe1>
  40328c:	e8 cf 22 00 00       	callq  405560 <check_flag>
  403291:	8b 45 f0             	mov    -0x10(%rbp),%eax
  403294:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  403297:	89 45 c0             	mov    %eax,-0x40(%rbp)
  40329a:	0f 84 05 00 00 00    	je     4032a5 <bpnn_feedforward+0xf5>
  4032a0:	e8 bb 22 00 00       	callq  405560 <check_flag>
  4032a5:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  4032a9:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
  4032ad:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4032b1:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  4032b4:	44 8b 45 c0          	mov    -0x40(%rbp),%r8d
  4032b8:	e8 83 f2 ff ff       	callq  402540 <bpnn_layerforward>
  4032bd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4032c1:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  4032c5:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  4032c9:	48 3b 56 18          	cmp    0x18(%rsi),%rdx
  4032cd:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
  4032d1:	0f 84 05 00 00 00    	je     4032dc <bpnn_feedforward+0x12c>
  4032d7:	e8 84 22 00 00       	callq  405560 <check_flag>
  4032dc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4032e0:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4032e4:	48 8b 40 20          	mov    0x20(%rax),%rax
  4032e8:	48 3b 41 20          	cmp    0x20(%rcx),%rax
  4032ec:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  4032f0:	0f 84 05 00 00 00    	je     4032fb <bpnn_feedforward+0x14b>
  4032f6:	e8 65 22 00 00       	callq  405560 <check_flag>
  4032fb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4032ff:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403303:	48 8b 40 48          	mov    0x48(%rax),%rax
  403307:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  40330b:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  40330f:	0f 84 05 00 00 00    	je     40331a <bpnn_feedforward+0x16a>
  403315:	e8 46 22 00 00       	callq  405560 <check_flag>
  40331a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40331d:	3b 45 f0             	cmp    -0x10(%rbp),%eax
  403320:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  403323:	0f 84 05 00 00 00    	je     40332e <bpnn_feedforward+0x17e>
  403329:	e8 32 22 00 00       	callq  405560 <check_flag>
  40332e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  403331:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  403334:	89 45 a0             	mov    %eax,-0x60(%rbp)
  403337:	0f 84 05 00 00 00    	je     403342 <bpnn_feedforward+0x192>
  40333d:	e8 1e 22 00 00       	callq  405560 <check_flag>
  403342:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  403346:	48 8b 75 b0          	mov    -0x50(%rbp),%rsi
  40334a:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  40334e:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  403351:	44 8b 45 a0          	mov    -0x60(%rbp),%r8d
  403355:	e8 e6 f1 ff ff       	callq  402540 <bpnn_layerforward>
  40335a:	48 83 c4 60          	add    $0x60,%rsp
  40335e:	5d                   	pop    %rbp
  40335f:	c3                   	retq   

0000000000403360 <bpnn_train>:
  403360:	55                   	push   %rbp
  403361:	48 89 e5             	mov    %rsp,%rbp
  403364:	48 81 ec 50 01 00 00 	sub    $0x150,%rsp
  40336b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40336f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  403373:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
  403377:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40337b:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40337f:	8b 02                	mov    (%rdx),%eax
  403381:	3b 06                	cmp    (%rsi),%eax
  403383:	89 45 d0             	mov    %eax,-0x30(%rbp)
  403386:	0f 84 05 00 00 00    	je     403391 <bpnn_train+0x31>
  40338c:	e8 cf 21 00 00       	callq  405560 <check_flag>
  403391:	8b 45 d0             	mov    -0x30(%rbp),%eax
  403394:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  403397:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40339b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40339f:	8b 71 04             	mov    0x4(%rcx),%esi
  4033a2:	3b 72 04             	cmp    0x4(%rdx),%esi
  4033a5:	89 75 cc             	mov    %esi,-0x34(%rbp)
  4033a8:	0f 84 05 00 00 00    	je     4033b3 <bpnn_train+0x53>
  4033ae:	e8 ad 21 00 00       	callq  405560 <check_flag>
  4033b3:	8b 45 cc             	mov    -0x34(%rbp),%eax
  4033b6:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4033b9:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4033bd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4033c1:	8b 71 08             	mov    0x8(%rcx),%esi
  4033c4:	3b 72 08             	cmp    0x8(%rdx),%esi
  4033c7:	89 75 c8             	mov    %esi,-0x38(%rbp)
  4033ca:	0f 84 05 00 00 00    	je     4033d5 <bpnn_train+0x75>
  4033d0:	e8 8b 21 00 00       	callq  405560 <check_flag>
  4033d5:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4033d8:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4033db:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4033df:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4033e3:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  4033e7:	48 3b 4a 10          	cmp    0x10(%rdx),%rcx
  4033eb:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
  4033ef:	0f 84 05 00 00 00    	je     4033fa <bpnn_train+0x9a>
  4033f5:	e8 66 21 00 00       	callq  405560 <check_flag>
  4033fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4033fe:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403402:	48 8b 40 18          	mov    0x18(%rax),%rax
  403406:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  40340a:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40340e:	0f 84 05 00 00 00    	je     403419 <bpnn_train+0xb9>
  403414:	e8 47 21 00 00       	callq  405560 <check_flag>
  403419:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40341d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403421:	48 8b 40 40          	mov    0x40(%rax),%rax
  403425:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  403429:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40342d:	0f 84 05 00 00 00    	je     403438 <bpnn_train+0xd8>
  403433:	e8 28 21 00 00       	callq  405560 <check_flag>
  403438:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40343b:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  40343e:	89 45 ac             	mov    %eax,-0x54(%rbp)
  403441:	0f 84 05 00 00 00    	je     40344c <bpnn_train+0xec>
  403447:	e8 14 21 00 00       	callq  405560 <check_flag>
  40344c:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40344f:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  403452:	89 45 a8             	mov    %eax,-0x58(%rbp)
  403455:	0f 84 05 00 00 00    	je     403460 <bpnn_train+0x100>
  40345b:	e8 00 21 00 00       	callq  405560 <check_flag>
  403460:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  403464:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
  403468:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
  40346c:	8b 4d ac             	mov    -0x54(%rbp),%ecx
  40346f:	44 8b 45 a8          	mov    -0x58(%rbp),%r8d
  403473:	e8 c8 f0 ff ff       	callq  402540 <bpnn_layerforward>
  403478:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40347c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  403480:	48 8b 52 18          	mov    0x18(%rdx),%rdx
  403484:	48 3b 56 18          	cmp    0x18(%rsi),%rdx
  403488:	48 89 55 a0          	mov    %rdx,-0x60(%rbp)
  40348c:	0f 84 05 00 00 00    	je     403497 <bpnn_train+0x137>
  403492:	e8 c9 20 00 00       	callq  405560 <check_flag>
  403497:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40349b:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40349f:	48 8b 40 20          	mov    0x20(%rax),%rax
  4034a3:	48 3b 41 20          	cmp    0x20(%rcx),%rax
  4034a7:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  4034ab:	0f 84 05 00 00 00    	je     4034b6 <bpnn_train+0x156>
  4034b1:	e8 aa 20 00 00       	callq  405560 <check_flag>
  4034b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4034ba:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4034be:	48 8b 40 48          	mov    0x48(%rax),%rax
  4034c2:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  4034c6:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4034ca:	0f 84 05 00 00 00    	je     4034d5 <bpnn_train+0x175>
  4034d0:	e8 8b 20 00 00       	callq  405560 <check_flag>
  4034d5:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4034d8:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  4034db:	89 45 8c             	mov    %eax,-0x74(%rbp)
  4034de:	0f 84 05 00 00 00    	je     4034e9 <bpnn_train+0x189>
  4034e4:	e8 77 20 00 00       	callq  405560 <check_flag>
  4034e9:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4034ec:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  4034ef:	89 45 88             	mov    %eax,-0x78(%rbp)
  4034f2:	0f 84 05 00 00 00    	je     4034fd <bpnn_train+0x19d>
  4034f8:	e8 63 20 00 00       	callq  405560 <check_flag>
  4034fd:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
  403501:	48 8b 75 98          	mov    -0x68(%rbp),%rsi
  403505:	48 8b 55 90          	mov    -0x70(%rbp),%rdx
  403509:	8b 4d 8c             	mov    -0x74(%rbp),%ecx
  40350c:	44 8b 45 88          	mov    -0x78(%rbp),%r8d
  403510:	e8 2b f0 ff ff       	callq  402540 <bpnn_layerforward>
  403515:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403519:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  40351d:	48 8b 52 30          	mov    0x30(%rdx),%rdx
  403521:	48 3b 56 30          	cmp    0x30(%rsi),%rdx
  403525:	48 89 55 80          	mov    %rdx,-0x80(%rbp)
  403529:	0f 84 05 00 00 00    	je     403534 <bpnn_train+0x1d4>
  40352f:	e8 2c 20 00 00       	callq  405560 <check_flag>
  403534:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403538:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40353c:	48 8b 40 38          	mov    0x38(%rax),%rax
  403540:	48 3b 41 38          	cmp    0x38(%rcx),%rax
  403544:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  40354b:	0f 84 05 00 00 00    	je     403556 <bpnn_train+0x1f6>
  403551:	e8 0a 20 00 00       	callq  405560 <check_flag>
  403556:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40355a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40355e:	48 8b 40 20          	mov    0x20(%rax),%rax
  403562:	48 3b 41 20          	cmp    0x20(%rcx),%rax
  403566:	48 89 85 70 ff ff ff 	mov    %rax,-0x90(%rbp)
  40356d:	0f 84 05 00 00 00    	je     403578 <bpnn_train+0x218>
  403573:	e8 e8 1f 00 00       	callq  405560 <check_flag>
  403578:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40357b:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  40357e:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  403584:	0f 84 05 00 00 00    	je     40358f <bpnn_train+0x22f>
  40358a:	e8 d1 1f 00 00       	callq  405560 <check_flag>
  40358f:	4c 8d 45 d8          	lea    -0x28(%rbp),%r8
  403593:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  403597:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  40359e:	48 8b 95 70 ff ff ff 	mov    -0x90(%rbp),%rdx
  4035a5:	8b 8d 6c ff ff ff    	mov    -0x94(%rbp),%ecx
  4035ab:	e8 c0 f1 ff ff       	callq  402770 <bpnn_output_error>
  4035b0:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4035b4:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  4035b8:	48 8b 52 28          	mov    0x28(%rdx),%rdx
  4035bc:	48 3b 56 28          	cmp    0x28(%rsi),%rdx
  4035c0:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
  4035c7:	0f 84 05 00 00 00    	je     4035d2 <bpnn_train+0x272>
  4035cd:	e8 8e 1f 00 00       	callq  405560 <check_flag>
  4035d2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4035d5:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  4035d8:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  4035de:	0f 84 05 00 00 00    	je     4035e9 <bpnn_train+0x289>
  4035e4:	e8 77 1f 00 00       	callq  405560 <check_flag>
  4035e9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4035ed:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4035f1:	48 8b 40 30          	mov    0x30(%rax),%rax
  4035f5:	48 3b 41 30          	cmp    0x30(%rcx),%rax
  4035f9:	48 89 85 50 ff ff ff 	mov    %rax,-0xb0(%rbp)
  403600:	0f 84 05 00 00 00    	je     40360b <bpnn_train+0x2ab>
  403606:	e8 55 1f 00 00       	callq  405560 <check_flag>
  40360b:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40360e:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  403611:	89 85 4c ff ff ff    	mov    %eax,-0xb4(%rbp)
  403617:	0f 84 05 00 00 00    	je     403622 <bpnn_train+0x2c2>
  40361d:	e8 3e 1f 00 00       	callq  405560 <check_flag>
  403622:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403626:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40362a:	48 8b 40 48          	mov    0x48(%rax),%rax
  40362e:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  403632:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  403639:	0f 84 05 00 00 00    	je     403644 <bpnn_train+0x2e4>
  40363f:	e8 1c 1f 00 00       	callq  405560 <check_flag>
  403644:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403648:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40364c:	48 8b 40 18          	mov    0x18(%rax),%rax
  403650:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  403654:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
  40365b:	0f 84 05 00 00 00    	je     403666 <bpnn_train+0x306>
  403661:	e8 fa 1e 00 00       	callq  405560 <check_flag>
  403666:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
  40366a:	48 8b bd 60 ff ff ff 	mov    -0xa0(%rbp),%rdi
  403671:	8b b5 5c ff ff ff    	mov    -0xa4(%rbp),%esi
  403677:	48 8b 95 50 ff ff ff 	mov    -0xb0(%rbp),%rdx
  40367e:	8b 8d 4c ff ff ff    	mov    -0xb4(%rbp),%ecx
  403684:	4c 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%r8
  40368b:	4c 8b 8d 38 ff ff ff 	mov    -0xc8(%rbp),%r9
  403692:	48 89 04 24          	mov    %rax,(%rsp)
  403696:	e8 05 f4 ff ff       	callq  402aa0 <bpnn_hidden_error>
  40369b:	f3 0f 10 45 d8       	movss  -0x28(%rbp),%xmm0
  4036a0:	0f 2e 45 d8          	ucomiss -0x28(%rbp),%xmm0
  4036a4:	f3 0f 11 85 34 ff ff 	movss  %xmm0,-0xcc(%rbp)
  4036ab:	ff 
  4036ac:	0f 84 05 00 00 00    	je     4036b7 <bpnn_train+0x357>
  4036b2:	e8 a9 1e 00 00       	callq  405560 <check_flag>
  4036b7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4036bb:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  4036bf:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  4036c6:	0f 84 05 00 00 00    	je     4036d1 <bpnn_train+0x371>
  4036cc:	e8 8f 1e 00 00       	callq  405560 <check_flag>
  4036d1:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
  4036d8:	f3 0f 10 85 34 ff ff 	movss  -0xcc(%rbp),%xmm0
  4036df:	ff 
  4036e0:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4036e4:	f3 0f 10 4d d4       	movss  -0x2c(%rbp),%xmm1
  4036e9:	0f 2e 4d d4          	ucomiss -0x2c(%rbp),%xmm1
  4036ed:	f3 0f 11 8d 24 ff ff 	movss  %xmm1,-0xdc(%rbp)
  4036f4:	ff 
  4036f5:	0f 84 05 00 00 00    	je     403700 <bpnn_train+0x3a0>
  4036fb:	e8 60 1e 00 00       	callq  405560 <check_flag>
  403700:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  403704:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  403708:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  40370f:	0f 84 05 00 00 00    	je     40371a <bpnn_train+0x3ba>
  403715:	e8 46 1e 00 00       	callq  405560 <check_flag>
  40371a:	48 8b 85 18 ff ff ff 	mov    -0xe8(%rbp),%rax
  403721:	f3 0f 10 85 24 ff ff 	movss  -0xdc(%rbp),%xmm0
  403728:	ff 
  403729:	f3 0f 11 00          	movss  %xmm0,(%rax)
  40372d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403731:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403735:	48 8b 49 30          	mov    0x30(%rcx),%rcx
  403739:	48 3b 4a 30          	cmp    0x30(%rdx),%rcx
  40373d:	48 89 8d 10 ff ff ff 	mov    %rcx,-0xf0(%rbp)
  403744:	0f 84 05 00 00 00    	je     40374f <bpnn_train+0x3ef>
  40374a:	e8 11 1e 00 00       	callq  405560 <check_flag>
  40374f:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403752:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  403755:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
  40375b:	0f 84 05 00 00 00    	je     403766 <bpnn_train+0x406>
  403761:	e8 fa 1d 00 00       	callq  405560 <check_flag>
  403766:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40376a:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40376e:	48 8b 40 18          	mov    0x18(%rax),%rax
  403772:	48 3b 41 18          	cmp    0x18(%rcx),%rax
  403776:	48 89 85 00 ff ff ff 	mov    %rax,-0x100(%rbp)
  40377d:	0f 84 05 00 00 00    	je     403788 <bpnn_train+0x428>
  403783:	e8 d8 1d 00 00       	callq  405560 <check_flag>
  403788:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40378b:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  40378e:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  403794:	0f 84 05 00 00 00    	je     40379f <bpnn_train+0x43f>
  40379a:	e8 c1 1d 00 00       	callq  405560 <check_flag>
  40379f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4037a3:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4037a7:	48 8b 40 48          	mov    0x48(%rax),%rax
  4037ab:	48 3b 41 48          	cmp    0x48(%rcx),%rax
  4037af:	48 89 85 f0 fe ff ff 	mov    %rax,-0x110(%rbp)
  4037b6:	0f 84 05 00 00 00    	je     4037c1 <bpnn_train+0x461>
  4037bc:	e8 9f 1d 00 00       	callq  405560 <check_flag>
  4037c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4037c5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4037c9:	48 8b 40 58          	mov    0x58(%rax),%rax
  4037cd:	48 3b 41 58          	cmp    0x58(%rcx),%rax
  4037d1:	48 89 85 e8 fe ff ff 	mov    %rax,-0x118(%rbp)
  4037d8:	0f 84 05 00 00 00    	je     4037e3 <bpnn_train+0x483>
  4037de:	e8 7d 1d 00 00       	callq  405560 <check_flag>
  4037e3:	48 8b bd 10 ff ff ff 	mov    -0xf0(%rbp),%rdi
  4037ea:	8b b5 0c ff ff ff    	mov    -0xf4(%rbp),%esi
  4037f0:	48 8b 95 00 ff ff ff 	mov    -0x100(%rbp),%rdx
  4037f7:	8b 8d fc fe ff ff    	mov    -0x104(%rbp),%ecx
  4037fd:	4c 8b 85 f0 fe ff ff 	mov    -0x110(%rbp),%r8
  403804:	4c 8b 8d e8 fe ff ff 	mov    -0x118(%rbp),%r9
  40380b:	e8 a0 f6 ff ff       	callq  402eb0 <bpnn_adjust_weights>
  403810:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403814:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  403818:	48 8b 52 28          	mov    0x28(%rdx),%rdx
  40381c:	48 3b 57 28          	cmp    0x28(%rdi),%rdx
  403820:	48 89 95 e0 fe ff ff 	mov    %rdx,-0x120(%rbp)
  403827:	0f 84 05 00 00 00    	je     403832 <bpnn_train+0x4d2>
  40382d:	e8 2e 1d 00 00       	callq  405560 <check_flag>
  403832:	8b 45 e0             	mov    -0x20(%rbp),%eax
  403835:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  403838:	89 85 dc fe ff ff    	mov    %eax,-0x124(%rbp)
  40383e:	0f 84 05 00 00 00    	je     403849 <bpnn_train+0x4e9>
  403844:	e8 17 1d 00 00       	callq  405560 <check_flag>
  403849:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40384d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403851:	48 8b 40 10          	mov    0x10(%rax),%rax
  403855:	48 3b 41 10          	cmp    0x10(%rcx),%rax
  403859:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
  403860:	0f 84 05 00 00 00    	je     40386b <bpnn_train+0x50b>
  403866:	e8 f5 1c 00 00       	callq  405560 <check_flag>
  40386b:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40386e:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  403871:	89 85 cc fe ff ff    	mov    %eax,-0x134(%rbp)
  403877:	0f 84 05 00 00 00    	je     403882 <bpnn_train+0x522>
  40387d:	e8 de 1c 00 00       	callq  405560 <check_flag>
  403882:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403886:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40388a:	48 8b 40 40          	mov    0x40(%rax),%rax
  40388e:	48 3b 41 40          	cmp    0x40(%rcx),%rax
  403892:	48 89 85 c0 fe ff ff 	mov    %rax,-0x140(%rbp)
  403899:	0f 84 05 00 00 00    	je     4038a4 <bpnn_train+0x544>
  40389f:	e8 bc 1c 00 00       	callq  405560 <check_flag>
  4038a4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4038a8:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4038ac:	48 8b 40 50          	mov    0x50(%rax),%rax
  4038b0:	48 3b 41 50          	cmp    0x50(%rcx),%rax
  4038b4:	48 89 85 b8 fe ff ff 	mov    %rax,-0x148(%rbp)
  4038bb:	0f 84 05 00 00 00    	je     4038c6 <bpnn_train+0x566>
  4038c1:	e8 9a 1c 00 00       	callq  405560 <check_flag>
  4038c6:	48 8b bd e0 fe ff ff 	mov    -0x120(%rbp),%rdi
  4038cd:	8b b5 dc fe ff ff    	mov    -0x124(%rbp),%esi
  4038d3:	48 8b 95 d0 fe ff ff 	mov    -0x130(%rbp),%rdx
  4038da:	8b 8d cc fe ff ff    	mov    -0x134(%rbp),%ecx
  4038e0:	4c 8b 85 c0 fe ff ff 	mov    -0x140(%rbp),%r8
  4038e7:	4c 8b 8d b8 fe ff ff 	mov    -0x148(%rbp),%r9
  4038ee:	e8 bd f5 ff ff       	callq  402eb0 <bpnn_adjust_weights>
  4038f3:	48 81 c4 50 01 00 00 	add    $0x150,%rsp
  4038fa:	5d                   	pop    %rbp
  4038fb:	c3                   	retq   
  4038fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403900 <bpnn_save>:
  403900:	55                   	push   %rbp
  403901:	48 89 e5             	mov    %rsp,%rbp
  403904:	48 81 ec 50 02 00 00 	sub    $0x250,%rsp
  40390b:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40390f:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  403913:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
  403917:	48 3b 75 f0          	cmp    -0x10(%rbp),%rsi
  40391b:	48 89 75 80          	mov    %rsi,-0x80(%rbp)
  40391f:	0f 84 05 00 00 00    	je     40392a <bpnn_save+0x2a>
  403925:	e8 36 1c 00 00       	callq  405560 <check_flag>
  40392a:	48 8d 34 25 01 57 40 	lea    0x405701,%rsi
  403931:	00 
  403932:	48 8b 7d 80          	mov    -0x80(%rbp),%rdi
  403936:	e8 85 cf ff ff       	callq  4008c0 <fopen@plt>
  40393b:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  40393f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  403943:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  403947:	8b 08                	mov    (%rax),%ecx
  403949:	3b 0e                	cmp    (%rsi),%ecx
  40394b:	89 8d 7c ff ff ff    	mov    %ecx,-0x84(%rbp)
  403951:	0f 84 05 00 00 00    	je     40395c <bpnn_save+0x5c>
  403957:	e8 04 1c 00 00       	callq  405560 <check_flag>
  40395c:	8b 85 7c ff ff ff    	mov    -0x84(%rbp),%eax
  403962:	89 45 ec             	mov    %eax,-0x14(%rbp)
  403965:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403969:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40396d:	8b 71 04             	mov    0x4(%rcx),%esi
  403970:	3b 72 04             	cmp    0x4(%rdx),%esi
  403973:	89 b5 78 ff ff ff    	mov    %esi,-0x88(%rbp)
  403979:	0f 84 05 00 00 00    	je     403984 <bpnn_save+0x84>
  40397f:	e8 dc 1b 00 00       	callq  405560 <check_flag>
  403984:	8b 85 78 ff ff ff    	mov    -0x88(%rbp),%eax
  40398a:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40398d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403991:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403995:	8b 71 08             	mov    0x8(%rcx),%esi
  403998:	3b 72 08             	cmp    0x8(%rdx),%esi
  40399b:	89 b5 74 ff ff ff    	mov    %esi,-0x8c(%rbp)
  4039a1:	0f 84 05 00 00 00    	je     4039ac <bpnn_save+0xac>
  4039a7:	e8 b4 1b 00 00       	callq  405560 <check_flag>
  4039ac:	8b 85 74 ff ff ff    	mov    -0x8c(%rbp),%eax
  4039b2:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4039b5:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  4039b8:	3b 4d ec             	cmp    -0x14(%rbp),%ecx
  4039bb:	89 8d 70 ff ff ff    	mov    %ecx,-0x90(%rbp)
  4039c1:	0f 84 05 00 00 00    	je     4039cc <bpnn_save+0xcc>
  4039c7:	e8 94 1b 00 00       	callq  405560 <check_flag>
  4039cc:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4039cf:	3b 45 e8             	cmp    -0x18(%rbp),%eax
  4039d2:	89 85 6c ff ff ff    	mov    %eax,-0x94(%rbp)
  4039d8:	0f 84 05 00 00 00    	je     4039e3 <bpnn_save+0xe3>
  4039de:	e8 7d 1b 00 00       	callq  405560 <check_flag>
  4039e3:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4039e6:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  4039e9:	89 85 68 ff ff ff    	mov    %eax,-0x98(%rbp)
  4039ef:	0f 84 05 00 00 00    	je     4039fa <bpnn_save+0xfa>
  4039f5:	e8 66 1b 00 00       	callq  405560 <check_flag>
  4039fa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4039fe:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  403a02:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
  403a09:	0f 84 05 00 00 00    	je     403a14 <bpnn_save+0x114>
  403a0f:	e8 4c 1b 00 00       	callq  405560 <check_flag>
  403a14:	48 8d 3c 25 04 57 40 	lea    0x405704,%rdi
  403a1b:	00 
  403a1c:	8b b5 70 ff ff ff    	mov    -0x90(%rbp),%esi
  403a22:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
  403a28:	8b 8d 68 ff ff ff    	mov    -0x98(%rbp),%ecx
  403a2e:	4c 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%r8
  403a35:	b0 00                	mov    $0x0,%al
  403a37:	e8 24 ce ff ff       	callq  400860 <printf@plt>
  403a3c:	48 8d 7d ec          	lea    -0x14(%rbp),%rdi
  403a40:	49 89 f8             	mov    %rdi,%r8
  403a43:	49 39 f8             	cmp    %rdi,%r8
  403a46:	89 85 5c ff ff ff    	mov    %eax,-0xa4(%rbp)
  403a4c:	4c 89 85 50 ff ff ff 	mov    %r8,-0xb0(%rbp)
  403a53:	0f 84 05 00 00 00    	je     403a5e <bpnn_save+0x15e>
  403a59:	e8 02 1b 00 00       	callq  405560 <check_flag>
  403a5e:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403a62:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  403a66:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
  403a6d:	0f 84 05 00 00 00    	je     403a78 <bpnn_save+0x178>
  403a73:	e8 e8 1a 00 00       	callq  405560 <check_flag>
  403a78:	48 be 04 00 00 00 00 	movabs $0x4,%rsi
  403a7f:	00 00 00 
  403a82:	48 ba 01 00 00 00 00 	movabs $0x1,%rdx
  403a89:	00 00 00 
  403a8c:	48 8b bd 50 ff ff ff 	mov    -0xb0(%rbp),%rdi
  403a93:	48 8b 8d 48 ff ff ff 	mov    -0xb8(%rbp),%rcx
  403a9a:	e8 81 ce ff ff       	callq  400920 <fwrite@plt>
  403a9f:	48 8d 4d e8          	lea    -0x18(%rbp),%rcx
  403aa3:	48 89 ca             	mov    %rcx,%rdx
  403aa6:	48 39 ca             	cmp    %rcx,%rdx
  403aa9:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  403ab0:	48 89 95 38 ff ff ff 	mov    %rdx,-0xc8(%rbp)
  403ab7:	0f 84 05 00 00 00    	je     403ac2 <bpnn_save+0x1c2>
  403abd:	e8 9e 1a 00 00       	callq  405560 <check_flag>
  403ac2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403ac6:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  403aca:	48 89 85 30 ff ff ff 	mov    %rax,-0xd0(%rbp)
  403ad1:	0f 84 05 00 00 00    	je     403adc <bpnn_save+0x1dc>
  403ad7:	e8 84 1a 00 00       	callq  405560 <check_flag>
  403adc:	48 be 04 00 00 00 00 	movabs $0x4,%rsi
  403ae3:	00 00 00 
  403ae6:	48 ba 01 00 00 00 00 	movabs $0x1,%rdx
  403aed:	00 00 00 
  403af0:	48 8b bd 38 ff ff ff 	mov    -0xc8(%rbp),%rdi
  403af7:	48 8b 8d 30 ff ff ff 	mov    -0xd0(%rbp),%rcx
  403afe:	e8 1d ce ff ff       	callq  400920 <fwrite@plt>
  403b03:	48 8d 4d e4          	lea    -0x1c(%rbp),%rcx
  403b07:	48 89 ca             	mov    %rcx,%rdx
  403b0a:	48 39 ca             	cmp    %rcx,%rdx
  403b0d:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  403b14:	48 89 95 20 ff ff ff 	mov    %rdx,-0xe0(%rbp)
  403b1b:	0f 84 05 00 00 00    	je     403b26 <bpnn_save+0x226>
  403b21:	e8 3a 1a 00 00       	callq  405560 <check_flag>
  403b26:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403b2a:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  403b2e:	48 89 85 18 ff ff ff 	mov    %rax,-0xe8(%rbp)
  403b35:	0f 84 05 00 00 00    	je     403b40 <bpnn_save+0x240>
  403b3b:	e8 20 1a 00 00       	callq  405560 <check_flag>
  403b40:	48 be 04 00 00 00 00 	movabs $0x4,%rsi
  403b47:	00 00 00 
  403b4a:	48 ba 01 00 00 00 00 	movabs $0x1,%rdx
  403b51:	00 00 00 
  403b54:	48 8b bd 20 ff ff ff 	mov    -0xe0(%rbp),%rdi
  403b5b:	48 8b 8d 18 ff ff ff 	mov    -0xe8(%rbp),%rcx
  403b62:	e8 b9 cd ff ff       	callq  400920 <fwrite@plt>
  403b67:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
  403b6e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  403b72:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403b76:	48 8b 49 40          	mov    0x40(%rcx),%rcx
  403b7a:	48 3b 4a 40          	cmp    0x40(%rdx),%rcx
  403b7e:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  403b85:	48 89 8d 08 ff ff ff 	mov    %rcx,-0xf8(%rbp)
  403b8c:	0f 84 05 00 00 00    	je     403b97 <bpnn_save+0x297>
  403b92:	e8 c9 19 00 00       	callq  405560 <check_flag>
  403b97:	48 8b 85 08 ff ff ff 	mov    -0xf8(%rbp),%rax
  403b9e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  403ba2:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  403ba5:	8b 55 ec             	mov    -0x14(%rbp),%edx
  403ba8:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403bae:	81 c2 01 00 00 00    	add    $0x1,%edx
  403bb4:	8b 75 e8             	mov    -0x18(%rbp),%esi
  403bb7:	8b 7d e8             	mov    -0x18(%rbp),%edi
  403bba:	81 c6 01 00 00 00    	add    $0x1,%esi
  403bc0:	81 c7 01 00 00 00    	add    $0x1,%edi
  403bc6:	0f af ce             	imul   %esi,%ecx
  403bc9:	0f af d7             	imul   %edi,%edx
  403bcc:	4c 63 c1             	movslq %ecx,%r8
  403bcf:	4c 63 ca             	movslq %edx,%r9
  403bd2:	49 c1 e0 02          	shl    $0x2,%r8
  403bd6:	49 c1 e1 02          	shl    $0x2,%r9
  403bda:	44 89 c1             	mov    %r8d,%ecx
  403bdd:	44 89 ca             	mov    %r9d,%edx
  403be0:	89 c9                	mov    %ecx,%ecx
  403be2:	41 89 c8             	mov    %ecx,%r8d
  403be5:	89 d1                	mov    %edx,%ecx
  403be7:	41 89 c9             	mov    %ecx,%r9d
  403bea:	4d 39 c8             	cmp    %r9,%r8
  403bed:	4c 89 85 00 ff ff ff 	mov    %r8,-0x100(%rbp)
  403bf4:	0f 84 05 00 00 00    	je     403bff <bpnn_save+0x2ff>
  403bfa:	e8 61 19 00 00       	callq  405560 <check_flag>
  403bff:	48 8b bd 00 ff ff ff 	mov    -0x100(%rbp),%rdi
  403c06:	e8 a5 cc ff ff       	callq  4008b0 <malloc@plt>
  403c0b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  403c0f:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  403c16:	8b 45 e0             	mov    -0x20(%rbp),%eax
  403c19:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  403c1c:	29 c8                	sub    %ecx,%eax
  403c1e:	0f 9e c2             	setle  %dl
  403c21:	40 b6 01             	mov    $0x1,%sil
  403c24:	40 84 f6             	test   %sil,%sil
  403c27:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  403c2d:	88 95 fb fe ff ff    	mov    %dl,-0x105(%rbp)
  403c33:	0f 85 0a 00 00 00    	jne    403c43 <bpnn_save+0x343>
  403c39:	e9 00 00 00 00       	jmpq   403c3e <bpnn_save+0x33e>
  403c3e:	e8 1d 19 00 00       	callq  405560 <check_flag>
  403c43:	8a 85 fb fe ff ff    	mov    -0x105(%rbp),%al
  403c49:	a8 01                	test   $0x1,%al
  403c4b:	0f 85 05 00 00 00    	jne    403c56 <bpnn_save+0x356>
  403c51:	e9 d9 02 00 00       	jmpq   403f2f <bpnn_save+0x62f>
  403c56:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  403c5d:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403c60:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  403c63:	29 c8                	sub    %ecx,%eax
  403c65:	0f 9e c2             	setle  %dl
  403c68:	40 b6 01             	mov    $0x1,%sil
  403c6b:	40 84 f6             	test   %sil,%sil
  403c6e:	89 85 f4 fe ff ff    	mov    %eax,-0x10c(%rbp)
  403c74:	88 95 f3 fe ff ff    	mov    %dl,-0x10d(%rbp)
  403c7a:	0f 85 0a 00 00 00    	jne    403c8a <bpnn_save+0x38a>
  403c80:	e9 00 00 00 00       	jmpq   403c85 <bpnn_save+0x385>
  403c85:	e8 d6 18 00 00       	callq  405560 <check_flag>
  403c8a:	8a 85 f3 fe ff ff    	mov    -0x10d(%rbp),%al
  403c90:	a8 01                	test   $0x1,%al
  403c92:	0f 85 05 00 00 00    	jne    403c9d <bpnn_save+0x39d>
  403c98:	e9 5b 02 00 00       	jmpq   403ef8 <bpnn_save+0x5f8>
  403c9d:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403ca0:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  403ca3:	48 63 d0             	movslq %eax,%rdx
  403ca6:	48 63 f1             	movslq %ecx,%rsi
  403ca9:	8b 45 e0             	mov    -0x20(%rbp),%eax
  403cac:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  403caf:	48 63 f8             	movslq %eax,%rdi
  403cb2:	4c 63 c1             	movslq %ecx,%r8
  403cb5:	4c 8b 4d c8          	mov    -0x38(%rbp),%r9
  403cb9:	4c 8b 55 c8          	mov    -0x38(%rbp),%r10
  403cbd:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  403cc1:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  403cc5:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  403cca:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  403ccf:	f3 0f 11 85 ec fe ff 	movss  %xmm0,-0x114(%rbp)
  403cd6:	ff 
  403cd7:	0f 84 05 00 00 00    	je     403ce2 <bpnn_save+0x3e2>
  403cdd:	e8 7e 18 00 00       	callq  405560 <check_flag>
  403ce2:	f3 0f 10 85 ec fe ff 	movss  -0x114(%rbp),%xmm0
  403ce9:	ff 
  403cea:	f3 0f 11 45 d4       	movss  %xmm0,-0x2c(%rbp)
  403cef:	8b 45 d8             	mov    -0x28(%rbp),%eax
  403cf2:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  403cf5:	48 63 d0             	movslq %eax,%rdx
  403cf8:	48 63 f1             	movslq %ecx,%rsi
  403cfb:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  403cff:	4c 8b 45 c0          	mov    -0x40(%rbp),%r8
  403d03:	48 01 d7             	add    %rdx,%rdi
  403d06:	49 01 f0             	add    %rsi,%r8
  403d09:	4c 39 c7             	cmp    %r8,%rdi
  403d0c:	48 89 bd e0 fe ff ff 	mov    %rdi,-0x120(%rbp)
  403d13:	0f 84 05 00 00 00    	je     403d1e <bpnn_save+0x41e>
  403d19:	e8 42 18 00 00       	callq  405560 <check_flag>
  403d1e:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
  403d22:	48 8b 8d e0 fe ff ff 	mov    -0x120(%rbp),%rcx
  403d29:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
  403d2d:	48 89 c2             	mov    %rax,%rdx
  403d30:	48 39 c2             	cmp    %rax,%rdx
  403d33:	48 89 95 d8 fe ff ff 	mov    %rdx,-0x128(%rbp)
  403d3a:	0f 84 05 00 00 00    	je     403d45 <bpnn_save+0x445>
  403d40:	e8 1b 18 00 00       	callq  405560 <check_flag>
  403d45:	48 8b 85 d8 fe ff ff 	mov    -0x128(%rbp),%rax
  403d4c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  403d50:	c7 45 a0 04 00 00 00 	movl   $0x4,-0x60(%rbp)
  403d57:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
  403d5e:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  403d61:	8b 4d a0             	mov    -0x60(%rbp),%ecx
  403d64:	29 c8                	sub    %ecx,%eax
  403d66:	0f 9c c2             	setl   %dl
  403d69:	40 b6 01             	mov    $0x1,%sil
  403d6c:	40 84 f6             	test   %sil,%sil
  403d6f:	89 85 d4 fe ff ff    	mov    %eax,-0x12c(%rbp)
  403d75:	88 95 d3 fe ff ff    	mov    %dl,-0x12d(%rbp)
  403d7b:	0f 85 0a 00 00 00    	jne    403d8b <bpnn_save+0x48b>
  403d81:	e9 00 00 00 00       	jmpq   403d86 <bpnn_save+0x486>
  403d86:	e8 d5 17 00 00       	callq  405560 <check_flag>
  403d8b:	8a 85 d3 fe ff ff    	mov    -0x12d(%rbp),%al
  403d91:	a8 01                	test   $0x1,%al
  403d93:	0f 85 05 00 00 00    	jne    403d9e <bpnn_save+0x49e>
  403d99:	e9 ee 00 00 00       	jmpq   403e8c <bpnn_save+0x58c>
  403d9e:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  403da2:	48 8b 4d a8          	mov    -0x58(%rbp),%rcx
  403da6:	48 89 c2             	mov    %rax,%rdx
  403da9:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  403db0:	48 89 ce             	mov    %rcx,%rsi
  403db3:	48 81 c6 01 00 00 00 	add    $0x1,%rsi
  403dba:	48 39 f2             	cmp    %rsi,%rdx
  403dbd:	48 89 85 c8 fe ff ff 	mov    %rax,-0x138(%rbp)
  403dc4:	48 89 8d c0 fe ff ff 	mov    %rcx,-0x140(%rbp)
  403dcb:	48 89 95 b8 fe ff ff 	mov    %rdx,-0x148(%rbp)
  403dd2:	0f 84 05 00 00 00    	je     403ddd <bpnn_save+0x4dd>
  403dd8:	e8 83 17 00 00       	callq  405560 <check_flag>
  403ddd:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  403de4:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
  403de8:	48 8b 8d c8 fe ff ff 	mov    -0x138(%rbp),%rcx
  403def:	8a 11                	mov    (%rcx),%dl
  403df1:	48 8b b5 c0 fe ff ff 	mov    -0x140(%rbp),%rsi
  403df8:	3a 16                	cmp    (%rsi),%dl
  403dfa:	88 95 b7 fe ff ff    	mov    %dl,-0x149(%rbp)
  403e00:	0f 84 05 00 00 00    	je     403e0b <bpnn_save+0x50b>
  403e06:	e8 55 17 00 00       	callq  405560 <check_flag>
  403e0b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  403e0f:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  403e13:	48 89 c2             	mov    %rax,%rdx
  403e16:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  403e1d:	48 81 c1 01 00 00 00 	add    $0x1,%rcx
  403e24:	48 39 ca             	cmp    %rcx,%rdx
  403e27:	48 89 85 a8 fe ff ff 	mov    %rax,-0x158(%rbp)
  403e2e:	48 89 95 a0 fe ff ff 	mov    %rdx,-0x160(%rbp)
  403e35:	0f 84 05 00 00 00    	je     403e40 <bpnn_save+0x540>
  403e3b:	e8 20 17 00 00       	callq  405560 <check_flag>
  403e40:	48 8b 85 a0 fe ff ff 	mov    -0x160(%rbp),%rax
  403e47:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  403e4b:	48 8b 8d a8 fe ff ff 	mov    -0x158(%rbp),%rcx
  403e52:	8a 95 b7 fe ff ff    	mov    -0x149(%rbp),%dl
  403e58:	88 11                	mov    %dl,(%rcx)
  403e5a:	8b 45 a4             	mov    -0x5c(%rbp),%eax
  403e5d:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
  403e60:	05 01 00 00 00       	add    $0x1,%eax
  403e65:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403e6b:	39 c8                	cmp    %ecx,%eax
  403e6d:	89 85 9c fe ff ff    	mov    %eax,-0x164(%rbp)
  403e73:	0f 84 05 00 00 00    	je     403e7e <bpnn_save+0x57e>
  403e79:	e8 e2 16 00 00       	callq  405560 <check_flag>
  403e7e:	8b 85 9c fe ff ff    	mov    -0x164(%rbp),%eax
  403e84:	89 45 a4             	mov    %eax,-0x5c(%rbp)
  403e87:	e9 d2 fe ff ff       	jmpq   403d5e <bpnn_save+0x45e>
  403e8c:	8b 45 d8             	mov    -0x28(%rbp),%eax
  403e8f:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  403e92:	48 63 d0             	movslq %eax,%rdx
  403e95:	48 63 f1             	movslq %ecx,%rsi
  403e98:	48 81 c2 04 00 00 00 	add    $0x4,%rdx
  403e9f:	48 81 c6 04 00 00 00 	add    $0x4,%rsi
  403ea6:	89 d0                	mov    %edx,%eax
  403ea8:	89 f1                	mov    %esi,%ecx
  403eaa:	39 c8                	cmp    %ecx,%eax
  403eac:	89 85 98 fe ff ff    	mov    %eax,-0x168(%rbp)
  403eb2:	0f 84 05 00 00 00    	je     403ebd <bpnn_save+0x5bd>
  403eb8:	e8 a3 16 00 00       	callq  405560 <check_flag>
  403ebd:	8b 85 98 fe ff ff    	mov    -0x168(%rbp),%eax
  403ec3:	89 45 d8             	mov    %eax,-0x28(%rbp)
  403ec6:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403ec9:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  403ecc:	05 01 00 00 00       	add    $0x1,%eax
  403ed1:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403ed7:	39 c8                	cmp    %ecx,%eax
  403ed9:	89 85 94 fe ff ff    	mov    %eax,-0x16c(%rbp)
  403edf:	0f 84 05 00 00 00    	je     403eea <bpnn_save+0x5ea>
  403ee5:	e8 76 16 00 00       	callq  405560 <check_flag>
  403eea:	8b 85 94 fe ff ff    	mov    -0x16c(%rbp),%eax
  403ef0:	89 45 dc             	mov    %eax,-0x24(%rbp)
  403ef3:	e9 65 fd ff ff       	jmpq   403c5d <bpnn_save+0x35d>
  403ef8:	e9 00 00 00 00       	jmpq   403efd <bpnn_save+0x5fd>
  403efd:	8b 45 e0             	mov    -0x20(%rbp),%eax
  403f00:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  403f03:	05 01 00 00 00       	add    $0x1,%eax
  403f08:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403f0e:	39 c8                	cmp    %ecx,%eax
  403f10:	89 85 90 fe ff ff    	mov    %eax,-0x170(%rbp)
  403f16:	0f 84 05 00 00 00    	je     403f21 <bpnn_save+0x621>
  403f1c:	e8 3f 16 00 00       	callq  405560 <check_flag>
  403f21:	8b 85 90 fe ff ff    	mov    -0x170(%rbp),%eax
  403f27:	89 45 e0             	mov    %eax,-0x20(%rbp)
  403f2a:	e9 e7 fc ff ff       	jmpq   403c16 <bpnn_save+0x316>
  403f2f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  403f33:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  403f37:	48 89 85 88 fe ff ff 	mov    %rax,-0x178(%rbp)
  403f3e:	0f 84 05 00 00 00    	je     403f49 <bpnn_save+0x649>
  403f44:	e8 17 16 00 00       	callq  405560 <check_flag>
  403f49:	8b 45 ec             	mov    -0x14(%rbp),%eax
  403f4c:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  403f4f:	05 01 00 00 00       	add    $0x1,%eax
  403f54:	81 c1 01 00 00 00    	add    $0x1,%ecx
  403f5a:	8b 55 e8             	mov    -0x18(%rbp),%edx
  403f5d:	8b 75 e8             	mov    -0x18(%rbp),%esi
  403f60:	81 c2 01 00 00 00    	add    $0x1,%edx
  403f66:	81 c6 01 00 00 00    	add    $0x1,%esi
  403f6c:	0f af c2             	imul   %edx,%eax
  403f6f:	0f af ce             	imul   %esi,%ecx
  403f72:	89 c0                	mov    %eax,%eax
  403f74:	89 c7                	mov    %eax,%edi
  403f76:	89 c8                	mov    %ecx,%eax
  403f78:	41 89 c0             	mov    %eax,%r8d
  403f7b:	4c 39 c7             	cmp    %r8,%rdi
  403f7e:	48 89 bd 80 fe ff ff 	mov    %rdi,-0x180(%rbp)
  403f85:	0f 84 05 00 00 00    	je     403f90 <bpnn_save+0x690>
  403f8b:	e8 d0 15 00 00       	callq  405560 <check_flag>
  403f90:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403f94:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  403f98:	48 89 85 78 fe ff ff 	mov    %rax,-0x188(%rbp)
  403f9f:	0f 84 05 00 00 00    	je     403faa <bpnn_save+0x6aa>
  403fa5:	e8 b6 15 00 00       	callq  405560 <check_flag>
  403faa:	48 be 04 00 00 00 00 	movabs $0x4,%rsi
  403fb1:	00 00 00 
  403fb4:	48 8b bd 88 fe ff ff 	mov    -0x178(%rbp),%rdi
  403fbb:	48 8b 95 80 fe ff ff 	mov    -0x180(%rbp),%rdx
  403fc2:	48 8b 8d 78 fe ff ff 	mov    -0x188(%rbp),%rcx
  403fc9:	e8 52 c9 ff ff       	callq  400920 <fwrite@plt>
  403fce:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  403fd2:	48 3b 4d c0          	cmp    -0x40(%rbp),%rcx
  403fd6:	48 89 85 70 fe ff ff 	mov    %rax,-0x190(%rbp)
  403fdd:	48 89 8d 68 fe ff ff 	mov    %rcx,-0x198(%rbp)
  403fe4:	0f 84 05 00 00 00    	je     403fef <bpnn_save+0x6ef>
  403fea:	e8 71 15 00 00       	callq  405560 <check_flag>
  403fef:	48 8b bd 68 fe ff ff 	mov    -0x198(%rbp),%rdi
  403ff6:	e8 e5 c8 ff ff       	callq  4008e0 <free@plt>
  403ffb:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
  404002:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  404006:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40400a:	48 8b 7f 48          	mov    0x48(%rdi),%rdi
  40400e:	48 3b 78 48          	cmp    0x48(%rax),%rdi
  404012:	48 89 bd 60 fe ff ff 	mov    %rdi,-0x1a0(%rbp)
  404019:	0f 84 05 00 00 00    	je     404024 <bpnn_save+0x724>
  40401f:	e8 3c 15 00 00       	callq  405560 <check_flag>
  404024:	48 8b 85 60 fe ff ff 	mov    -0x1a0(%rbp),%rax
  40402b:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  40402f:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  404032:	8b 55 e8             	mov    -0x18(%rbp),%edx
  404035:	81 c1 01 00 00 00    	add    $0x1,%ecx
  40403b:	81 c2 01 00 00 00    	add    $0x1,%edx
  404041:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  404044:	8b 7d e4             	mov    -0x1c(%rbp),%edi
  404047:	81 c6 01 00 00 00    	add    $0x1,%esi
  40404d:	81 c7 01 00 00 00    	add    $0x1,%edi
  404053:	0f af ce             	imul   %esi,%ecx
  404056:	0f af d7             	imul   %edi,%edx
  404059:	4c 63 c1             	movslq %ecx,%r8
  40405c:	4c 63 ca             	movslq %edx,%r9
  40405f:	49 c1 e0 02          	shl    $0x2,%r8
  404063:	49 c1 e1 02          	shl    $0x2,%r9
  404067:	44 89 c1             	mov    %r8d,%ecx
  40406a:	44 89 ca             	mov    %r9d,%edx
  40406d:	89 c9                	mov    %ecx,%ecx
  40406f:	41 89 c8             	mov    %ecx,%r8d
  404072:	89 d1                	mov    %edx,%ecx
  404074:	41 89 c9             	mov    %ecx,%r9d
  404077:	4d 39 c8             	cmp    %r9,%r8
  40407a:	4c 89 85 58 fe ff ff 	mov    %r8,-0x1a8(%rbp)
  404081:	0f 84 05 00 00 00    	je     40408c <bpnn_save+0x78c>
  404087:	e8 d4 14 00 00       	callq  405560 <check_flag>
  40408c:	48 8b bd 58 fe ff ff 	mov    -0x1a8(%rbp),%rdi
  404093:	e8 18 c8 ff ff       	callq  4008b0 <malloc@plt>
  404098:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  40409c:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  4040a3:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4040a6:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  4040a9:	29 c8                	sub    %ecx,%eax
  4040ab:	0f 9e c2             	setle  %dl
  4040ae:	40 b6 01             	mov    $0x1,%sil
  4040b1:	40 84 f6             	test   %sil,%sil
  4040b4:	89 85 54 fe ff ff    	mov    %eax,-0x1ac(%rbp)
  4040ba:	88 95 53 fe ff ff    	mov    %dl,-0x1ad(%rbp)
  4040c0:	0f 85 0a 00 00 00    	jne    4040d0 <bpnn_save+0x7d0>
  4040c6:	e9 00 00 00 00       	jmpq   4040cb <bpnn_save+0x7cb>
  4040cb:	e8 90 14 00 00       	callq  405560 <check_flag>
  4040d0:	8a 85 53 fe ff ff    	mov    -0x1ad(%rbp),%al
  4040d6:	a8 01                	test   $0x1,%al
  4040d8:	0f 85 05 00 00 00    	jne    4040e3 <bpnn_save+0x7e3>
  4040de:	e9 d9 02 00 00       	jmpq   4043bc <bpnn_save+0xabc>
  4040e3:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%rbp)
  4040ea:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4040ed:	8b 4d e4             	mov    -0x1c(%rbp),%ecx
  4040f0:	29 c8                	sub    %ecx,%eax
  4040f2:	0f 9e c2             	setle  %dl
  4040f5:	40 b6 01             	mov    $0x1,%sil
  4040f8:	40 84 f6             	test   %sil,%sil
  4040fb:	89 85 4c fe ff ff    	mov    %eax,-0x1b4(%rbp)
  404101:	88 95 4b fe ff ff    	mov    %dl,-0x1b5(%rbp)
  404107:	0f 85 0a 00 00 00    	jne    404117 <bpnn_save+0x817>
  40410d:	e9 00 00 00 00       	jmpq   404112 <bpnn_save+0x812>
  404112:	e8 49 14 00 00       	callq  405560 <check_flag>
  404117:	8a 85 4b fe ff ff    	mov    -0x1b5(%rbp),%al
  40411d:	a8 01                	test   $0x1,%al
  40411f:	0f 85 05 00 00 00    	jne    40412a <bpnn_save+0x82a>
  404125:	e9 5b 02 00 00       	jmpq   404385 <bpnn_save+0xa85>
  40412a:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40412d:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  404130:	48 63 d0             	movslq %eax,%rdx
  404133:	48 63 f1             	movslq %ecx,%rsi
  404136:	8b 45 e0             	mov    -0x20(%rbp),%eax
  404139:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  40413c:	48 63 f8             	movslq %eax,%rdi
  40413f:	4c 63 c1             	movslq %ecx,%r8
  404142:	4c 8b 4d c8          	mov    -0x38(%rbp),%r9
  404146:	4c 8b 55 c8          	mov    -0x38(%rbp),%r10
  40414a:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  40414e:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  404152:	f3 0f 10 04 97       	movss  (%rdi,%rdx,4),%xmm0
  404157:	41 0f 2e 04 b0       	ucomiss (%r8,%rsi,4),%xmm0
  40415c:	f3 0f 11 85 44 fe ff 	movss  %xmm0,-0x1bc(%rbp)
  404163:	ff 
  404164:	0f 84 05 00 00 00    	je     40416f <bpnn_save+0x86f>
  40416a:	e8 f1 13 00 00       	callq  405560 <check_flag>
  40416f:	f3 0f 10 85 44 fe ff 	movss  -0x1bc(%rbp),%xmm0
  404176:	ff 
  404177:	f3 0f 11 45 d4       	movss  %xmm0,-0x2c(%rbp)
  40417c:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40417f:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  404182:	48 63 d0             	movslq %eax,%rdx
  404185:	48 63 f1             	movslq %ecx,%rsi
  404188:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40418c:	4c 8b 45 c0          	mov    -0x40(%rbp),%r8
  404190:	48 01 d7             	add    %rdx,%rdi
  404193:	49 01 f0             	add    %rsi,%r8
  404196:	4c 39 c7             	cmp    %r8,%rdi
  404199:	48 89 bd 38 fe ff ff 	mov    %rdi,-0x1c8(%rbp)
  4041a0:	0f 84 05 00 00 00    	je     4041ab <bpnn_save+0x8ab>
  4041a6:	e8 b5 13 00 00       	callq  405560 <check_flag>
  4041ab:	48 8d 45 d4          	lea    -0x2c(%rbp),%rax
  4041af:	48 8b 8d 38 fe ff ff 	mov    -0x1c8(%rbp),%rcx
  4041b6:	48 89 4d 98          	mov    %rcx,-0x68(%rbp)
  4041ba:	48 89 c2             	mov    %rax,%rdx
  4041bd:	48 39 c2             	cmp    %rax,%rdx
  4041c0:	48 89 95 30 fe ff ff 	mov    %rdx,-0x1d0(%rbp)
  4041c7:	0f 84 05 00 00 00    	je     4041d2 <bpnn_save+0x8d2>
  4041cd:	e8 8e 13 00 00       	callq  405560 <check_flag>
  4041d2:	48 8b 85 30 fe ff ff 	mov    -0x1d0(%rbp),%rax
  4041d9:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  4041dd:	c7 45 88 04 00 00 00 	movl   $0x4,-0x78(%rbp)
  4041e4:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%rbp)
  4041eb:	8b 45 8c             	mov    -0x74(%rbp),%eax
  4041ee:	8b 4d 88             	mov    -0x78(%rbp),%ecx
  4041f1:	29 c8                	sub    %ecx,%eax
  4041f3:	0f 9c c2             	setl   %dl
  4041f6:	40 b6 01             	mov    $0x1,%sil
  4041f9:	40 84 f6             	test   %sil,%sil
  4041fc:	89 85 2c fe ff ff    	mov    %eax,-0x1d4(%rbp)
  404202:	88 95 2b fe ff ff    	mov    %dl,-0x1d5(%rbp)
  404208:	0f 85 0a 00 00 00    	jne    404218 <bpnn_save+0x918>
  40420e:	e9 00 00 00 00       	jmpq   404213 <bpnn_save+0x913>
  404213:	e8 48 13 00 00       	callq  405560 <check_flag>
  404218:	8a 85 2b fe ff ff    	mov    -0x1d5(%rbp),%al
  40421e:	a8 01                	test   $0x1,%al
  404220:	0f 85 05 00 00 00    	jne    40422b <bpnn_save+0x92b>
  404226:	e9 ee 00 00 00       	jmpq   404319 <bpnn_save+0xa19>
  40422b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
  40422f:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
  404233:	48 89 c2             	mov    %rax,%rdx
  404236:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  40423d:	48 89 ce             	mov    %rcx,%rsi
  404240:	48 81 c6 01 00 00 00 	add    $0x1,%rsi
  404247:	48 39 f2             	cmp    %rsi,%rdx
  40424a:	48 89 85 20 fe ff ff 	mov    %rax,-0x1e0(%rbp)
  404251:	48 89 8d 18 fe ff ff 	mov    %rcx,-0x1e8(%rbp)
  404258:	48 89 95 10 fe ff ff 	mov    %rdx,-0x1f0(%rbp)
  40425f:	0f 84 05 00 00 00    	je     40426a <bpnn_save+0x96a>
  404265:	e8 f6 12 00 00       	callq  405560 <check_flag>
  40426a:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  404271:	48 89 45 90          	mov    %rax,-0x70(%rbp)
  404275:	48 8b 8d 20 fe ff ff 	mov    -0x1e0(%rbp),%rcx
  40427c:	8a 11                	mov    (%rcx),%dl
  40427e:	48 8b b5 18 fe ff ff 	mov    -0x1e8(%rbp),%rsi
  404285:	3a 16                	cmp    (%rsi),%dl
  404287:	88 95 0f fe ff ff    	mov    %dl,-0x1f1(%rbp)
  40428d:	0f 84 05 00 00 00    	je     404298 <bpnn_save+0x998>
  404293:	e8 c8 12 00 00       	callq  405560 <check_flag>
  404298:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  40429c:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  4042a0:	48 89 c2             	mov    %rax,%rdx
  4042a3:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  4042aa:	48 81 c1 01 00 00 00 	add    $0x1,%rcx
  4042b1:	48 39 ca             	cmp    %rcx,%rdx
  4042b4:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
  4042bb:	48 89 95 f8 fd ff ff 	mov    %rdx,-0x208(%rbp)
  4042c2:	0f 84 05 00 00 00    	je     4042cd <bpnn_save+0x9cd>
  4042c8:	e8 93 12 00 00       	callq  405560 <check_flag>
  4042cd:	48 8b 85 f8 fd ff ff 	mov    -0x208(%rbp),%rax
  4042d4:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  4042d8:	48 8b 8d 00 fe ff ff 	mov    -0x200(%rbp),%rcx
  4042df:	8a 95 0f fe ff ff    	mov    -0x1f1(%rbp),%dl
  4042e5:	88 11                	mov    %dl,(%rcx)
  4042e7:	8b 45 8c             	mov    -0x74(%rbp),%eax
  4042ea:	8b 4d 8c             	mov    -0x74(%rbp),%ecx
  4042ed:	05 01 00 00 00       	add    $0x1,%eax
  4042f2:	81 c1 01 00 00 00    	add    $0x1,%ecx
  4042f8:	39 c8                	cmp    %ecx,%eax
  4042fa:	89 85 f4 fd ff ff    	mov    %eax,-0x20c(%rbp)
  404300:	0f 84 05 00 00 00    	je     40430b <bpnn_save+0xa0b>
  404306:	e8 55 12 00 00       	callq  405560 <check_flag>
  40430b:	8b 85 f4 fd ff ff    	mov    -0x20c(%rbp),%eax
  404311:	89 45 8c             	mov    %eax,-0x74(%rbp)
  404314:	e9 d2 fe ff ff       	jmpq   4041eb <bpnn_save+0x8eb>
  404319:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40431c:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  40431f:	48 63 d0             	movslq %eax,%rdx
  404322:	48 63 f1             	movslq %ecx,%rsi
  404325:	48 81 c2 04 00 00 00 	add    $0x4,%rdx
  40432c:	48 81 c6 04 00 00 00 	add    $0x4,%rsi
  404333:	89 d0                	mov    %edx,%eax
  404335:	89 f1                	mov    %esi,%ecx
  404337:	39 c8                	cmp    %ecx,%eax
  404339:	89 85 f0 fd ff ff    	mov    %eax,-0x210(%rbp)
  40433f:	0f 84 05 00 00 00    	je     40434a <bpnn_save+0xa4a>
  404345:	e8 16 12 00 00       	callq  405560 <check_flag>
  40434a:	8b 85 f0 fd ff ff    	mov    -0x210(%rbp),%eax
  404350:	89 45 d8             	mov    %eax,-0x28(%rbp)
  404353:	8b 45 dc             	mov    -0x24(%rbp),%eax
  404356:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  404359:	05 01 00 00 00       	add    $0x1,%eax
  40435e:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404364:	39 c8                	cmp    %ecx,%eax
  404366:	89 85 ec fd ff ff    	mov    %eax,-0x214(%rbp)
  40436c:	0f 84 05 00 00 00    	je     404377 <bpnn_save+0xa77>
  404372:	e8 e9 11 00 00       	callq  405560 <check_flag>
  404377:	8b 85 ec fd ff ff    	mov    -0x214(%rbp),%eax
  40437d:	89 45 dc             	mov    %eax,-0x24(%rbp)
  404380:	e9 65 fd ff ff       	jmpq   4040ea <bpnn_save+0x7ea>
  404385:	e9 00 00 00 00       	jmpq   40438a <bpnn_save+0xa8a>
  40438a:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40438d:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  404390:	05 01 00 00 00       	add    $0x1,%eax
  404395:	81 c1 01 00 00 00    	add    $0x1,%ecx
  40439b:	39 c8                	cmp    %ecx,%eax
  40439d:	89 85 e8 fd ff ff    	mov    %eax,-0x218(%rbp)
  4043a3:	0f 84 05 00 00 00    	je     4043ae <bpnn_save+0xaae>
  4043a9:	e8 b2 11 00 00       	callq  405560 <check_flag>
  4043ae:	8b 85 e8 fd ff ff    	mov    -0x218(%rbp),%eax
  4043b4:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4043b7:	e9 e7 fc ff ff       	jmpq   4040a3 <bpnn_save+0x7a3>
  4043bc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4043c0:	48 3b 45 c0          	cmp    -0x40(%rbp),%rax
  4043c4:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  4043cb:	0f 84 05 00 00 00    	je     4043d6 <bpnn_save+0xad6>
  4043d1:	e8 8a 11 00 00       	callq  405560 <check_flag>
  4043d6:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4043d9:	8b 4d e8             	mov    -0x18(%rbp),%ecx
  4043dc:	05 01 00 00 00       	add    $0x1,%eax
  4043e1:	81 c1 01 00 00 00    	add    $0x1,%ecx
  4043e7:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  4043ea:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  4043ed:	81 c2 01 00 00 00    	add    $0x1,%edx
  4043f3:	81 c6 01 00 00 00    	add    $0x1,%esi
  4043f9:	0f af c2             	imul   %edx,%eax
  4043fc:	0f af ce             	imul   %esi,%ecx
  4043ff:	89 c0                	mov    %eax,%eax
  404401:	89 c7                	mov    %eax,%edi
  404403:	89 c8                	mov    %ecx,%eax
  404405:	41 89 c0             	mov    %eax,%r8d
  404408:	4c 39 c7             	cmp    %r8,%rdi
  40440b:	48 89 bd d8 fd ff ff 	mov    %rdi,-0x228(%rbp)
  404412:	0f 84 05 00 00 00    	je     40441d <bpnn_save+0xb1d>
  404418:	e8 43 11 00 00       	callq  405560 <check_flag>
  40441d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  404421:	48 3b 45 b8          	cmp    -0x48(%rbp),%rax
  404425:	48 89 85 d0 fd ff ff 	mov    %rax,-0x230(%rbp)
  40442c:	0f 84 05 00 00 00    	je     404437 <bpnn_save+0xb37>
  404432:	e8 29 11 00 00       	callq  405560 <check_flag>
  404437:	48 be 04 00 00 00 00 	movabs $0x4,%rsi
  40443e:	00 00 00 
  404441:	48 8b bd e0 fd ff ff 	mov    -0x220(%rbp),%rdi
  404448:	48 8b 95 d8 fd ff ff 	mov    -0x228(%rbp),%rdx
  40444f:	48 8b 8d d0 fd ff ff 	mov    -0x230(%rbp),%rcx
  404456:	e8 c5 c4 ff ff       	callq  400920 <fwrite@plt>
  40445b:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  40445f:	48 3b 4d c0          	cmp    -0x40(%rbp),%rcx
  404463:	48 89 85 c8 fd ff ff 	mov    %rax,-0x238(%rbp)
  40446a:	48 89 8d c0 fd ff ff 	mov    %rcx,-0x240(%rbp)
  404471:	0f 84 05 00 00 00    	je     40447c <bpnn_save+0xb7c>
  404477:	e8 e4 10 00 00       	callq  405560 <check_flag>
  40447c:	48 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%rdi
  404483:	e8 58 c4 ff ff       	callq  4008e0 <free@plt>
  404488:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  40448c:	48 3b 7d b8          	cmp    -0x48(%rbp),%rdi
  404490:	48 89 bd b8 fd ff ff 	mov    %rdi,-0x248(%rbp)
  404497:	0f 84 05 00 00 00    	je     4044a2 <bpnn_save+0xba2>
  40449d:	e8 be 10 00 00       	callq  405560 <check_flag>
  4044a2:	48 8b bd b8 fd ff ff 	mov    -0x248(%rbp),%rdi
  4044a9:	e8 62 c4 ff ff       	callq  400910 <fclose@plt>
  4044ae:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%rbp)
  4044b4:	48 81 c4 50 02 00 00 	add    $0x250,%rsp
  4044bb:	5d                   	pop    %rbp
  4044bc:	c3                   	retq   
  4044bd:	0f 1f 00             	nopl   (%rax)

00000000004044c0 <bpnn_read>:
  4044c0:	55                   	push   %rbp
  4044c1:	48 89 e5             	mov    %rsp,%rbp
  4044c4:	48 81 ec 80 02 00 00 	sub    $0x280,%rsp
  4044cb:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
  4044cf:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4044d3:	48 3b 7d f0          	cmp    -0x10(%rbp),%rdi
  4044d7:	48 89 7d 88          	mov    %rdi,-0x78(%rbp)
  4044db:	0f 84 05 00 00 00    	je     4044e6 <bpnn_read+0x26>
  4044e1:	e8 7a 10 00 00       	callq  405560 <check_flag>
  4044e6:	31 c0                	xor    %eax,%eax
  4044e8:	88 c1                	mov    %al,%cl
  4044ea:	ba a4 01 00 00       	mov    $0x1a4,%edx
  4044ef:	48 8b 7d 88          	mov    -0x78(%rbp),%rdi
  4044f3:	89 c6                	mov    %eax,%esi
  4044f5:	88 c8                	mov    %cl,%al
  4044f7:	e8 44 c4 ff ff       	callq  400940 <open@plt>
  4044fc:	89 c2                	mov    %eax,%edx
  4044fe:	83 ea ff             	sub    $0xffffffff,%edx
  404501:	89 45 dc             	mov    %eax,-0x24(%rbp)
  404504:	0f 94 c1             	sete   %cl
  404507:	41 b0 01             	mov    $0x1,%r8b
  40450a:	45 84 c0             	test   %r8b,%r8b
  40450d:	89 55 84             	mov    %edx,-0x7c(%rbp)
  404510:	88 4d 83             	mov    %cl,-0x7d(%rbp)
  404513:	0f 85 0a 00 00 00    	jne    404523 <bpnn_read+0x63>
  404519:	e9 00 00 00 00       	jmpq   40451e <bpnn_read+0x5e>
  40451e:	e8 3d 10 00 00       	callq  405560 <check_flag>
  404523:	8a 45 83             	mov    -0x7d(%rbp),%al
  404526:	a8 01                	test   $0x1,%al
  404528:	0f 85 05 00 00 00    	jne    404533 <bpnn_read+0x73>
  40452e:	e9 0d 00 00 00       	jmpq   404540 <bpnn_read+0x80>
  404533:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  40453a:	00 
  40453b:	e9 d3 0b 00 00       	jmpq   405113 <bpnn_read+0xc53>
  404540:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  404544:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  404548:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  40454f:	0f 84 05 00 00 00    	je     40455a <bpnn_read+0x9a>
  404555:	e8 06 10 00 00       	callq  405560 <check_flag>
  40455a:	48 8d 3c 25 25 57 40 	lea    0x405725,%rdi
  404561:	00 
  404562:	48 8b b5 78 ff ff ff 	mov    -0x88(%rbp),%rsi
  404569:	b0 00                	mov    $0x0,%al
  40456b:	e8 f0 c2 ff ff       	callq  400860 <printf@plt>
  404570:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
  404574:	8b 7d dc             	mov    -0x24(%rbp),%edi
  404577:	48 89 f1             	mov    %rsi,%rcx
  40457a:	48 39 f1             	cmp    %rsi,%rcx
  40457d:	89 85 74 ff ff ff    	mov    %eax,-0x8c(%rbp)
  404583:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
  40458a:	89 bd 64 ff ff ff    	mov    %edi,-0x9c(%rbp)
  404590:	0f 84 05 00 00 00    	je     40459b <bpnn_read+0xdb>
  404596:	e8 c5 0f 00 00       	callq  405560 <check_flag>
  40459b:	48 ba 04 00 00 00 00 	movabs $0x4,%rdx
  4045a2:	00 00 00 
  4045a5:	8b bd 64 ff ff ff    	mov    -0x9c(%rbp),%edi
  4045ab:	48 8b b5 68 ff ff ff 	mov    -0x98(%rbp),%rsi
  4045b2:	e8 e9 c2 ff ff       	callq  4008a0 <read@plt>
  4045b7:	48 8d 55 d4          	lea    -0x2c(%rbp),%rdx
  4045bb:	8b 7d dc             	mov    -0x24(%rbp),%edi
  4045be:	48 89 d6             	mov    %rdx,%rsi
  4045c1:	48 39 d6             	cmp    %rdx,%rsi
  4045c4:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
  4045cb:	48 89 b5 50 ff ff ff 	mov    %rsi,-0xb0(%rbp)
  4045d2:	89 bd 4c ff ff ff    	mov    %edi,-0xb4(%rbp)
  4045d8:	0f 84 05 00 00 00    	je     4045e3 <bpnn_read+0x123>
  4045de:	e8 7d 0f 00 00       	callq  405560 <check_flag>
  4045e3:	48 ba 04 00 00 00 00 	movabs $0x4,%rdx
  4045ea:	00 00 00 
  4045ed:	8b bd 4c ff ff ff    	mov    -0xb4(%rbp),%edi
  4045f3:	48 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%rsi
  4045fa:	e8 a1 c2 ff ff       	callq  4008a0 <read@plt>
  4045ff:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  404603:	8b 7d dc             	mov    -0x24(%rbp),%edi
  404606:	48 89 d6             	mov    %rdx,%rsi
  404609:	48 39 d6             	cmp    %rdx,%rsi
  40460c:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
  404613:	48 89 b5 38 ff ff ff 	mov    %rsi,-0xc8(%rbp)
  40461a:	89 bd 34 ff ff ff    	mov    %edi,-0xcc(%rbp)
  404620:	0f 84 05 00 00 00    	je     40462b <bpnn_read+0x16b>
  404626:	e8 35 0f 00 00       	callq  405560 <check_flag>
  40462b:	48 ba 04 00 00 00 00 	movabs $0x4,%rdx
  404632:	00 00 00 
  404635:	8b bd 34 ff ff ff    	mov    -0xcc(%rbp),%edi
  40463b:	48 8b b5 38 ff ff ff 	mov    -0xc8(%rbp),%rsi
  404642:	e8 59 c2 ff ff       	callq  4008a0 <read@plt>
  404647:	8b 7d d8             	mov    -0x28(%rbp),%edi
  40464a:	3b 7d d8             	cmp    -0x28(%rbp),%edi
  40464d:	48 89 85 28 ff ff ff 	mov    %rax,-0xd8(%rbp)
  404654:	89 bd 24 ff ff ff    	mov    %edi,-0xdc(%rbp)
  40465a:	0f 84 05 00 00 00    	je     404665 <bpnn_read+0x1a5>
  404660:	e8 fb 0e 00 00       	callq  405560 <check_flag>
  404665:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  404668:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  40466b:	89 85 20 ff ff ff    	mov    %eax,-0xe0(%rbp)
  404671:	0f 84 05 00 00 00    	je     40467c <bpnn_read+0x1bc>
  404677:	e8 e4 0e 00 00       	callq  405560 <check_flag>
  40467c:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40467f:	3b 45 d0             	cmp    -0x30(%rbp),%eax
  404682:	89 85 1c ff ff ff    	mov    %eax,-0xe4(%rbp)
  404688:	0f 84 05 00 00 00    	je     404693 <bpnn_read+0x1d3>
  40468e:	e8 cd 0e 00 00       	callq  405560 <check_flag>
  404693:	8b bd 24 ff ff ff    	mov    -0xdc(%rbp),%edi
  404699:	8b b5 20 ff ff ff    	mov    -0xe0(%rbp),%esi
  40469f:	8b 95 1c ff ff ff    	mov    -0xe4(%rbp),%edx
  4046a5:	e8 96 d1 ff ff       	callq  401840 <bpnn_internal_create>
  4046aa:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4046ae:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4046b2:	48 3b 45 f0          	cmp    -0x10(%rbp),%rax
  4046b6:	48 89 85 10 ff ff ff 	mov    %rax,-0xf0(%rbp)
  4046bd:	0f 84 05 00 00 00    	je     4046c8 <bpnn_read+0x208>
  4046c3:	e8 98 0e 00 00       	callq  405560 <check_flag>
  4046c8:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4046cb:	3b 45 d8             	cmp    -0x28(%rbp),%eax
  4046ce:	89 85 0c ff ff ff    	mov    %eax,-0xf4(%rbp)
  4046d4:	0f 84 05 00 00 00    	je     4046df <bpnn_read+0x21f>
  4046da:	e8 81 0e 00 00       	callq  405560 <check_flag>
  4046df:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4046e2:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4046e5:	89 85 08 ff ff ff    	mov    %eax,-0xf8(%rbp)
  4046eb:	0f 84 05 00 00 00    	je     4046f6 <bpnn_read+0x236>
  4046f1:	e8 6a 0e 00 00       	callq  405560 <check_flag>
  4046f6:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4046f9:	3b 45 d0             	cmp    -0x30(%rbp),%eax
  4046fc:	89 85 04 ff ff ff    	mov    %eax,-0xfc(%rbp)
  404702:	0f 84 05 00 00 00    	je     40470d <bpnn_read+0x24d>
  404708:	e8 53 0e 00 00       	callq  405560 <check_flag>
  40470d:	48 8d 3c 25 33 57 40 	lea    0x405733,%rdi
  404714:	00 
  404715:	48 8b b5 10 ff ff ff 	mov    -0xf0(%rbp),%rsi
  40471c:	8b 95 0c ff ff ff    	mov    -0xf4(%rbp),%edx
  404722:	8b 8d 08 ff ff ff    	mov    -0xf8(%rbp),%ecx
  404728:	44 8b 85 04 ff ff ff 	mov    -0xfc(%rbp),%r8d
  40472f:	b0 00                	mov    $0x0,%al
  404731:	e8 2a c1 ff ff       	callq  400860 <printf@plt>
  404736:	48 8d 3c 25 55 57 40 	lea    0x405755,%rdi
  40473d:	00 
  40473e:	89 85 00 ff ff ff    	mov    %eax,-0x100(%rbp)
  404744:	b0 00                	mov    $0x0,%al
  404746:	e8 15 c1 ff ff       	callq  400860 <printf@plt>
  40474b:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
  404752:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  404755:	8b 55 d8             	mov    -0x28(%rbp),%edx
  404758:	81 c1 01 00 00 00    	add    $0x1,%ecx
  40475e:	81 c2 01 00 00 00    	add    $0x1,%edx
  404764:	44 8b 45 d4          	mov    -0x2c(%rbp),%r8d
  404768:	44 8b 4d d4          	mov    -0x2c(%rbp),%r9d
  40476c:	41 81 c0 01 00 00 00 	add    $0x1,%r8d
  404773:	41 81 c1 01 00 00 00 	add    $0x1,%r9d
  40477a:	41 0f af c8          	imul   %r8d,%ecx
  40477e:	41 0f af d1          	imul   %r9d,%edx
  404782:	48 63 f1             	movslq %ecx,%rsi
  404785:	48 63 fa             	movslq %edx,%rdi
  404788:	48 c1 e6 02          	shl    $0x2,%rsi
  40478c:	48 c1 e7 02          	shl    $0x2,%rdi
  404790:	89 f1                	mov    %esi,%ecx
  404792:	89 fa                	mov    %edi,%edx
  404794:	89 c9                	mov    %ecx,%ecx
  404796:	89 ce                	mov    %ecx,%esi
  404798:	89 d1                	mov    %edx,%ecx
  40479a:	89 cf                	mov    %ecx,%edi
  40479c:	48 39 fe             	cmp    %rdi,%rsi
  40479f:	89 85 fc fe ff ff    	mov    %eax,-0x104(%rbp)
  4047a5:	48 89 b5 f0 fe ff ff 	mov    %rsi,-0x110(%rbp)
  4047ac:	0f 84 05 00 00 00    	je     4047b7 <bpnn_read+0x2f7>
  4047b2:	e8 a9 0d 00 00       	callq  405560 <check_flag>
  4047b7:	48 8b bd f0 fe ff ff 	mov    -0x110(%rbp),%rdi
  4047be:	e8 ed c0 ff ff       	callq  4008b0 <malloc@plt>
  4047c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4047c7:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  4047ca:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
  4047cd:	89 8d ec fe ff ff    	mov    %ecx,-0x114(%rbp)
  4047d3:	0f 84 05 00 00 00    	je     4047de <bpnn_read+0x31e>
  4047d9:	e8 82 0d 00 00       	callq  405560 <check_flag>
  4047de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4047e2:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  4047e6:	48 89 85 e0 fe ff ff 	mov    %rax,-0x120(%rbp)
  4047ed:	0f 84 05 00 00 00    	je     4047f8 <bpnn_read+0x338>
  4047f3:	e8 68 0d 00 00       	callq  405560 <check_flag>
  4047f8:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4047fb:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  4047fe:	05 01 00 00 00       	add    $0x1,%eax
  404803:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404809:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  40480c:	8b 75 d4             	mov    -0x2c(%rbp),%esi
  40480f:	81 c2 01 00 00 00    	add    $0x1,%edx
  404815:	81 c6 01 00 00 00    	add    $0x1,%esi
  40481b:	0f af c2             	imul   %edx,%eax
  40481e:	0f af ce             	imul   %esi,%ecx
  404821:	48 63 f8             	movslq %eax,%rdi
  404824:	4c 63 c1             	movslq %ecx,%r8
  404827:	48 c1 e7 02          	shl    $0x2,%rdi
  40482b:	49 c1 e0 02          	shl    $0x2,%r8
  40482f:	4c 39 c7             	cmp    %r8,%rdi
  404832:	48 89 bd d8 fe ff ff 	mov    %rdi,-0x128(%rbp)
  404839:	0f 84 05 00 00 00    	je     404844 <bpnn_read+0x384>
  40483f:	e8 1c 0d 00 00       	callq  405560 <check_flag>
  404844:	8b bd ec fe ff ff    	mov    -0x114(%rbp),%edi
  40484a:	48 8b b5 e0 fe ff ff 	mov    -0x120(%rbp),%rsi
  404851:	48 8b 95 d8 fe ff ff 	mov    -0x128(%rbp),%rdx
  404858:	e8 43 c0 ff ff       	callq  4008a0 <read@plt>
  40485d:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
  404864:	48 89 85 d0 fe ff ff 	mov    %rax,-0x130(%rbp)
  40486b:	8b 45 cc             	mov    -0x34(%rbp),%eax
  40486e:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  404871:	29 c8                	sub    %ecx,%eax
  404873:	0f 9e c2             	setle  %dl
  404876:	40 b6 01             	mov    $0x1,%sil
  404879:	40 84 f6             	test   %sil,%sil
  40487c:	89 85 cc fe ff ff    	mov    %eax,-0x134(%rbp)
  404882:	88 95 cb fe ff ff    	mov    %dl,-0x135(%rbp)
  404888:	0f 85 0a 00 00 00    	jne    404898 <bpnn_read+0x3d8>
  40488e:	e9 00 00 00 00       	jmpq   404893 <bpnn_read+0x3d3>
  404893:	e8 c8 0c 00 00       	callq  405560 <check_flag>
  404898:	8a 85 cb fe ff ff    	mov    -0x135(%rbp),%al
  40489e:	a8 01                	test   $0x1,%al
  4048a0:	0f 85 05 00 00 00    	jne    4048ab <bpnn_read+0x3eb>
  4048a6:	e9 be 02 00 00       	jmpq   404b69 <bpnn_read+0x6a9>
  4048ab:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
  4048b2:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4048b5:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  4048b8:	29 c8                	sub    %ecx,%eax
  4048ba:	0f 9e c2             	setle  %dl
  4048bd:	40 b6 01             	mov    $0x1,%sil
  4048c0:	40 84 f6             	test   %sil,%sil
  4048c3:	89 85 c4 fe ff ff    	mov    %eax,-0x13c(%rbp)
  4048c9:	88 95 c3 fe ff ff    	mov    %dl,-0x13d(%rbp)
  4048cf:	0f 85 0a 00 00 00    	jne    4048df <bpnn_read+0x41f>
  4048d5:	e9 00 00 00 00       	jmpq   4048da <bpnn_read+0x41a>
  4048da:	e8 81 0c 00 00       	callq  405560 <check_flag>
  4048df:	8a 85 c3 fe ff ff    	mov    -0x13d(%rbp),%al
  4048e5:	a8 01                	test   $0x1,%al
  4048e7:	0f 85 05 00 00 00    	jne    4048f2 <bpnn_read+0x432>
  4048ed:	e9 40 02 00 00       	jmpq   404b32 <bpnn_read+0x672>
  4048f2:	8b 45 c8             	mov    -0x38(%rbp),%eax
  4048f5:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  4048f8:	48 63 d0             	movslq %eax,%rdx
  4048fb:	48 63 f1             	movslq %ecx,%rsi
  4048fe:	8b 45 cc             	mov    -0x34(%rbp),%eax
  404901:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  404904:	48 63 f8             	movslq %eax,%rdi
  404907:	4c 63 c1             	movslq %ecx,%r8
  40490a:	4c 8b 4d e0          	mov    -0x20(%rbp),%r9
  40490e:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  404912:	4d 8b 49 40          	mov    0x40(%r9),%r9
  404916:	4d 8b 52 40          	mov    0x40(%r10),%r10
  40491a:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  40491e:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  404922:	48 c1 e2 02          	shl    $0x2,%rdx
  404926:	48 01 d7             	add    %rdx,%rdi
  404929:	48 c1 e6 02          	shl    $0x2,%rsi
  40492d:	49 01 f0             	add    %rsi,%r8
  404930:	4c 39 c7             	cmp    %r8,%rdi
  404933:	48 89 bd b8 fe ff ff 	mov    %rdi,-0x148(%rbp)
  40493a:	0f 84 05 00 00 00    	je     404945 <bpnn_read+0x485>
  404940:	e8 1b 0c 00 00       	callq  405560 <check_flag>
  404945:	48 8b 85 b8 fe ff ff 	mov    -0x148(%rbp),%rax
  40494c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  404950:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  404953:	8b 55 c4             	mov    -0x3c(%rbp),%edx
  404956:	48 63 f1             	movslq %ecx,%rsi
  404959:	48 63 fa             	movslq %edx,%rdi
  40495c:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  404960:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  404964:	49 01 f0             	add    %rsi,%r8
  404967:	49 01 f9             	add    %rdi,%r9
  40496a:	4d 39 c8             	cmp    %r9,%r8
  40496d:	4c 89 85 b0 fe ff ff 	mov    %r8,-0x150(%rbp)
  404974:	0f 84 05 00 00 00    	je     40497f <bpnn_read+0x4bf>
  40497a:	e8 e1 0b 00 00       	callq  405560 <check_flag>
  40497f:	48 8b 85 b0 fe ff ff 	mov    -0x150(%rbp),%rax
  404986:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  40498a:	c7 45 a8 04 00 00 00 	movl   $0x4,-0x58(%rbp)
  404991:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
  404998:	8b 45 ac             	mov    -0x54(%rbp),%eax
  40499b:	8b 4d a8             	mov    -0x58(%rbp),%ecx
  40499e:	29 c8                	sub    %ecx,%eax
  4049a0:	0f 9c c2             	setl   %dl
  4049a3:	40 b6 01             	mov    $0x1,%sil
  4049a6:	40 84 f6             	test   %sil,%sil
  4049a9:	89 85 ac fe ff ff    	mov    %eax,-0x154(%rbp)
  4049af:	88 95 ab fe ff ff    	mov    %dl,-0x155(%rbp)
  4049b5:	0f 85 0a 00 00 00    	jne    4049c5 <bpnn_read+0x505>
  4049bb:	e9 00 00 00 00       	jmpq   4049c0 <bpnn_read+0x500>
  4049c0:	e8 9b 0b 00 00       	callq  405560 <check_flag>
  4049c5:	8a 85 ab fe ff ff    	mov    -0x155(%rbp),%al
  4049cb:	a8 01                	test   $0x1,%al
  4049cd:	0f 85 05 00 00 00    	jne    4049d8 <bpnn_read+0x518>
  4049d3:	e9 ee 00 00 00       	jmpq   404ac6 <bpnn_read+0x606>
  4049d8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
  4049dc:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
  4049e0:	48 89 c2             	mov    %rax,%rdx
  4049e3:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  4049ea:	48 89 ce             	mov    %rcx,%rsi
  4049ed:	48 81 c6 01 00 00 00 	add    $0x1,%rsi
  4049f4:	48 39 f2             	cmp    %rsi,%rdx
  4049f7:	48 89 85 a0 fe ff ff 	mov    %rax,-0x160(%rbp)
  4049fe:	48 89 8d 98 fe ff ff 	mov    %rcx,-0x168(%rbp)
  404a05:	48 89 95 90 fe ff ff 	mov    %rdx,-0x170(%rbp)
  404a0c:	0f 84 05 00 00 00    	je     404a17 <bpnn_read+0x557>
  404a12:	e8 49 0b 00 00       	callq  405560 <check_flag>
  404a17:	48 8b 85 90 fe ff ff 	mov    -0x170(%rbp),%rax
  404a1e:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  404a22:	48 8b 8d a0 fe ff ff 	mov    -0x160(%rbp),%rcx
  404a29:	8a 11                	mov    (%rcx),%dl
  404a2b:	48 8b b5 98 fe ff ff 	mov    -0x168(%rbp),%rsi
  404a32:	3a 16                	cmp    (%rsi),%dl
  404a34:	88 95 8f fe ff ff    	mov    %dl,-0x171(%rbp)
  404a3a:	0f 84 05 00 00 00    	je     404a45 <bpnn_read+0x585>
  404a40:	e8 1b 0b 00 00       	callq  405560 <check_flag>
  404a45:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  404a49:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
  404a4d:	48 89 c2             	mov    %rax,%rdx
  404a50:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  404a57:	48 81 c1 01 00 00 00 	add    $0x1,%rcx
  404a5e:	48 39 ca             	cmp    %rcx,%rdx
  404a61:	48 89 85 80 fe ff ff 	mov    %rax,-0x180(%rbp)
  404a68:	48 89 95 78 fe ff ff 	mov    %rdx,-0x188(%rbp)
  404a6f:	0f 84 05 00 00 00    	je     404a7a <bpnn_read+0x5ba>
  404a75:	e8 e6 0a 00 00       	callq  405560 <check_flag>
  404a7a:	48 8b 85 78 fe ff ff 	mov    -0x188(%rbp),%rax
  404a81:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  404a85:	48 8b 8d 80 fe ff ff 	mov    -0x180(%rbp),%rcx
  404a8c:	8a 95 8f fe ff ff    	mov    -0x171(%rbp),%dl
  404a92:	88 11                	mov    %dl,(%rcx)
  404a94:	8b 45 ac             	mov    -0x54(%rbp),%eax
  404a97:	8b 4d ac             	mov    -0x54(%rbp),%ecx
  404a9a:	05 01 00 00 00       	add    $0x1,%eax
  404a9f:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404aa5:	39 c8                	cmp    %ecx,%eax
  404aa7:	89 85 74 fe ff ff    	mov    %eax,-0x18c(%rbp)
  404aad:	0f 84 05 00 00 00    	je     404ab8 <bpnn_read+0x5f8>
  404ab3:	e8 a8 0a 00 00       	callq  405560 <check_flag>
  404ab8:	8b 85 74 fe ff ff    	mov    -0x18c(%rbp),%eax
  404abe:	89 45 ac             	mov    %eax,-0x54(%rbp)
  404ac1:	e9 d2 fe ff ff       	jmpq   404998 <bpnn_read+0x4d8>
  404ac6:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  404ac9:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  404acc:	48 63 d0             	movslq %eax,%rdx
  404acf:	48 63 f1             	movslq %ecx,%rsi
  404ad2:	48 81 c2 04 00 00 00 	add    $0x4,%rdx
  404ad9:	48 81 c6 04 00 00 00 	add    $0x4,%rsi
  404ae0:	89 d0                	mov    %edx,%eax
  404ae2:	89 f1                	mov    %esi,%ecx
  404ae4:	39 c8                	cmp    %ecx,%eax
  404ae6:	89 85 70 fe ff ff    	mov    %eax,-0x190(%rbp)
  404aec:	0f 84 05 00 00 00    	je     404af7 <bpnn_read+0x637>
  404af2:	e8 69 0a 00 00       	callq  405560 <check_flag>
  404af7:	8b 85 70 fe ff ff    	mov    -0x190(%rbp),%eax
  404afd:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  404b00:	8b 45 c8             	mov    -0x38(%rbp),%eax
  404b03:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  404b06:	05 01 00 00 00       	add    $0x1,%eax
  404b0b:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404b11:	39 c8                	cmp    %ecx,%eax
  404b13:	89 85 6c fe ff ff    	mov    %eax,-0x194(%rbp)
  404b19:	0f 84 05 00 00 00    	je     404b24 <bpnn_read+0x664>
  404b1f:	e8 3c 0a 00 00       	callq  405560 <check_flag>
  404b24:	8b 85 6c fe ff ff    	mov    -0x194(%rbp),%eax
  404b2a:	89 45 c8             	mov    %eax,-0x38(%rbp)
  404b2d:	e9 80 fd ff ff       	jmpq   4048b2 <bpnn_read+0x3f2>
  404b32:	e9 00 00 00 00       	jmpq   404b37 <bpnn_read+0x677>
  404b37:	8b 45 cc             	mov    -0x34(%rbp),%eax
  404b3a:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  404b3d:	05 01 00 00 00       	add    $0x1,%eax
  404b42:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404b48:	39 c8                	cmp    %ecx,%eax
  404b4a:	89 85 68 fe ff ff    	mov    %eax,-0x198(%rbp)
  404b50:	0f 84 05 00 00 00    	je     404b5b <bpnn_read+0x69b>
  404b56:	e8 05 0a 00 00       	callq  405560 <check_flag>
  404b5b:	8b 85 68 fe ff ff    	mov    -0x198(%rbp),%eax
  404b61:	89 45 cc             	mov    %eax,-0x34(%rbp)
  404b64:	e9 02 fd ff ff       	jmpq   40486b <bpnn_read+0x3ab>
  404b69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  404b6d:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  404b71:	48 89 85 60 fe ff ff 	mov    %rax,-0x1a0(%rbp)
  404b78:	0f 84 05 00 00 00    	je     404b83 <bpnn_read+0x6c3>
  404b7e:	e8 dd 09 00 00       	callq  405560 <check_flag>
  404b83:	48 8b bd 60 fe ff ff 	mov    -0x1a0(%rbp),%rdi
  404b8a:	e8 51 bd ff ff       	callq  4008e0 <free@plt>
  404b8f:	48 8d 3c 25 6e 57 40 	lea    0x40576e,%rdi
  404b96:	00 
  404b97:	b0 00                	mov    $0x0,%al
  404b99:	e8 c2 bc ff ff       	callq  400860 <printf@plt>
  404b9e:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%rbp)
  404ba5:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  404ba8:	8b 55 d4             	mov    -0x2c(%rbp),%edx
  404bab:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404bb1:	81 c2 01 00 00 00    	add    $0x1,%edx
  404bb7:	8b 75 d0             	mov    -0x30(%rbp),%esi
  404bba:	44 8b 45 d0          	mov    -0x30(%rbp),%r8d
  404bbe:	81 c6 01 00 00 00    	add    $0x1,%esi
  404bc4:	41 81 c0 01 00 00 00 	add    $0x1,%r8d
  404bcb:	0f af ce             	imul   %esi,%ecx
  404bce:	41 0f af d0          	imul   %r8d,%edx
  404bd2:	48 63 f9             	movslq %ecx,%rdi
  404bd5:	4c 63 ca             	movslq %edx,%r9
  404bd8:	48 c1 e7 02          	shl    $0x2,%rdi
  404bdc:	49 c1 e1 02          	shl    $0x2,%r9
  404be0:	89 f9                	mov    %edi,%ecx
  404be2:	44 89 ca             	mov    %r9d,%edx
  404be5:	89 c9                	mov    %ecx,%ecx
  404be7:	89 cf                	mov    %ecx,%edi
  404be9:	89 d1                	mov    %edx,%ecx
  404beb:	41 89 c9             	mov    %ecx,%r9d
  404bee:	4c 39 cf             	cmp    %r9,%rdi
  404bf1:	89 85 5c fe ff ff    	mov    %eax,-0x1a4(%rbp)
  404bf7:	48 89 bd 50 fe ff ff 	mov    %rdi,-0x1b0(%rbp)
  404bfe:	0f 84 05 00 00 00    	je     404c09 <bpnn_read+0x749>
  404c04:	e8 57 09 00 00       	callq  405560 <check_flag>
  404c09:	48 8b bd 50 fe ff ff 	mov    -0x1b0(%rbp),%rdi
  404c10:	e8 9b bc ff ff       	callq  4008b0 <malloc@plt>
  404c15:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  404c19:	8b 4d dc             	mov    -0x24(%rbp),%ecx
  404c1c:	3b 4d dc             	cmp    -0x24(%rbp),%ecx
  404c1f:	89 8d 4c fe ff ff    	mov    %ecx,-0x1b4(%rbp)
  404c25:	0f 84 05 00 00 00    	je     404c30 <bpnn_read+0x770>
  404c2b:	e8 30 09 00 00       	callq  405560 <check_flag>
  404c30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  404c34:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  404c38:	48 89 85 40 fe ff ff 	mov    %rax,-0x1c0(%rbp)
  404c3f:	0f 84 05 00 00 00    	je     404c4a <bpnn_read+0x78a>
  404c45:	e8 16 09 00 00       	callq  405560 <check_flag>
  404c4a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  404c4d:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  404c50:	05 01 00 00 00       	add    $0x1,%eax
  404c55:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404c5b:	8b 55 d0             	mov    -0x30(%rbp),%edx
  404c5e:	8b 75 d0             	mov    -0x30(%rbp),%esi
  404c61:	81 c2 01 00 00 00    	add    $0x1,%edx
  404c67:	81 c6 01 00 00 00    	add    $0x1,%esi
  404c6d:	0f af c2             	imul   %edx,%eax
  404c70:	0f af ce             	imul   %esi,%ecx
  404c73:	48 63 f8             	movslq %eax,%rdi
  404c76:	4c 63 c1             	movslq %ecx,%r8
  404c79:	48 c1 e7 02          	shl    $0x2,%rdi
  404c7d:	49 c1 e0 02          	shl    $0x2,%r8
  404c81:	4c 39 c7             	cmp    %r8,%rdi
  404c84:	48 89 bd 38 fe ff ff 	mov    %rdi,-0x1c8(%rbp)
  404c8b:	0f 84 05 00 00 00    	je     404c96 <bpnn_read+0x7d6>
  404c91:	e8 ca 08 00 00       	callq  405560 <check_flag>
  404c96:	8b bd 4c fe ff ff    	mov    -0x1b4(%rbp),%edi
  404c9c:	48 8b b5 40 fe ff ff 	mov    -0x1c0(%rbp),%rsi
  404ca3:	48 8b 95 38 fe ff ff 	mov    -0x1c8(%rbp),%rdx
  404caa:	e8 f1 bb ff ff       	callq  4008a0 <read@plt>
  404caf:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
  404cb6:	48 89 85 30 fe ff ff 	mov    %rax,-0x1d0(%rbp)
  404cbd:	8b 45 cc             	mov    -0x34(%rbp),%eax
  404cc0:	8b 4d d4             	mov    -0x2c(%rbp),%ecx
  404cc3:	29 c8                	sub    %ecx,%eax
  404cc5:	0f 9e c2             	setle  %dl
  404cc8:	40 b6 01             	mov    $0x1,%sil
  404ccb:	40 84 f6             	test   %sil,%sil
  404cce:	89 85 2c fe ff ff    	mov    %eax,-0x1d4(%rbp)
  404cd4:	88 95 2b fe ff ff    	mov    %dl,-0x1d5(%rbp)
  404cda:	0f 85 0a 00 00 00    	jne    404cea <bpnn_read+0x82a>
  404ce0:	e9 00 00 00 00       	jmpq   404ce5 <bpnn_read+0x825>
  404ce5:	e8 76 08 00 00       	callq  405560 <check_flag>
  404cea:	8a 85 2b fe ff ff    	mov    -0x1d5(%rbp),%al
  404cf0:	a8 01                	test   $0x1,%al
  404cf2:	0f 85 05 00 00 00    	jne    404cfd <bpnn_read+0x83d>
  404cf8:	e9 be 02 00 00       	jmpq   404fbb <bpnn_read+0xafb>
  404cfd:	c7 45 c8 00 00 00 00 	movl   $0x0,-0x38(%rbp)
  404d04:	8b 45 c8             	mov    -0x38(%rbp),%eax
  404d07:	8b 4d d0             	mov    -0x30(%rbp),%ecx
  404d0a:	29 c8                	sub    %ecx,%eax
  404d0c:	0f 9e c2             	setle  %dl
  404d0f:	40 b6 01             	mov    $0x1,%sil
  404d12:	40 84 f6             	test   %sil,%sil
  404d15:	89 85 24 fe ff ff    	mov    %eax,-0x1dc(%rbp)
  404d1b:	88 95 23 fe ff ff    	mov    %dl,-0x1dd(%rbp)
  404d21:	0f 85 0a 00 00 00    	jne    404d31 <bpnn_read+0x871>
  404d27:	e9 00 00 00 00       	jmpq   404d2c <bpnn_read+0x86c>
  404d2c:	e8 2f 08 00 00       	callq  405560 <check_flag>
  404d31:	8a 85 23 fe ff ff    	mov    -0x1dd(%rbp),%al
  404d37:	a8 01                	test   $0x1,%al
  404d39:	0f 85 05 00 00 00    	jne    404d44 <bpnn_read+0x884>
  404d3f:	e9 40 02 00 00       	jmpq   404f84 <bpnn_read+0xac4>
  404d44:	8b 45 c8             	mov    -0x38(%rbp),%eax
  404d47:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  404d4a:	48 63 d0             	movslq %eax,%rdx
  404d4d:	48 63 f1             	movslq %ecx,%rsi
  404d50:	8b 45 cc             	mov    -0x34(%rbp),%eax
  404d53:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  404d56:	48 63 f8             	movslq %eax,%rdi
  404d59:	4c 63 c1             	movslq %ecx,%r8
  404d5c:	4c 8b 4d e0          	mov    -0x20(%rbp),%r9
  404d60:	4c 8b 55 e0          	mov    -0x20(%rbp),%r10
  404d64:	4d 8b 49 48          	mov    0x48(%r9),%r9
  404d68:	4d 8b 52 48          	mov    0x48(%r10),%r10
  404d6c:	49 8b 3c f9          	mov    (%r9,%rdi,8),%rdi
  404d70:	4f 8b 04 c2          	mov    (%r10,%r8,8),%r8
  404d74:	48 c1 e2 02          	shl    $0x2,%rdx
  404d78:	48 01 d7             	add    %rdx,%rdi
  404d7b:	48 c1 e6 02          	shl    $0x2,%rsi
  404d7f:	49 01 f0             	add    %rsi,%r8
  404d82:	4c 39 c7             	cmp    %r8,%rdi
  404d85:	48 89 bd 18 fe ff ff 	mov    %rdi,-0x1e8(%rbp)
  404d8c:	0f 84 05 00 00 00    	je     404d97 <bpnn_read+0x8d7>
  404d92:	e8 c9 07 00 00       	callq  405560 <check_flag>
  404d97:	48 8b 85 18 fe ff ff 	mov    -0x1e8(%rbp),%rax
  404d9e:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  404da2:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  404da5:	8b 55 c4             	mov    -0x3c(%rbp),%edx
  404da8:	48 63 f1             	movslq %ecx,%rsi
  404dab:	48 63 fa             	movslq %edx,%rdi
  404dae:	4c 8b 45 e8          	mov    -0x18(%rbp),%r8
  404db2:	4c 8b 4d e8          	mov    -0x18(%rbp),%r9
  404db6:	49 01 f0             	add    %rsi,%r8
  404db9:	49 01 f9             	add    %rdi,%r9
  404dbc:	4d 39 c8             	cmp    %r9,%r8
  404dbf:	4c 89 85 10 fe ff ff 	mov    %r8,-0x1f0(%rbp)
  404dc6:	0f 84 05 00 00 00    	je     404dd1 <bpnn_read+0x911>
  404dcc:	e8 8f 07 00 00       	callq  405560 <check_flag>
  404dd1:	48 8b 85 10 fe ff ff 	mov    -0x1f0(%rbp),%rax
  404dd8:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  404ddc:	c7 45 90 04 00 00 00 	movl   $0x4,-0x70(%rbp)
  404de3:	c7 45 94 00 00 00 00 	movl   $0x0,-0x6c(%rbp)
  404dea:	8b 45 94             	mov    -0x6c(%rbp),%eax
  404ded:	8b 4d 90             	mov    -0x70(%rbp),%ecx
  404df0:	29 c8                	sub    %ecx,%eax
  404df2:	0f 9c c2             	setl   %dl
  404df5:	40 b6 01             	mov    $0x1,%sil
  404df8:	40 84 f6             	test   %sil,%sil
  404dfb:	89 85 0c fe ff ff    	mov    %eax,-0x1f4(%rbp)
  404e01:	88 95 0b fe ff ff    	mov    %dl,-0x1f5(%rbp)
  404e07:	0f 85 0a 00 00 00    	jne    404e17 <bpnn_read+0x957>
  404e0d:	e9 00 00 00 00       	jmpq   404e12 <bpnn_read+0x952>
  404e12:	e8 49 07 00 00       	callq  405560 <check_flag>
  404e17:	8a 85 0b fe ff ff    	mov    -0x1f5(%rbp),%al
  404e1d:	a8 01                	test   $0x1,%al
  404e1f:	0f 85 05 00 00 00    	jne    404e2a <bpnn_read+0x96a>
  404e25:	e9 ee 00 00 00       	jmpq   404f18 <bpnn_read+0xa58>
  404e2a:	48 8b 45 98          	mov    -0x68(%rbp),%rax
  404e2e:	48 8b 4d 98          	mov    -0x68(%rbp),%rcx
  404e32:	48 89 c2             	mov    %rax,%rdx
  404e35:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  404e3c:	48 89 ce             	mov    %rcx,%rsi
  404e3f:	48 81 c6 01 00 00 00 	add    $0x1,%rsi
  404e46:	48 39 f2             	cmp    %rsi,%rdx
  404e49:	48 89 85 00 fe ff ff 	mov    %rax,-0x200(%rbp)
  404e50:	48 89 8d f8 fd ff ff 	mov    %rcx,-0x208(%rbp)
  404e57:	48 89 95 f0 fd ff ff 	mov    %rdx,-0x210(%rbp)
  404e5e:	0f 84 05 00 00 00    	je     404e69 <bpnn_read+0x9a9>
  404e64:	e8 f7 06 00 00       	callq  405560 <check_flag>
  404e69:	48 8b 85 f0 fd ff ff 	mov    -0x210(%rbp),%rax
  404e70:	48 89 45 98          	mov    %rax,-0x68(%rbp)
  404e74:	48 8b 8d 00 fe ff ff 	mov    -0x200(%rbp),%rcx
  404e7b:	8a 11                	mov    (%rcx),%dl
  404e7d:	48 8b b5 f8 fd ff ff 	mov    -0x208(%rbp),%rsi
  404e84:	3a 16                	cmp    (%rsi),%dl
  404e86:	88 95 ef fd ff ff    	mov    %dl,-0x211(%rbp)
  404e8c:	0f 84 05 00 00 00    	je     404e97 <bpnn_read+0x9d7>
  404e92:	e8 c9 06 00 00       	callq  405560 <check_flag>
  404e97:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
  404e9b:	48 8b 4d a0          	mov    -0x60(%rbp),%rcx
  404e9f:	48 89 c2             	mov    %rax,%rdx
  404ea2:	48 81 c2 01 00 00 00 	add    $0x1,%rdx
  404ea9:	48 81 c1 01 00 00 00 	add    $0x1,%rcx
  404eb0:	48 39 ca             	cmp    %rcx,%rdx
  404eb3:	48 89 85 e0 fd ff ff 	mov    %rax,-0x220(%rbp)
  404eba:	48 89 95 d8 fd ff ff 	mov    %rdx,-0x228(%rbp)
  404ec1:	0f 84 05 00 00 00    	je     404ecc <bpnn_read+0xa0c>
  404ec7:	e8 94 06 00 00       	callq  405560 <check_flag>
  404ecc:	48 8b 85 d8 fd ff ff 	mov    -0x228(%rbp),%rax
  404ed3:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
  404ed7:	48 8b 8d e0 fd ff ff 	mov    -0x220(%rbp),%rcx
  404ede:	8a 95 ef fd ff ff    	mov    -0x211(%rbp),%dl
  404ee4:	88 11                	mov    %dl,(%rcx)
  404ee6:	8b 45 94             	mov    -0x6c(%rbp),%eax
  404ee9:	8b 4d 94             	mov    -0x6c(%rbp),%ecx
  404eec:	05 01 00 00 00       	add    $0x1,%eax
  404ef1:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404ef7:	39 c8                	cmp    %ecx,%eax
  404ef9:	89 85 d4 fd ff ff    	mov    %eax,-0x22c(%rbp)
  404eff:	0f 84 05 00 00 00    	je     404f0a <bpnn_read+0xa4a>
  404f05:	e8 56 06 00 00       	callq  405560 <check_flag>
  404f0a:	8b 85 d4 fd ff ff    	mov    -0x22c(%rbp),%eax
  404f10:	89 45 94             	mov    %eax,-0x6c(%rbp)
  404f13:	e9 d2 fe ff ff       	jmpq   404dea <bpnn_read+0x92a>
  404f18:	8b 45 c4             	mov    -0x3c(%rbp),%eax
  404f1b:	8b 4d c4             	mov    -0x3c(%rbp),%ecx
  404f1e:	48 63 d0             	movslq %eax,%rdx
  404f21:	48 63 f1             	movslq %ecx,%rsi
  404f24:	48 81 c2 04 00 00 00 	add    $0x4,%rdx
  404f2b:	48 81 c6 04 00 00 00 	add    $0x4,%rsi
  404f32:	89 d0                	mov    %edx,%eax
  404f34:	89 f1                	mov    %esi,%ecx
  404f36:	39 c8                	cmp    %ecx,%eax
  404f38:	89 85 d0 fd ff ff    	mov    %eax,-0x230(%rbp)
  404f3e:	0f 84 05 00 00 00    	je     404f49 <bpnn_read+0xa89>
  404f44:	e8 17 06 00 00       	callq  405560 <check_flag>
  404f49:	8b 85 d0 fd ff ff    	mov    -0x230(%rbp),%eax
  404f4f:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  404f52:	8b 45 c8             	mov    -0x38(%rbp),%eax
  404f55:	8b 4d c8             	mov    -0x38(%rbp),%ecx
  404f58:	05 01 00 00 00       	add    $0x1,%eax
  404f5d:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404f63:	39 c8                	cmp    %ecx,%eax
  404f65:	89 85 cc fd ff ff    	mov    %eax,-0x234(%rbp)
  404f6b:	0f 84 05 00 00 00    	je     404f76 <bpnn_read+0xab6>
  404f71:	e8 ea 05 00 00       	callq  405560 <check_flag>
  404f76:	8b 85 cc fd ff ff    	mov    -0x234(%rbp),%eax
  404f7c:	89 45 c8             	mov    %eax,-0x38(%rbp)
  404f7f:	e9 80 fd ff ff       	jmpq   404d04 <bpnn_read+0x844>
  404f84:	e9 00 00 00 00       	jmpq   404f89 <bpnn_read+0xac9>
  404f89:	8b 45 cc             	mov    -0x34(%rbp),%eax
  404f8c:	8b 4d cc             	mov    -0x34(%rbp),%ecx
  404f8f:	05 01 00 00 00       	add    $0x1,%eax
  404f94:	81 c1 01 00 00 00    	add    $0x1,%ecx
  404f9a:	39 c8                	cmp    %ecx,%eax
  404f9c:	89 85 c8 fd ff ff    	mov    %eax,-0x238(%rbp)
  404fa2:	0f 84 05 00 00 00    	je     404fad <bpnn_read+0xaed>
  404fa8:	e8 b3 05 00 00       	callq  405560 <check_flag>
  404fad:	8b 85 c8 fd ff ff    	mov    -0x238(%rbp),%eax
  404fb3:	89 45 cc             	mov    %eax,-0x34(%rbp)
  404fb6:	e9 02 fd ff ff       	jmpq   404cbd <bpnn_read+0x7fd>
  404fbb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  404fbf:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  404fc3:	48 89 85 c0 fd ff ff 	mov    %rax,-0x240(%rbp)
  404fca:	0f 84 05 00 00 00    	je     404fd5 <bpnn_read+0xb15>
  404fd0:	e8 8b 05 00 00       	callq  405560 <check_flag>
  404fd5:	48 8b bd c0 fd ff ff 	mov    -0x240(%rbp),%rdi
  404fdc:	e8 ff b8 ff ff       	callq  4008e0 <free@plt>
  404fe1:	8b 45 dc             	mov    -0x24(%rbp),%eax
  404fe4:	3b 45 dc             	cmp    -0x24(%rbp),%eax
  404fe7:	89 85 bc fd ff ff    	mov    %eax,-0x244(%rbp)
  404fed:	0f 84 05 00 00 00    	je     404ff8 <bpnn_read+0xb38>
  404ff3:	e8 68 05 00 00       	callq  405560 <check_flag>
  404ff8:	8b bd bc fd ff ff    	mov    -0x244(%rbp),%edi
  404ffe:	e8 6d b8 ff ff       	callq  400870 <close@plt>
  405003:	48 8d 3c 25 8d 57 40 	lea    0x40578d,%rdi
  40500a:	00 
  40500b:	89 85 b8 fd ff ff    	mov    %eax,-0x248(%rbp)
  405011:	b0 00                	mov    $0x0,%al
  405013:	e8 48 b8 ff ff       	callq  400860 <printf@plt>
  405018:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40501c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
  405020:	48 8b 7f 50          	mov    0x50(%rdi),%rdi
  405024:	48 3b 79 50          	cmp    0x50(%rcx),%rdi
  405028:	89 85 b4 fd ff ff    	mov    %eax,-0x24c(%rbp)
  40502e:	48 89 bd a8 fd ff ff 	mov    %rdi,-0x258(%rbp)
  405035:	0f 84 05 00 00 00    	je     405040 <bpnn_read+0xb80>
  40503b:	e8 20 05 00 00       	callq  405560 <check_flag>
  405040:	8b 45 d8             	mov    -0x28(%rbp),%eax
  405043:	3b 45 d8             	cmp    -0x28(%rbp),%eax
  405046:	89 85 a4 fd ff ff    	mov    %eax,-0x25c(%rbp)
  40504c:	0f 84 05 00 00 00    	je     405057 <bpnn_read+0xb97>
  405052:	e8 09 05 00 00       	callq  405560 <check_flag>
  405057:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40505a:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  40505d:	89 85 a0 fd ff ff    	mov    %eax,-0x260(%rbp)
  405063:	0f 84 05 00 00 00    	je     40506e <bpnn_read+0xbae>
  405069:	e8 f2 04 00 00       	callq  405560 <check_flag>
  40506e:	48 8b bd a8 fd ff ff 	mov    -0x258(%rbp),%rdi
  405075:	8b b5 a4 fd ff ff    	mov    -0x25c(%rbp),%esi
  40507b:	8b 95 a0 fd ff ff    	mov    -0x260(%rbp),%edx
  405081:	e8 0a c6 ff ff       	callq  401690 <bpnn_zero_weights>
  405086:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  40508a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40508e:	48 8b 7f 58          	mov    0x58(%rdi),%rdi
  405092:	48 3b 78 58          	cmp    0x58(%rax),%rdi
  405096:	48 89 bd 98 fd ff ff 	mov    %rdi,-0x268(%rbp)
  40509d:	0f 84 05 00 00 00    	je     4050a8 <bpnn_read+0xbe8>
  4050a3:	e8 b8 04 00 00       	callq  405560 <check_flag>
  4050a8:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  4050ab:	3b 45 d4             	cmp    -0x2c(%rbp),%eax
  4050ae:	89 85 94 fd ff ff    	mov    %eax,-0x26c(%rbp)
  4050b4:	0f 84 05 00 00 00    	je     4050bf <bpnn_read+0xbff>
  4050ba:	e8 a1 04 00 00       	callq  405560 <check_flag>
  4050bf:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4050c2:	3b 45 d0             	cmp    -0x30(%rbp),%eax
  4050c5:	89 85 90 fd ff ff    	mov    %eax,-0x270(%rbp)
  4050cb:	0f 84 05 00 00 00    	je     4050d6 <bpnn_read+0xc16>
  4050d1:	e8 8a 04 00 00       	callq  405560 <check_flag>
  4050d6:	48 8b bd 98 fd ff ff 	mov    -0x268(%rbp),%rdi
  4050dd:	8b b5 94 fd ff ff    	mov    -0x26c(%rbp),%esi
  4050e3:	8b 95 90 fd ff ff    	mov    -0x270(%rbp),%edx
  4050e9:	e8 a2 c5 ff ff       	callq  401690 <bpnn_zero_weights>
  4050ee:	48 8b 7d e0          	mov    -0x20(%rbp),%rdi
  4050f2:	48 3b 7d e0          	cmp    -0x20(%rbp),%rdi
  4050f6:	48 89 bd 88 fd ff ff 	mov    %rdi,-0x278(%rbp)
  4050fd:	0f 84 05 00 00 00    	je     405108 <bpnn_read+0xc48>
  405103:	e8 58 04 00 00       	callq  405560 <check_flag>
  405108:	48 8b 85 88 fd ff ff 	mov    -0x278(%rbp),%rax
  40510f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  405113:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  405117:	48 3b 45 f8          	cmp    -0x8(%rbp),%rax
  40511b:	48 89 85 80 fd ff ff 	mov    %rax,-0x280(%rbp)
  405122:	0f 84 05 00 00 00    	je     40512d <bpnn_read+0xc6d>
  405128:	e8 33 04 00 00       	callq  405560 <check_flag>
  40512d:	48 8b 85 80 fd ff ff 	mov    -0x280(%rbp),%rax
  405134:	48 81 c4 80 02 00 00 	add    $0x280,%rsp
  40513b:	5d                   	pop    %rbp
  40513c:	c3                   	retq   
  40513d:	0f 1f 00             	nopl   (%rax)

0000000000405140 <backprop_face>:
  405140:	55                   	push   %rbp
  405141:	48 89 e5             	mov    %rsp,%rbp
  405144:	48 83 ec 60          	sub    $0x60,%rsp
  405148:	8b 04 25 ec 62 60 00 	mov    0x6062ec,%eax
  40514f:	3b 04 25 ec 62 60 00 	cmp    0x6062ec,%eax
  405156:	89 45 e8             	mov    %eax,-0x18(%rbp)
  405159:	0f 84 05 00 00 00    	je     405164 <backprop_face+0x24>
  40515f:	e8 fc 03 00 00       	callq  405560 <check_flag>
  405164:	be 10 00 00 00       	mov    $0x10,%esi
  405169:	ba 01 00 00 00       	mov    $0x1,%edx
  40516e:	8b 7d e8             	mov    -0x18(%rbp),%edi
  405171:	b0 00                	mov    $0x0,%al
  405173:	e8 a8 d1 ff ff       	callq  402320 <bpnn_create>
  405178:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40517c:	8b 14 25 ec 62 60 00 	mov    0x6062ec,%edx
  405183:	3b 14 25 ec 62 60 00 	cmp    0x6062ec,%edx
  40518a:	89 55 e4             	mov    %edx,-0x1c(%rbp)
  40518d:	0f 84 05 00 00 00    	je     405198 <backprop_face+0x58>
  405193:	e8 c8 03 00 00       	callq  405560 <check_flag>
  405198:	48 8d 3c 25 93 57 40 	lea    0x405793,%rdi
  40519f:	00 
  4051a0:	8b 75 e4             	mov    -0x1c(%rbp),%esi
  4051a3:	b0 00                	mov    $0x0,%al
  4051a5:	e8 b6 b6 ff ff       	callq  400860 <printf@plt>
  4051aa:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4051ae:	48 3b 7d f8          	cmp    -0x8(%rbp),%rdi
  4051b2:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4051b5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4051b9:	0f 84 05 00 00 00    	je     4051c4 <backprop_face+0x84>
  4051bf:	e8 9c 03 00 00       	callq  405560 <check_flag>
  4051c4:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  4051c8:	e8 23 02 00 00       	callq  4053f0 <load>
  4051cd:	48 8d 3c 25 aa 57 40 	lea    0x4057aa,%rdi
  4051d4:	00 
  4051d5:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4051d8:	b0 00                	mov    $0x0,%al
  4051da:	e8 81 b6 ff ff       	callq  400860 <printf@plt>
  4051df:	48 8b 7d f8          	mov    -0x8(%rbp),%rdi
  4051e3:	48 3b 7d f8          	cmp    -0x8(%rbp),%rdi
  4051e7:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4051ea:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  4051ee:	0f 84 05 00 00 00    	je     4051f9 <backprop_face+0xb9>
  4051f4:	e8 67 03 00 00       	callq  405560 <check_flag>
  4051f9:	48 8d 75 f0          	lea    -0x10(%rbp),%rsi
  4051fd:	48 8d 55 ec          	lea    -0x14(%rbp),%rdx
  405201:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  405205:	e8 36 b9 ff ff       	callq  400b40 <bpnn_train_kernel>
  40520a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40520e:	48 3b 55 f8          	cmp    -0x8(%rbp),%rdx
  405212:	48 89 55 c0          	mov    %rdx,-0x40(%rbp)
  405216:	0f 84 05 00 00 00    	je     405221 <backprop_face+0xe1>
  40521c:	e8 3f 03 00 00       	callq  405560 <check_flag>
  405221:	48 8d 34 25 c4 57 40 	lea    0x4057c4,%rsi
  405228:	00 
  405229:	48 8b 7d c0          	mov    -0x40(%rbp),%rdi
  40522d:	b0 00                	mov    $0x0,%al
  40522f:	e8 cc e6 ff ff       	callq  403900 <bpnn_save>
  405234:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  405238:	48 3b 75 f8          	cmp    -0x8(%rbp),%rsi
  40523c:	48 89 75 b8          	mov    %rsi,-0x48(%rbp)
  405240:	0f 84 05 00 00 00    	je     40524b <backprop_face+0x10b>
  405246:	e8 15 03 00 00       	callq  405560 <check_flag>
  40524b:	48 8d 3c 25 cf 57 40 	lea    0x4057cf,%rdi
  405252:	00 
  405253:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  405257:	48 89 7d b0          	mov    %rdi,-0x50(%rbp)
  40525b:	48 89 c7             	mov    %rax,%rdi
  40525e:	b0 00                	mov    $0x0,%al
  405260:	e8 8b cc ff ff       	callq  401ef0 <bpnn_free>
  405265:	48 8b 7d b0          	mov    -0x50(%rbp),%rdi
  405269:	b0 00                	mov    $0x0,%al
  40526b:	e8 f0 b5 ff ff       	callq  400860 <printf@plt>
  405270:	89 45 ac             	mov    %eax,-0x54(%rbp)
  405273:	48 83 c4 60          	add    $0x60,%rsp
  405277:	5d                   	pop    %rbp
  405278:	c3                   	retq   
  405279:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000405280 <setup>:
  405280:	55                   	push   %rbp
  405281:	48 89 e5             	mov    %rsp,%rbp
  405284:	48 83 ec 50          	sub    $0x50,%rsp
  405288:	89 7d f8             	mov    %edi,-0x8(%rbp)
  40528b:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  40528f:	8b 7d f8             	mov    -0x8(%rbp),%edi
  405292:	83 ef 02             	sub    $0x2,%edi
  405295:	0f 95 c0             	setne  %al
  405298:	b1 01                	mov    $0x1,%cl
  40529a:	84 c9                	test   %cl,%cl
  40529c:	89 7d e8             	mov    %edi,-0x18(%rbp)
  40529f:	88 45 e7             	mov    %al,-0x19(%rbp)
  4052a2:	0f 85 0a 00 00 00    	jne    4052b2 <setup+0x32>
  4052a8:	e9 00 00 00 00       	jmpq   4052ad <setup+0x2d>
  4052ad:	e8 ae 02 00 00       	callq  405560 <check_flag>
  4052b2:	8a 45 e7             	mov    -0x19(%rbp),%al
  4052b5:	a8 01                	test   $0x1,%al
  4052b7:	0f 85 05 00 00 00    	jne    4052c2 <setup+0x42>
  4052bd:	e9 3f 00 00 00       	jmpq   405301 <setup+0x81>
  4052c2:	48 8b 04 25 e0 62 60 	mov    0x6062e0,%rax
  4052c9:	00 
  4052ca:	48 3b 04 25 e0 62 60 	cmp    0x6062e0,%rax
  4052d1:	00 
  4052d2:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  4052d6:	0f 84 05 00 00 00    	je     4052e1 <setup+0x61>
  4052dc:	e8 7f 02 00 00       	callq  405560 <check_flag>
  4052e1:	48 8d 34 25 de 57 40 	lea    0x4057de,%rsi
  4052e8:	00 
  4052e9:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
  4052ed:	b0 00                	mov    $0x0,%al
  4052ef:	e8 3c b6 ff ff       	callq  400930 <fprintf@plt>
  4052f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4052f9:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  4052fc:	e8 7f b5 ff ff       	callq  400880 <exit@plt>
  405301:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  405305:	48 8b 4d f0          	mov    -0x10(%rbp),%rcx
  405309:	48 8b 40 08          	mov    0x8(%rax),%rax
  40530d:	48 3b 41 08          	cmp    0x8(%rcx),%rax
  405311:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  405315:	0f 84 05 00 00 00    	je     405320 <setup+0xa0>
  40531b:	e8 40 02 00 00       	callq  405560 <check_flag>
  405320:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
  405324:	e8 c7 b5 ff ff       	callq  4008f0 <atoi@plt>
  405329:	89 05 bd 0f 20 00    	mov    %eax,0x200fbd(%rip)        # 6062ec <layer_size>
  40532f:	89 c1                	mov    %eax,%ecx
  405331:	c1 f9 1f             	sar    $0x1f,%ecx
  405334:	c1 e9 1c             	shr    $0x1c,%ecx
  405337:	89 c2                	mov    %eax,%edx
  405339:	01 ca                	add    %ecx,%edx
  40533b:	83 e2 f0             	and    $0xfffffff0,%edx
  40533e:	29 d0                	sub    %edx,%eax
  405340:	40 0f 95 c6          	setne  %sil
  405344:	41 b0 01             	mov    $0x1,%r8b
  405347:	45 84 c0             	test   %r8b,%r8b
  40534a:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40534d:	40 88 75 c3          	mov    %sil,-0x3d(%rbp)
  405351:	0f 85 0a 00 00 00    	jne    405361 <setup+0xe1>
  405357:	e9 00 00 00 00       	jmpq   40535c <setup+0xdc>
  40535c:	e8 ff 01 00 00       	callq  405560 <check_flag>
  405361:	8a 45 c3             	mov    -0x3d(%rbp),%al
  405364:	a8 01                	test   $0x1,%al
  405366:	0f 85 05 00 00 00    	jne    405371 <setup+0xf1>
  40536c:	e9 3f 00 00 00       	jmpq   4053b0 <setup+0x130>
  405371:	48 8b 04 25 e0 62 60 	mov    0x6062e0,%rax
  405378:	00 
  405379:	48 3b 04 25 e0 62 60 	cmp    0x6062e0,%rax
  405380:	00 
  405381:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  405385:	0f 84 05 00 00 00    	je     405390 <setup+0x110>
  40538b:	e8 d0 01 00 00       	callq  405560 <check_flag>
  405390:	48 8d 34 25 07 58 40 	lea    0x405807,%rsi
  405397:	00 
  405398:	48 8b 7d b8          	mov    -0x48(%rbp),%rdi
  40539c:	b0 00                	mov    $0x0,%al
  40539e:	e8 8d b5 ff ff       	callq  400930 <fprintf@plt>
  4053a3:	bf 01 00 00 00       	mov    $0x1,%edi
  4053a8:	89 45 b4             	mov    %eax,-0x4c(%rbp)
  4053ab:	e8 d0 b4 ff ff       	callq  400880 <exit@plt>
  4053b0:	c7 45 ec 07 00 00 00 	movl   $0x7,-0x14(%rbp)
  4053b7:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4053ba:	3b 45 ec             	cmp    -0x14(%rbp),%eax
  4053bd:	89 45 b0             	mov    %eax,-0x50(%rbp)
  4053c0:	0f 84 05 00 00 00    	je     4053cb <setup+0x14b>
  4053c6:	e8 95 01 00 00       	callq  405560 <check_flag>
  4053cb:	8b 7d b0             	mov    -0x50(%rbp),%edi
  4053ce:	b0 00                	mov    $0x0,%al
  4053d0:	e8 0b c4 ff ff       	callq  4017e0 <bpnn_initialize>
  4053d5:	e8 66 fd ff ff       	callq  405140 <backprop_face>
  4053da:	bf 00 00 00 00       	mov    $0x0,%edi
  4053df:	e8 9c b4 ff ff       	callq  400880 <exit@plt>
  4053e4:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4053eb:	00 00 00 00 00 

00000000004053f0 <load>:
  4053f0:	55                   	push   %rbp
  4053f1:	48 89 e5             	mov    %rsp,%rbp
  4053f4:	48 83 ec 50          	sub    $0x50,%rsp
  4053f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4053fc:	8b 04 25 ec 62 60 00 	mov    0x6062ec,%eax
  405403:	3b 04 25 ec 62 60 00 	cmp    0x6062ec,%eax
  40540a:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40540d:	0f 84 05 00 00 00    	je     405418 <load+0x28>
  405413:	e8 48 01 00 00       	callq  405560 <check_flag>
  405418:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40541b:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40541e:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  405421:	8b 55 ec             	mov    -0x14(%rbp),%edx
  405424:	8b 75 e8             	mov    -0x18(%rbp),%esi
  405427:	8b 7d e8             	mov    -0x18(%rbp),%edi
  40542a:	0f af ce             	imul   %esi,%ecx
  40542d:	0f af d7             	imul   %edi,%edx
  405430:	39 d1                	cmp    %edx,%ecx
  405432:	89 4d d0             	mov    %ecx,-0x30(%rbp)
  405435:	0f 84 05 00 00 00    	je     405440 <load+0x50>
  40543b:	e8 20 01 00 00       	callq  405560 <check_flag>
  405440:	8b 45 d0             	mov    -0x30(%rbp),%eax
  405443:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  405446:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  40544a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40544e:	48 8b 49 10          	mov    0x10(%rcx),%rcx
  405452:	48 3b 4a 10          	cmp    0x10(%rdx),%rcx
  405456:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
  40545a:	0f 84 05 00 00 00    	je     405465 <load+0x75>
  405460:	e8 fb 00 00 00       	callq  405560 <check_flag>
  405465:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  405469:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40546d:	c7 45 d8 01 00 00 00 	movl   $0x1,-0x28(%rbp)
  405474:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%rbp)
  40547b:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40547e:	8b 4d ec             	mov    -0x14(%rbp),%ecx
  405481:	29 c8                	sub    %ecx,%eax
  405483:	0f 9c c2             	setl   %dl
  405486:	40 b6 01             	mov    $0x1,%sil
  405489:	40 84 f6             	test   %sil,%sil
  40548c:	89 45 c4             	mov    %eax,-0x3c(%rbp)
  40548f:	88 55 c3             	mov    %dl,-0x3d(%rbp)
  405492:	0f 85 0a 00 00 00    	jne    4054a2 <load+0xb2>
  405498:	e9 00 00 00 00       	jmpq   40549d <load+0xad>
  40549d:	e8 be 00 00 00       	callq  405560 <check_flag>
  4054a2:	8a 45 c3             	mov    -0x3d(%rbp),%al
  4054a5:	a8 01                	test   $0x1,%al
  4054a7:	0f 85 05 00 00 00    	jne    4054b2 <load+0xc2>
  4054ad:	e9 99 00 00 00       	jmpq   40554b <load+0x15b>
  4054b2:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4054b5:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  4054b8:	48 63 d0             	movslq %eax,%rdx
  4054bb:	48 63 f1             	movslq %ecx,%rsi
  4054be:	48 8b 7d f0          	mov    -0x10(%rbp),%rdi
  4054c2:	4c 8b 45 f0          	mov    -0x10(%rbp),%r8
  4054c6:	48 c1 e2 02          	shl    $0x2,%rdx
  4054ca:	48 01 d7             	add    %rdx,%rdi
  4054cd:	48 c1 e6 02          	shl    $0x2,%rsi
  4054d1:	49 01 f0             	add    %rsi,%r8
  4054d4:	4c 39 c7             	cmp    %r8,%rdi
  4054d7:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  4054db:	0f 84 05 00 00 00    	je     4054e6 <load+0xf6>
  4054e1:	e8 7a 00 00 00       	callq  405560 <check_flag>
  4054e6:	f3 0f 10 04 25 28 56 	movss  0x405628,%xmm0
  4054ed:	40 00 
  4054ef:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4054f3:	f3 0f 11 00          	movss  %xmm0,(%rax)
  4054f7:	8b 4d d8             	mov    -0x28(%rbp),%ecx
  4054fa:	8b 55 d8             	mov    -0x28(%rbp),%edx
  4054fd:	81 c1 01 00 00 00    	add    $0x1,%ecx
  405503:	81 c2 01 00 00 00    	add    $0x1,%edx
  405509:	39 d1                	cmp    %edx,%ecx
  40550b:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
  40550e:	0f 84 05 00 00 00    	je     405519 <load+0x129>
  405514:	e8 47 00 00 00       	callq  405560 <check_flag>
  405519:	8b 45 b4             	mov    -0x4c(%rbp),%eax
  40551c:	89 45 d8             	mov    %eax,-0x28(%rbp)
  40551f:	8b 45 e0             	mov    -0x20(%rbp),%eax
  405522:	8b 4d e0             	mov    -0x20(%rbp),%ecx
  405525:	05 01 00 00 00       	add    $0x1,%eax
  40552a:	81 c1 01 00 00 00    	add    $0x1,%ecx
  405530:	39 c8                	cmp    %ecx,%eax
  405532:	89 45 b0             	mov    %eax,-0x50(%rbp)
  405535:	0f 84 05 00 00 00    	je     405540 <load+0x150>
  40553b:	e8 20 00 00 00       	callq  405560 <check_flag>
  405540:	8b 45 b0             	mov    -0x50(%rbp),%eax
  405543:	89 45 e0             	mov    %eax,-0x20(%rbp)
  405546:	e9 30 ff ff ff       	jmpq   40547b <load+0x8b>
  40554b:	b8 00 00 00 00       	mov    $0x0,%eax
  405550:	48 83 c4 50          	add    $0x50,%rsp
  405554:	5d                   	pop    %rbp
  405555:	c3                   	retq   
  405556:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40555d:	00 00 00 

0000000000405560 <check_flag>:
  405560:	55                   	push   %rbp
  405561:	48 89 e5             	mov    %rsp,%rbp
  405564:	48 83 ec 10          	sub    $0x10,%rsp
  405568:	48 8d 3c 25 39 58 40 	lea    0x405839,%rdi
  40556f:	00 
  405570:	b0 00                	mov    $0x0,%al
  405572:	e8 e9 b2 ff ff       	callq  400860 <printf@plt>
  405577:	bf 63 00 00 00       	mov    $0x63,%edi
  40557c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40557f:	e8 fc b2 ff ff       	callq  400880 <exit@plt>
  405584:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40558b:	00 00 00 
  40558e:	66 90                	xchg   %ax,%ax

0000000000405590 <__libc_csu_init>:
  405590:	41 57                	push   %r15
  405592:	41 56                	push   %r14
  405594:	41 89 ff             	mov    %edi,%r15d
  405597:	41 55                	push   %r13
  405599:	41 54                	push   %r12
  40559b:	4c 8d 25 5e 0a 20 00 	lea    0x200a5e(%rip),%r12        # 606000 <__frame_dummy_init_array_entry>
  4055a2:	55                   	push   %rbp
  4055a3:	48 8d 2d 5e 0a 20 00 	lea    0x200a5e(%rip),%rbp        # 606008 <__init_array_end>
  4055aa:	53                   	push   %rbx
  4055ab:	49 89 f6             	mov    %rsi,%r14
  4055ae:	49 89 d5             	mov    %rdx,%r13
  4055b1:	4c 29 e5             	sub    %r12,%rbp
  4055b4:	48 83 ec 08          	sub    $0x8,%rsp
  4055b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4055bc:	e8 57 b2 ff ff       	callq  400818 <_init>
  4055c1:	48 85 ed             	test   %rbp,%rbp
  4055c4:	74 20                	je     4055e6 <__libc_csu_init+0x56>
  4055c6:	31 db                	xor    %ebx,%ebx
  4055c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4055cf:	00 
  4055d0:	4c 89 ea             	mov    %r13,%rdx
  4055d3:	4c 89 f6             	mov    %r14,%rsi
  4055d6:	44 89 ff             	mov    %r15d,%edi
  4055d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4055dd:	48 83 c3 01          	add    $0x1,%rbx
  4055e1:	48 39 eb             	cmp    %rbp,%rbx
  4055e4:	75 ea                	jne    4055d0 <__libc_csu_init+0x40>
  4055e6:	48 83 c4 08          	add    $0x8,%rsp
  4055ea:	5b                   	pop    %rbx
  4055eb:	5d                   	pop    %rbp
  4055ec:	41 5c                	pop    %r12
  4055ee:	41 5d                	pop    %r13
  4055f0:	41 5e                	pop    %r14
  4055f2:	41 5f                	pop    %r15
  4055f4:	c3                   	retq   
  4055f5:	90                   	nop
  4055f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4055fd:	00 00 00 

0000000000405600 <__libc_csu_fini>:
  405600:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000405604 <_fini>:
  405604:	48 83 ec 08          	sub    $0x8,%rsp
  405608:	48 83 c4 08          	add    $0x8,%rsp
  40560c:	c3                   	retq   
