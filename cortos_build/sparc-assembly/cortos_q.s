	.file	"cortos_q.c"
	.common	queueIdArray,32,8
	.section	".text"
	.align 4
	.global cortos_reserveQueue
	.type	cortos_reserveQueue, #function
	.proc	04
cortos_reserveQueue:
	save	%sp, -104, %sp
	mov	-1, %g1
	st	%g1, [%fp-8]
	mov	2, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	st	%g0, [%fp-4]
	b	.L2
	 nop
.L5:
	sethi	%hi(queueIdArray), %g1
	or	%g1, %lo(queueIdArray), %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L3
	 nop
	sethi	%hi(queueIdArray), %g1
	or	%g1, %lo(queueIdArray), %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	mov	1, %g2
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	st	%g1, [%fp-8]
	b	.L4
	 nop
.L3:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L2:
	ld	[%fp-4], %g1
	cmp	%g1, 31
	ble	.L5
	 nop
.L4:
	mov	2, %o0
	call	__cortos_lock_release, 0
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_reserveQueue, .-cortos_reserveQueue
	.align 4
	.global cortos_freeQueue
	.type	cortos_freeQueue, #function
	.proc	020
cortos_freeQueue:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bl	.L7
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 31
	bg	.L7
	 nop
	mov	2, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	sethi	%hi(queueIdArray), %g1
	or	%g1, %lo(queueIdArray), %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	stb	%g0, [%g1]
	mov	2, %o0
	call	__cortos_lock_release, 0
	 nop
.L7:
	restore
	jmp	%o7+8
	 nop
	.size	cortos_freeQueue, .-cortos_freeQueue
	.align 4
	.global cortos_writeMessage
	.type	cortos_writeMessage, #function
	.proc	04
cortos_writeMessage:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	st	%g0, [%fp-8]
	st	%g0, [%fp-12]
	ld	[%fp+68], %g1
	sll	%g1, 4, %g1
	add	%g1, 1720, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g1
	sll	%g1, 10, %g1
	add	%g1, 2232, %g1
	st	%g1, [%fp-12]
	ld	[%fp+68], %o0
	call	__cortos_q_lock_acquire_buzy, 0
	 nop
	ld	[%fp-8], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-16]
	ld	[%fp-8], %g1
	ld	[%g1+8], %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g1
	cmp	%g1, 32
	bne	.L10
	 nop
	st	%g0, [%fp-4]
	b	.L11
	 nop
.L10:
	ld	[%fp-20], %g1
	sll	%g1, 10, %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp-12], %g1
	ld	[%fp+72], %g2
	ldd	[%g2], %i4
	std	%i4, [%g1]
	ldd	[%g2+8], %i4
	std	%i4, [%g1+8]
	ldd	[%g2+16], %i4
	std	%i4, [%g1+16]
	ldd	[%g2+24], %g2
	std	%g2, [%g1+24]
	ld	[%fp-16], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-20], %g1
	add	%g1, 1, %g1
	and	%g1, 31, %g1
	cmp	%g1, 0
	be	.L12
	 nop
	ld	[%fp-20], %g1
	add	%g1, 1, %g2
	sra	%g2, 31, %g1
	srl	%g1, 27, %g1
	add	%g2, %g1, %g2
	and	%g2, 31, %g2
	sub	%g2, %g1, %g1
	b	.L13
	 nop
.L12:
	mov	0, %g1
.L13:
	st	%g1, [%fp-20]
	ld	[%fp-8], %g1
	ld	[%fp-16], %g2
	st	%g2, [%g1]
	ld	[%fp-8], %g1
	ld	[%fp-20], %g2
	st	%g2, [%g1+8]
	mov	1, %g1
	st	%g1, [%fp-4]
.L11:
	ld	[%fp+68], %o0
	call	__cortos_q_lock_release, 0
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_writeMessage, .-cortos_writeMessage
	.align 4
	.global cortos_readMessage
	.type	cortos_readMessage, #function
	.proc	04
cortos_readMessage:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%g0, [%fp-4]
	st	%g0, [%fp-8]
	st	%g0, [%fp-12]
	ld	[%fp+68], %g1
	sll	%g1, 4, %g1
	add	%g1, 1720, %g1
	st	%g1, [%fp-8]
	ld	[%fp+68], %g1
	sll	%g1, 10, %g1
	add	%g1, 2232, %g1
	st	%g1, [%fp-12]
	ld	[%fp+68], %o0
	call	__cortos_q_lock_acquire_buzy, 0
	 nop
	ld	[%fp-8], %g1
	ld	[%g1], %g1
	st	%g1, [%fp-16]
	ld	[%fp-8], %g1
	ld	[%g1+4], %g1
	st	%g1, [%fp-20]
	ld	[%fp-16], %g1
	cmp	%g1, 0
	bne	.L16
	 nop
	st	%g0, [%fp-4]
	b	.L17
	 nop
.L16:
	ld	[%fp-20], %g1
	sll	%g1, 10, %g1
	ld	[%fp-12], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-12]
	ld	[%fp+72], %g1
	ld	[%fp-12], %g2
	ldd	[%g2], %i4
	std	%i4, [%g1]
	ldd	[%g2+8], %i4
	std	%i4, [%g1+8]
	ldd	[%g2+16], %i4
	std	%i4, [%g1+16]
	ldd	[%g2+24], %g2
	std	%g2, [%g1+24]
	ld	[%fp-16], %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-16]
	ld	[%fp-20], %g1
	add	%g1, 1, %g1
	and	%g1, 31, %g1
	cmp	%g1, 0
	be	.L18
	 nop
	ld	[%fp-20], %g1
	add	%g1, 1, %g2
	sra	%g2, 31, %g1
	srl	%g1, 27, %g1
	add	%g2, %g1, %g2
	and	%g2, 31, %g2
	sub	%g2, %g1, %g1
	b	.L19
	 nop
.L18:
	mov	0, %g1
.L19:
	st	%g1, [%fp-20]
	ld	[%fp-8], %g1
	ld	[%fp-16], %g2
	st	%g2, [%g1]
	ld	[%fp-8], %g1
	ld	[%fp-20], %g2
	st	%g2, [%g1+4]
	mov	1, %g1
	st	%g1, [%fp-4]
.L17:
	ld	[%fp+68], %o0
	call	__cortos_q_lock_release, 0
	 nop
	ld	[%fp-4], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_readMessage, .-cortos_readMessage
	.ident	"GCC: (Buildroot 2014.08-g6fa3163) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
