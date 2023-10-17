	.file	"sphere.c"
	.text
	.globl	shades
	.section	.rodata
.LC0:
	.string	".:!*oe&#%@"
	.section	.data.rel.local,"aw"
	.align 8
	.type	shades, @object
	.size	shades, 8
shades:
	.quad	.LC0
	.globl	light
	.data
	.align 16
	.type	light, @object
	.size	light, 24
light:
	.long	0
	.long	1077805056
	.long	0
	.long	1077805056
	.long	0
	.long	-1068957696
	.text
	.globl	normalize
	.type	normalize, @function
normalize:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm2
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm2
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm0
	divsd	-8(%rbp), %xmm0
	movq	-24(%rbp), %rax
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	addq	$8, %rax
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	movq	-24(%rbp), %rax
	addq	$16, %rax
	divsd	-8(%rbp), %xmm0
	movsd	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	normalize, .-normalize
	.globl	dot
	.type	dot, @function
dot:
.LFB7:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movsd	(%rax), %xmm1
	movq	-32(%rbp), %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm2
	movq	-32(%rbp), %rax
	addq	$8, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movq	-24(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm2
	movq	-32(%rbp), %rax
	addq	$16, %rax
	movsd	(%rax), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-8(%rbp), %xmm0
	jbe	.L8
	movsd	-8(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	jmp	.L6
.L8:
	pxor	%xmm0, %xmm0
.L6:
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	dot, .-dot
	.globl	draw_sphere
	.type	draw_sphere, @function
draw_sphere:
.LFB8:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movsd	%xmm0, -88(%rbp)
	movsd	%xmm1, -96(%rbp)
	movsd	%xmm2, -104(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movsd	-88(%rbp), %xmm0
	movq	.LC2(%rip), %xmm1
	xorpd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -68(%rbp)
	jmp	.L10
.L18:
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-68(%rbp), %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-88(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	floor@PLT
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -64(%rbp)
	jmp	.L11
.L17:
	pxor	%xmm0, %xmm0
	cvtsi2sdl	-64(%rbp), %xmm0
	movsd	.LC5(%rip), %xmm2
	movapd	%xmm0, %xmm1
	divsd	%xmm2, %xmm1
	movsd	.LC3(%rip), %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-56(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	addsd	%xmm0, %xmm1
	movsd	-88(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	comisd	%xmm1, %xmm0
	jb	.L21
	movsd	-56(%rbp), %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-48(%rbp), %xmm0
	movsd	%xmm0, -24(%rbp)
	movsd	-88(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movsd	-56(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movsd	-48(%rbp), %xmm0
	mulsd	%xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movq	%xmm1, %rax
	movq	%rax, %xmm0
	call	sqrt@PLT
	movq	%xmm0, %rax
	movq	%rax, -16(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	normalize
	leaq	-32(%rbp), %rax
	movq	%rax, %rsi
	leaq	light(%rip), %rax
	movq	%rax, %rdi
	call	dot
	movq	%xmm0, %rax
	movsd	-96(%rbp), %xmm0
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	pow@PLT
	movsd	-104(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	.LC6(%rip), %xmm0
	movapd	%xmm0, %xmm1
	subsd	-40(%rbp), %xmm1
	movsd	.LC7(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	cvttsd2sil	%xmm0, %eax
	movl	%eax, -60(%rbp)
	cmpl	$0, -60(%rbp)
	jns	.L14
	movl	$0, -60(%rbp)
.L14:
	movl	-60(%rbp), %eax
	cmpl	$6, %eax
	jbe	.L15
	movl	$6, -60(%rbp)
.L15:
	movq	shades(%rip), %rdx
	movl	-60(%rbp), %eax
	cltq
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar@PLT
	jmp	.L16
.L21:
	movl	$32, %edi
	call	putchar@PLT
.L16:
	addl	$1, -64(%rbp)
.L11:
	pxor	%xmm3, %xmm3
	cvtsi2sdl	-64(%rbp), %xmm3
	movsd	%xmm3, -112(%rbp)
	movsd	-88(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	ceil@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm4
	comisd	-112(%rbp), %xmm4
	jnb	.L17
	movl	$10, %edi
	call	putchar@PLT
	addl	$1, -68(%rbp)
.L10:
	pxor	%xmm5, %xmm5
	cvtsi2sdl	-68(%rbp), %xmm5
	movsd	%xmm5, -112(%rbp)
	movq	-88(%rbp), %rax
	movq	%rax, %xmm0
	call	ceil@PLT
	movq	%xmm0, %rax
	movq	%rax, %xmm6
	comisd	-112(%rbp), %xmm6
	jnb	.L18
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8:
	.size	draw_sphere, .-draw_sphere
	.globl	main
	.type	main, @function
main:
.LFB9:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	leaq	light(%rip), %rax
	movq	%rax, %rdi
	call	normalize
	movsd	.LC8(%rip), %xmm1
	movsd	.LC9(%rip), %xmm0
	movq	.LC10(%rip), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	draw_sphere
	movsd	.LC11(%rip), %xmm1
	movsd	.LC5(%rip), %xmm0
	movq	.LC12(%rip), %rax
	movapd	%xmm1, %xmm2
	movapd	%xmm0, %xmm1
	movq	%rax, %xmm0
	call	draw_sphere
	movl	$0, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE9:
	.size	main, .-main
	.section	.rodata
	.align 16
.LC2:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC3:
	.long	0
	.long	1071644672
	.align 8
.LC4:
	.long	0
	.long	-1073741824
	.align 8
.LC5:
	.long	0
	.long	1073741824
	.align 8
.LC6:
	.long	0
	.long	1072693248
	.align 8
.LC7:
	.long	0
	.long	1075576832
	.align 8
.LC8:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC9:
	.long	0
	.long	1074790400
	.align 8
.LC10:
	.long	0
	.long	1077149696
	.align 8
.LC11:
	.long	-1717986918
	.long	1071225241
	.align 8
.LC12:
	.long	0
	.long	1076101120
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
