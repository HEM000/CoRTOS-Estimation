	.file	"cortos.c"
	.common	syncLockVars,32,8
	.section	".text"
	.align 4
	.global __cortos_enable_serial
	.type	__cortos_enable_serial, #function
	.proc	020
__cortos_enable_serial:
	save	%sp, -96, %sp
	mov	1, %o0
	call	__ajit_write_serial_control_register__, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	__cortos_enable_serial, .-__cortos_enable_serial
	.align 4
	.global cortos_printf
	.type	cortos_printf, #function
	.proc	04
cortos_printf:
	save	%sp, -1136, %sp
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%i5, [%fp+88]
	st	%i0, [%fp+68]
	st	%g0, [%fp-8]
	mov	1, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	add	%fp, 72, %g1
	st	%g1, [%fp-1036]
	ld	[%fp-1036], %g1
	add	%fp, -1032, %g2
	mov	%g2, %o0
	ld	[%fp+68], %o1
	mov	%g1, %o2
	call	ee_vsprintf, 0
	 nop
	add	%fp, -1032, %g1
	st	%g1, [%fp-4]
	b	.L3
	 nop
.L4:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	uart_send_char, 0
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L3:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L4
	 nop
	mov	1, %o0
	call	__cortos_lock_release, 0
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_printf, .-cortos_printf
	.section	".rodata"
	.align 8
.LC0:
	.asciz	"CoRTOS:LOG: %s: (%d,%d): %s:%d, %s() [%lu,%lu]. "
	.align 8
.LC1:
	.asciz	"\n"
	.section	".text"
	.align 4
	.global __cortos_log_printf
	.type	__cortos_log_printf, #function
	.proc	04
__cortos_log_printf:
	save	%sp, -1168, %sp
	st	%i5, [%fp+88]
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	st	%i3, [%fp+80]
	st	%i4, [%fp+84]
	st	%g0, [%fp-8]
#APP
! 65 "cortos_src/cortos.c" 1
	  rd %asr29, %l1
  mov %l1, %i5

! 0 "" 2
#NO_APP
	st	%i5, [%fp-12]
	mov	1, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	call	cortos_get_clock_time, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	std	%g2, [%fp-1056]
	add	%fp, -1056, %g1
	st	%g1, [%fp-16]
	ld	[%fp-12], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g2
	ld	[%fp-12], %g1
	and	%g1, 255, %g1
	ld	[%fp-16], %g3
	ld	[%g3], %g4
	ld	[%fp-16], %g3
	add	%g3, 4, %g3
	ld	[%g3], %g3
	ld	[%fp+76], %i5
	st	%i5, [%sp+92]
	st	%g4, [%sp+96]
	st	%g3, [%sp+100]
	sethi	%hi(.LC0), %g3
	or	%g3, %lo(.LC0), %o0
	ld	[%fp+68], %o1
	mov	%g2, %o2
	mov	%g1, %o3
	ld	[%fp+72], %o4
	ld	[%fp+80], %o5
	call	ee_printf, 0
	 nop
	mov	%o0, %g1
	ld	[%fp-8], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	add	%fp, 88, %g1
	st	%g1, [%fp-1044]
	ld	[%fp-1044], %g1
	add	%fp, -1040, %g2
	mov	%g2, %o0
	ld	[%fp+84], %o1
	mov	%g1, %o2
	call	ee_vsprintf, 0
	 nop
	add	%fp, -1040, %g1
	st	%g1, [%fp-4]
	b	.L7
	 nop
.L8:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %o0
	call	uart_send_char, 0
	 nop
	ld	[%fp-8], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-8]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L7:
	ld	[%fp-4], %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L8
	 nop
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %o0
	call	ee_printf, 0
	 nop
	mov	%o0, %g1
	ld	[%fp-8], %g2
	add	%g2, %g1, %g1
	st	%g1, [%fp-8]
	mov	1, %o0
	call	__cortos_lock_release, 0
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	__cortos_log_printf, .-__cortos_log_printf
	.align 4
	.global cortos_get_clock_time
	.type	cortos_get_clock_time, #function
	.proc	017
cortos_get_clock_time:
	save	%sp, -96, %sp
	call	__ajit_get_clock_time, 0
	 nop
	mov	%o0, %g2
	mov	%o1, %g3
	mov	%g2, %i0
	mov	%g3, %i1
	restore
	jmp	%o7+8
	 nop
	.size	cortos_get_clock_time, .-cortos_get_clock_time
	.align 4
	.global cortos_sleep
	.type	cortos_sleep, #function
	.proc	020
cortos_sleep:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %o0
	call	__ajit_sleep__, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	cortos_sleep, .-cortos_sleep
	.align 4
	.global cortos_reserveLockVar
	.type	cortos_reserveLockVar, #function
	.proc	04
cortos_reserveLockVar:
	save	%sp, -104, %sp
	mov	-1, %g1
	st	%g1, [%fp-8]
	mov	3, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	st	%g0, [%fp-4]
	b	.L14
	 nop
.L17:
	sethi	%hi(syncLockVars), %g1
	or	%g1, %lo(syncLockVars), %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	ldub	[%g1], %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	cmp	%g1, 0
	bne	.L15
	 nop
	sethi	%hi(syncLockVars), %g1
	or	%g1, %lo(syncLockVars), %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	mov	1, %g2
	stb	%g2, [%g1]
	ld	[%fp-4], %g1
	st	%g1, [%fp-8]
	b	.L16
	 nop
.L15:
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L14:
	ld	[%fp-4], %g1
	cmp	%g1, 31
	ble	.L17
	 nop
.L16:
	mov	3, %o0
	call	__cortos_lock_release, 0
	 nop
	ld	[%fp-8], %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_reserveLockVar, .-cortos_reserveLockVar
	.align 4
	.global cortos_freeLockVar
	.type	cortos_freeLockVar, #function
	.proc	020
cortos_freeLockVar:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	cmp	%g1, 0
	bl	.L19
	 nop
	ld	[%fp+68], %g1
	cmp	%g1, 31
	bg	.L19
	 nop
	mov	3, %o0
	call	__cortos_lock_acquire_buzy, 0
	 nop
	sethi	%hi(syncLockVars), %g1
	or	%g1, %lo(syncLockVars), %g2
	ld	[%fp+68], %g1
	add	%g2, %g1, %g1
	stb	%g0, [%g1]
	mov	3, %o0
	call	__cortos_lock_release, 0
	 nop
.L19:
	restore
	jmp	%o7+8
	 nop
	.size	cortos_freeLockVar, .-cortos_freeLockVar
	.align 4
	.global cortos_get_thread_id
	.type	cortos_get_thread_id, #function
	.proc	02
cortos_get_thread_id:
	save	%sp, -104, %sp
#APP
! 143 "cortos_src/cortos.c" 1
	  rd %asr29, %l1
  mov %l1, %i5

! 0 "" 2
#NO_APP
	st	%i5, [%fp-4]
	ld	[%fp-4], %g2
	sethi	%hi(64512), %g1
	or	%g1, 768, %g1
	and	%g2, %g1, %g1
	srl	%g1, 8, %g1
	add	%g1, %g1, %g1
	mov	%g1, %g2
	ld	[%fp-4], %g1
	add	%g2, %g1, %g1
	sll	%g1, 24, %g1
	sra	%g1, 24, %g1
	mov	%g1, %i0
	restore
	jmp	%o7+8
	 nop
	.size	cortos_get_thread_id, .-cortos_get_thread_id
	.ident	"GCC: (Buildroot 2014.08-g6fa3163) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
