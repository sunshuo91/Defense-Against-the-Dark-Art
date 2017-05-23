//Steve Sun(ss8ee)
//dot_product.s
//Feb 3rd

	.file	"dot_product.c"
	.text
	.globl	dot_product
	.type	dot_product, @function
dot_product:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$20, %esp
	movl	$0, %eax
	movl	%eax, -8(%ebp)
	movl	$0, -4(%ebp)
	movl	8(%ebp), %ecx
	movl	12(%ebp), %edx

	movups	(%ecx), %xmm0
	mulps	(%edx), %xmm0
	movaps 	%xmm0, %xmm1
	shufps	$0xb1, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$0x55, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	movaps	%xmm0, %xmm2
	addl	$16, %ecx
	addl	$16, %edx
	addl	$4, -4(%ebp)
.L3:
	movups	(%ecx), %xmm0
	mulps	(%edx), %xmm0
	movaps 	%xmm0, %xmm1
	shufps	$0xb1, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	movaps	%xmm0, %xmm1
	shufps	$0x55, %xmm1, %xmm1
	addps	%xmm1, %xmm0
	addps	%xmm0, %xmm2

	addl	$16, %ecx
	addl	$16, %edx
	addl	$4, -4(%ebp)
	movl	-4(%ebp), %ebx
	cmpl	16(%ebp), %ebx
	jl	.L3
	
	movss	%xmm2, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -20(%ebp)
	flds	-20(%ebp)
	leave
	ret
.LFE0:
	.size	dot_product, .-dot_product
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
