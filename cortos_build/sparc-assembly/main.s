	.file	"main.c"
	.global data
	.section	".data"
	.align 8
	.type	data, #object
	.size	data, 720
data:
	.long	1072575297
	.long	1635744177
	.long	1072548867
	.long	1049099801
	.long	1072561803
	.long	4240532103
	.long	1072512545
	.long	3426398821
	.long	1072501483
	.long	2843925079
	.long	1072543166
	.long	1659342594
	.long	1072574477
	.long	3653982212
	.long	1072539250
	.long	3154157859
	.long	1072563475
	.long	2723126277
	.long	1072513658
	.long	2538022784
	.long	1072515255
	.long	2353095414
	.long	1072545535
	.long	207714321
	.long	1072554299
	.long	817427229
	.long	1072502374
	.long	1287376735
	.long	1072537025
	.long	2888436536
	.long	1072691185
	.long	1447154099
	.long	1072693083
	.long	450536527
	.long	1072692212
	.long	3344674576
	.long	1072691477
	.long	542732473
	.long	1072690386
	.long	2421465349
	.long	1072692405
	.long	3324239635
	.long	1072691345
	.long	1517474614
	.long	1072693190
	.long	2047531061
	.long	1072692236
	.long	3430421322
	.long	1072691857
	.long	2426815321
	.long	1072691938
	.long	4002737957
	.long	1072693235
	.long	793400017
	.long	1072692197
	.long	4212316635
	.long	1072690005
	.long	1777477501
	.long	1072692717
	.long	3329683034
	.long	1070922202
	.long	2143900680
	.long	1071062602
	.long	2507690804
	.long	1070989642
	.long	958424880
	.long	1071231148
	.long	2290197802
	.long	1071281536
	.long	2843727314
	.long	1071078965
	.long	2348722783
	.long	1070928962
	.long	4077970088
	.long	1071118059
	.long	2117830103
	.long	1070996882
	.long	3445410353
	.long	1071237132
	.long	2636684820
	.long	1071231959
	.long	3517728922
	.long	1071085372
	.long	245958345
	.long	1071022872
	.long	3240022078
	.long	1071269374
	.long	1678337778
	.long	1071114368
	.long	2693891276
	.long	-1079598815
	.long	2969970062
	.long	-1082052888
	.long	2003582050
	.long	-1080333346
	.long	1911794843
	.long	1067590989
	.long	3826389647
	.long	1068030579
	.long	3666649853
	.long	-1083336023
	.long	3710322322
	.long	-1079652902
	.long	3050417419
	.long	1064726840
	.long	2332607517
	.long	-1080403517
	.long	318613223
	.long	1067623459
	.long	2527917327
	.long	1067574186
	.long	381764785
	.long	-1083747626
	.long	2878835816
	.long	-1080921182
	.long	2559068648
	.long	1067938113
	.long	4077036995
	.long	1064668852
	.long	896217916
	.long	-1079618017
	.long	1163518839
	.long	-1079414309
	.long	3150197632
	.long	-1079181322
	.long	828690229
	.long	-1079019443
	.long	1276991660
	.long	-1079068085
	.long	2523992334
	.long	-1078884171
	.long	165304650
	.long	-1079747452
	.long	2606511610
	.long	-1079890140
	.long	4121506682
	.long	-1080595515
	.long	2113566986
	.long	-1079714580
	.long	4186024733
	.long	-1079891090
	.long	277921385
	.long	-1079793219
	.long	3804196568
	.long	-1078921300
	.long	4208343840
	.long	-1078821236
	.long	312865502
	.long	-1078990511
	.long	860529593
	.long	-1083365131
	.long	4054266165
	.long	-1081928162
	.long	3221848707
	.long	-1081027879
	.long	2398782919
	.long	-1080735489
	.long	959599243
	.long	-1080838306
	.long	2528847919
	.long	-1080244221
	.long	315536636
	.long	1060422551
	.long	1501209279
	.long	1064593872
	.long	1694506985
	.long	1066519317
	.long	4047568805
	.long	-1090293087
	.long	2891012300
	.long	1064656738
	.long	1369600347
	.long	1063296618
	.long	4004760071
	.long	-1080385044
	.long	3735443402
	.long	-1080024159
	.long	1244293478
	.long	-1080663374
	.long	3999864946
	.global N
	.type	N, #object
	.size	N, 1
N:
	.byte	15
	.global nos
	.align 4
	.type	nos, #object
	.size	nos, 4
nos:
	.long	15
	.section	".rodata"
	.align 8
.LC0:
	.long	0
	.long	0
	.section	".text"
	.align 4
	.global absoluteValue
	.type	absoluteValue, #function
	.proc	07
absoluteValue:
	save	%sp, -104, %sp
	std	%i0, [%fp-8]
	ldd	[%fp-8], %f10
	sethi	%hi(.LC0), %g1
	or	%g1, %lo(.LC0), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbuge	.L2
	 nop
.L5:
	ldd	[%fp-8], %f8
	fnegs	%f8, %f8
	std	%f8, [%fp-8]
.L2:
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	absoluteValue, .-absoluteValue
	.section	".rodata"
	.align 8
.LC1:
	.long	1072693248
	.long	0
	.align 8
.LC2:
	.long	1073741824
	.long	0
	.align 8
.LC3:
	.long	1055193269
	.long	2296604913
	.section	".text"
	.align 4
	.global square_root
	.type	square_root, #function
	.proc	07
square_root:
	save	%sp, -120, %sp
	std	%i0, [%fp-16]
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-8]
	b	.L7
	 nop
.L8:
	ldd	[%fp-16], %f10
	ldd	[%fp-8], %f8
	fdivd	%f10, %f8, %f10
	ldd	[%fp-8], %f8
	faddd	%f10, %f8, %f10
	sethi	%hi(.LC2), %g1
	or	%g1, %lo(.LC2), %g1
	ldd	[%g1], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%fp-8]
.L7:
	ldd	[%fp-8], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-16], %f8
	fdivd	%f10, %f8, %f10
	sethi	%hi(.LC1), %g1
	or	%g1, %lo(.LC1), %g1
	ldd	[%g1], %f8
	fsubd	%f10, %f8, %f8
	std	%f8, [%fp-24]
	ldd	[%fp-24], %o0
	call	absoluteValue, 0
	 nop
	fmovs	%f0, %f10
	fmovs	%f1, %f11
	sethi	%hi(.LC3), %g1
	or	%g1, %lo(.LC3), %g1
	ldd	[%g1], %f8
	fcmped	%f10, %f8
	nop
	fbge	.L8
	 nop
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	square_root, .-square_root
	.align 4
	.global Vec_construct
	.type	Vec_construct, #function
	.proc	020
Vec_construct:
	save	%sp, -120, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp-8]
	st	%i2, [%fp-4]
	st	%i3, [%fp-16]
	st	%i4, [%fp-12]
	st	%i5, [%fp+88]
	ld	[%fp+88], %g1
	st	%g1, [%fp-24]
	ld	[%fp+92], %g1
	st	%g1, [%fp-20]
	ld	[%fp+68], %g1
	ldd	[%fp-8], %f8
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	ldd	[%fp-16], %f8
	std	%f8, [%g1+8]
	ld	[%fp+68], %g1
	ldd	[%fp-24], %f8
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	Vec_construct, .-Vec_construct
	.align 4
	.global cross
	.type	cross, #function
	.proc	020
cross:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	cross, .-cross
	.align 4
	.global dot
	.type	dot, #function
	.proc	07
dot:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	dot, .-dot
	.align 4
	.global scale_vec
	.type	scale_vec, #function
	.proc	020
scale_vec:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp-8]
	st	%i2, [%fp-4]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f10
	ldd	[%fp-8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	scale_vec, .-scale_vec
	.align 4
	.global add_vec
	.type	add_vec, #function
	.proc	020
add_vec:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	add_vec, .-add_vec
	.section	".rodata"
	.align 8
.LC4:
	.long	0
	.long	0
	.align 8
.LC5:
	.long	1072693248
	.long	0
	.section	".text"
	.align 4
	.global matrix_construct
	.type	matrix_construct, #function
	.proc	020
matrix_construct:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	mov	%i1, %g1
	stb	%g1, [%fp+72]
	ldub	[%fp+72], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 0
	bne	.L17
	 nop
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L18
	 nop
.L21:
	stb	%g0, [%fp-2]
	b	.L19
	 nop
.L20:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC4), %g2
	or	%g2, %lo(.LC4), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L19:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L20
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L18:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L21
	 nop
.L17:
	ldub	[%fp+72], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 1
	bne	.L16
	 nop
	stb	%g0, [%fp-3]
	stb	%g0, [%fp-4]
	stb	%g0, [%fp-3]
	b	.L23
	 nop
.L28:
	stb	%g0, [%fp-4]
	b	.L24
	 nop
.L27:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g1
	cmp	%g2, %g1
	bne	.L25
	 nop
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC5), %g2
	or	%g2, %lo(.LC5), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
	b	.L26
	 nop
.L25:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g4
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	sethi	%hi(.LC4), %g2
	or	%g2, %lo(.LC4), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
.L26:
	ldub	[%fp-4], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-4]
.L24:
	ldub	[%fp-4], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L27
	 nop
	ldub	[%fp-3], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-3]
.L23:
	ldub	[%fp-3], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L28
	 nop
.L16:
	restore
	jmp	%o7+8
	 nop
	.size	matrix_construct, .-matrix_construct
	.align 4
	.global add_matrix
	.type	add_matrix, #function
	.proc	020
add_matrix:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L30
	 nop
.L33:
	stb	%g0, [%fp-2]
	b	.L31
	 nop
.L32:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f10
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+76], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L31:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L32
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L30:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L33
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	add_matrix, .-add_matrix
	.align 4
	.global scale_matrix
	.type	scale_matrix, #function
	.proc	020
scale_matrix:
	save	%sp, -112, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	std	%i2, [%fp-16]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L35
	 nop
.L38:
	stb	%g0, [%fp-2]
	b	.L36
	 nop
.L37:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f10
	ldd	[%fp-16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L36:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L37
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L35:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L38
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	scale_matrix, .-scale_matrix
	.align 4
	.global det
	.type	det, #function
	.proc	07
det:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f12
	ld	[%fp+68], %g1
	ldd	[%g1+40], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+56], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+24], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	fmuld	%f14, %f8, %f14
	ld	[%fp+68], %g1
	ldd	[%g1+40], %f16
	ld	[%fp+68], %g1
	ldd	[%g1+48], %f8
	fmuld	%f16, %f8, %f8
	fsubd	%f14, %f8, %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+68], %g1
	ldd	[%g1+24], %f14
	ld	[%fp+68], %g1
	ldd	[%g1+56], %f8
	fmuld	%f14, %f8, %f14
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f16
	ld	[%fp+68], %g1
	ldd	[%g1+48], %f8
	fmuld	%f16, %f8, %f8
	fsubd	%f14, %f8, %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%fp-8], %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	det, .-det
	.align 4
	.global trace
	.type	trace, #function
	.proc	07
trace:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	ld	[%fp+68], %g1
	ldd	[%g1], %f10
	ld	[%fp+68], %g1
	ldd	[%g1+32], %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+68], %g1
	ldd	[%g1+64], %f8
	faddd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	trace, .-trace
	.align 4
	.global T
	.type	T, #function
	.proc	020
T:
	save	%sp, -104, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	stb	%g0, [%fp-1]
	stb	%g0, [%fp-2]
	stb	%g0, [%fp-1]
	b	.L44
	 nop
.L47:
	stb	%g0, [%fp-2]
	b	.L45
	 nop
.L46:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g2
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g4
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g3
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %i4
	ld	[%fp+72], %i5
	mov	%g3, %g1
	add	%g1, %g1, %g1
	add	%g1, %g3, %g1
	add	%g1, %i4, %g1
	sll	%g1, 3, %g1
	add	%i5, %g1, %g1
	ldd	[%g1], %f8
	ld	[%fp+68], %g3
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	add	%g1, %g4, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ldub	[%fp-2], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-2]
.L45:
	ldub	[%fp-2], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L46
	 nop
	ldub	[%fp-1], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-1]
.L44:
	ldub	[%fp-1], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bleu	.L47
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	T, .-T
	.align 4
	.global adjoint
	.type	adjoint, #function
	.proc	020
adjoint:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+24]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+48]
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+32]
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+56]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+40]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f12
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+64]
	restore
	jmp	%o7+8
	 nop
	.size	adjoint, .-adjoint
	.align 4
	.global outer_product
	.type	outer_product, #function
	.proc	020
outer_product:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+24]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+32]
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+40]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+48]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+56]
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f10
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+64]
	restore
	jmp	%o7+8
	 nop
	.size	outer_product, .-outer_product
	.align 4
	.global matmul
	.type	matmul, #function
	.proc	020
matmul:
	save	%sp, -96, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	ldd	[%g1], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+8], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+16], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+72], %g1
	ldd	[%g1+24], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+32], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+40], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+8]
	ld	[%fp+72], %g1
	ldd	[%g1+48], %f10
	ld	[%fp+76], %g1
	ldd	[%g1], %f8
	fmuld	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+56], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+8], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ld	[%fp+72], %g1
	ldd	[%g1+64], %f12
	ld	[%fp+76], %g1
	ldd	[%g1+16], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1+16]
	restore
	jmp	%o7+8
	 nop
	.size	matmul, .-matmul
	.align 4
	.type	f.1212, #function
	.proc	07
f.1212:
	save	%sp, -120, %sp
	std	%i0, [%fp-24]
	mov	%g2, %g1
	ldd	[%fp-24], %f10
	ldd	[%fp-24], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%g1+40], %f12
	ldd	[%g1+40], %f8
	fmuld	%f12, %f8, %f8
	fsubd	%f10, %f8, %f10
	ldd	[%g1+32], %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-24], %f12
	ldd	[%fp-24], %f8
	fmuld	%f12, %f8, %f12
	ldd	[%g1+40], %f14
	ldd	[%g1+40], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f12
	ldd	[%g1+24], %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%g1+40], %f8
	ldd	[%fp-24], %f10
	fsubd	%f10, %f8, %f10
	ldd	[%g1+16], %f12
	ldd	[%g1+8], %f8
	faddd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-16]
	ldd	[%fp-8], %f10
	ldd	[%fp-16], %f8
	fsubd	%f10, %f8, %f10
	ldd	[%g1], %f8
	fsubd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	f.1212, .-f.1212
	.section	".rodata"
	.align 8
.LC6:
	.long	1062232653
	.long	3539053052
	.align 8
.LC7:
	.long	0
	.long	0
	.align 8
.LC8:
	.long	1072693248
	.long	0
	.align 8
.LC9:
	.long	-1074790400
	.long	0
	.section	".text"
	.align 4
	.global quest
	.type	quest, #function
	.proc	020
quest:
	save	%sp, -960, %sp
	st	%i0, [%fp+68]
	st	%i1, [%fp+72]
	st	%i2, [%fp+76]
	ld	[%fp+72], %g1
	add	%g1, %g1, %g1
	mov	%g1, %i1
	add	%i1, -1, %g1
	st	%g1, [%fp-36]
	mov	%i1, %g1
	mov	0, %i2
	mov	%g1, %i3
	srl	%i3, 26, %g1
	sll	%i2, 6, %g2
	or	%g1, %g2, %g2
	sll	%i3, 6, %g3
	mov	%sp, %g1
	mov	%g1, %i0
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g4
	and	%g4, 0xff, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-40]
	and	%g4, 0xff, %g1
	mov	0, %i2
	mov	%g1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	addcc	%g3, %g3, %l5
	addx	%g2, %g2, %l4
	mov	%l4, %g2
	mov	%l5, %g3
	addcc	%g3, %i3, %o5
	addx	%g2, %i2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %o0
	or	%g1, %o0, %o0
	sll	%g3, 6, %o1
	mov	%o0, %g2
	mov	%o1, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	and	%g4, 0xff, %g1
	mov	0, %i2
	mov	%g1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	addcc	%g3, %g3, %o1
	addx	%g2, %g2, %o0
	mov	%o0, %g2
	mov	%o1, %g3
	addcc	%g3, %i3, %o5
	addx	%g2, %i2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %o2
	or	%g1, %o2, %o2
	sll	%g3, 6, %o3
	mov	%o2, %g2
	mov	%o3, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-44]
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g4
	and	%g4, 0xff, %g1
	add	%g1, -1, %g1
	st	%g1, [%fp-48]
	and	%g4, 0xff, %g1
	mov	0, %i2
	mov	%g1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	addcc	%g3, %g3, %o3
	addx	%g2, %g2, %o2
	mov	%o2, %g2
	mov	%o3, %g3
	addcc	%g3, %i3, %o5
	addx	%g2, %i2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %o4
	or	%g1, %o4, %o4
	sll	%g3, 6, %o5
	mov	%o4, %g2
	mov	%o5, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	and	%g4, 0xff, %g1
	mov	0, %i2
	mov	%g1, %i3
	mov	%i2, %g2
	mov	%i3, %g3
	addcc	%g3, %g3, %o5
	addx	%g2, %g2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	addcc	%g3, %i3, %o5
	addx	%g2, %i2, %o4
	mov	%o4, %g2
	mov	%o5, %g3
	srl	%g3, 26, %g1
	sll	%g2, 6, %i4
	or	%g1, %i4, %i4
	sll	%g3, 6, %i5
	mov	%i4, %g2
	mov	%i5, %g3
	and	%g4, 0xff, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-52]
	sethi	%hi(.LC6), %g1
	or	%g1, %lo(.LC6), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-64]
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	add	%g2, -1, %g2
	st	%g2, [%fp-68]
	and	%g1, 0xff, %g2
	mov	%g2, %g3
	mov	0, %g2
	srl	%g3, 26, %g4
	sll	%g2, 6, %l2
	or	%g4, %l2, %l2
	sll	%g3, 6, %l3
	and	%g1, 0xff, %g2
	mov	%g2, %g3
	mov	0, %g2
	srl	%g3, 26, %g4
	sll	%g2, 6, %l0
	or	%g4, %l0, %l0
	sll	%g3, 6, %l1
	and	%g1, 0xff, %g1
	sll	%g1, 3, %g1
	add	%g1, 7, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	sub	%sp, %g1, %sp
	add	%sp, 100, %g1
	add	%g1, 7, %g1
	srl	%g1, 3, %g1
	sll	%g1, 3, %g1
	st	%g1, [%fp-72]
	st	%g0, [%fp-4]
	b	.L54
	 nop
.L55:
	ld	[%fp-72], %g2
	ld	[%fp-4], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f8
	std	%f8, [%g1]
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g1
	st	%g1, [%fp-844]
	ld	[%fp-844], %f10
	fitod	%f10, %f8
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ldd	[%g1], %f10
	fdivd	%f10, %f8, %f8
	ld	[%fp-72], %g2
	ld	[%fp-4], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	std	%f8, [%g1]
	ld	[%fp-4], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-4]
.L54:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-4], %g1
	cmp	%g2, %g1
	bg	.L55
	 nop
	sethi	%hi(.LC8), %g1
	or	%g1, %lo(.LC8), %g1
	ldd	[%g1], %f8
	std	%f8, [%fp-80]
	add	%fp, -232, %g1
	mov	%g1, %o0
	mov	0, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -304, %g1
	mov	%g1, %o0
	mov	0, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -328, %g1
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	stb	%g0, [%fp-5]
	st	%g0, [%fp-12]
	st	%g0, [%fp-12]
	b	.L56
	 nop
.L59:
	ld	[%fp-12], %g2
	ld	[%fp+72], %g1
	cmp	%g2, %g1
	bge	.L57
	 nop
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-52], %g2
	add	%g2, %g1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f10
	mov	%i1, %g2
	sll	%g2, 3, %g2
	ld	[%fp+76], %g3
	add	%g3, %g2, %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f8
	mov	%i1, %g2
	sll	%g2, 4, %g2
	ld	[%fp+76], %g3
	add	%g3, %g2, %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	b	.L58
	 nop
.L57:
	ld	[%fp-12], %g2
	ld	[%fp+72], %g1
	sub	%g2, %g1, %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g1
	ld	[%fp+76], %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f10
	mov	%i1, %g2
	sll	%g2, 3, %g2
	ld	[%fp+76], %g3
	add	%g3, %g2, %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %f8
	mov	%i1, %g2
	sll	%g2, 4, %g2
	ld	[%fp+76], %g3
	add	%g3, %g2, %g3
	ld	[%fp-12], %g2
	sll	%g2, 3, %g2
	add	%g3, %g2, %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
.L58:
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L56:
	ld	[%fp+72], %g1
	add	%g1, %g1, %g1
	mov	%g1, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L59
	 nop
.L75:
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 1
	bne	.L60
	 nop
	st	%g0, [%fp-12]
	b	.L61
	 nop
.L62:
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+8], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+8]
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+16], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+16]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L61:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L62
	 nop
.L60:
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bne	.L63
	 nop
	st	%g0, [%fp-12]
	b	.L64
	 nop
.L65:
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+16], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+16]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L64:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L65
	 nop
.L63:
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 3
	bne	.L66
	 nop
	st	%g0, [%fp-12]
	b	.L67
	 nop
.L68:
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1+8], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1+8]
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	ldd	[%g1], %f8
	fnegs	%f8, %f8
	ld	[%fp-52], %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	add	%g3, %g1, %g1
	std	%f8, [%g1]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L67:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L68
	 nop
.L66:
	st	%g0, [%fp-12]
	b	.L69
	 nop
.L70:
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-52], %g2
	add	%g2, %g1, %g1
	add	%fp, -832, %g2
	mov	%g2, %o0
	mov	%g3, %o1
	mov	%g1, %o2
	call	outer_product, 0
	 nop
	ld	[%fp-72], %g2
	ld	[%fp-12], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	ldd	[%g1], %f8
	add	%fp, -832, %g2
	add	%fp, -832, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	std	%f8, [%fp-856]
	ldd	[%fp-856], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -232, %g3
	add	%fp, -232, %g2
	add	%fp, -832, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L69:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L70
	 nop
	st	%g0, [%fp-12]
	b	.L71
	 nop
.L72:
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-44], %g2
	add	%g2, %g1, %g3
	ld	[%fp-12], %g2
	mov	%g2, %g1
	add	%g1, %g1, %g1
	add	%g1, %g2, %g1
	sll	%g1, 3, %g1
	ld	[%fp-52], %g2
	add	%g2, %g1, %g1
	add	%fp, -688, %g2
	mov	%g2, %o0
	mov	%g3, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	ld	[%fp-72], %g2
	ld	[%fp-12], %g1
	sll	%g1, 3, %g1
	add	%g2, %g1, %g1
	ldd	[%g1], %f8
	add	%fp, -688, %g1
	mov	%g1, %o0
	std	%f8, [%fp-856]
	ldd	[%fp-856], %o4
	mov	%o4, %o1
	mov	%o5, %o2
	call	scale_vec, 0
	 nop
	add	%fp, -328, %g3
	add	%fp, -328, %g2
	add	%fp, -688, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L71:
	sethi	%hi(N), %g1
	or	%g1, %lo(N), %g1
	ldub	[%g1], %g1
	and	%g1, 0xff, %g2
	ld	[%fp-12], %g1
	cmp	%g2, %g1
	bg	.L72
	 nop
	add	%fp, -232, %g1
	mov	%g1, %o0
	call	trace, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-576]
	add	%fp, -304, %g2
	add	%fp, -232, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	T, 0
	 nop
	add	%fp, -304, %g3
	add	%fp, -304, %g2
	add	%fp, -232, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	add	%fp, -400, %g2
	add	%fp, -304, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	adjoint, 0
	 nop
	add	%fp, -400, %g1
	mov	%g1, %o0
	call	trace, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-584]
	ldd	[%fp-328], %f10
	ldd	[%fp-328], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-320], %f12
	ldd	[%fp-320], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-312], %f12
	ldd	[%fp-312], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-592]
	add	%fp, -304, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-608]
	add	%fp, -640, %g3
	add	%fp, -304, %g2
	add	%fp, -328, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	add	%fp, -328, %g2
	add	%fp, -640, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-600]
	add	%fp, -664, %g3
	add	%fp, -304, %g2
	add	%fp, -640, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	add	%fp, -328, %g2
	add	%fp, -664, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	std	%f8, [%fp-616]
	ldd	[%fp-80], %f8
	std	%f8, [%fp-24]
	st	%g0, [%fp-12]
	b	.L73
	 nop
.L74:
	add	%fp, -616, %g1
	mov	%g1, %g2
	ldd	[%fp-24], %o0
	call	f.1212, 0
	 nop
	std	%f0, [%fp-88]
	add	%fp, -616, %g1
	mov	%g1, %g2
	ldd	[%fp-24], %o0
	call	f_bar.1217, 0
	 nop
	std	%f0, [%fp-96]
	ldd	[%fp-88], %f10
	ldd	[%fp-96], %f8
	fdivd	%f10, %f8, %f8
	ldd	[%fp-24], %f10
	fsubd	%f10, %f8, %f8
	std	%f8, [%fp-24]
	ld	[%fp-12], %g1
	add	%g1, 1, %g1
	st	%g1, [%fp-12]
.L73:
	ld	[%fp-12], %g1
	cmp	%g1, 9
	ble	.L74
	 nop
	ldd	[%fp-576], %f8
	ldd	[%fp-24], %f10
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-24]
	add	%fp, -832, %g1
	mov	%g1, %o0
	mov	1, %o1
	call	matrix_construct, 0
	 nop
	add	%fp, -832, %g2
	add	%fp, -832, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	ldd	[%fp-24], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -472, %g2
	add	%fp, -304, %g1
	sethi	%hi(.LC9), %g3
	or	%g3, %lo(.LC9), %g3
	ldd	[%g3], %f8
	mov	%g2, %o0
	mov	%g1, %o1
	std	%f8, [%fp-856]
	ldd	[%fp-856], %o2
	call	scale_matrix, 0
	 nop
	add	%fp, -472, %g3
	add	%fp, -472, %g2
	add	%fp, -832, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_matrix, 0
	 nop
	ldub	[%fp-5], %g1
	add	%g1, 1, %g1
	stb	%g1, [%fp-5]
	add	%fp, -472, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	fmovs	%f0, %f10
	fmovs	%f1, %f11
	ldd	[%fp-64], %f8
	fcmped	%f10, %f8
	nop
	fbl	.L75
	 nop
	add	%fp, -472, %g1
	mov	%g1, %o0
	call	det, 0
	 nop
	std	%f0, [%fp-32]
	add	%fp, -568, %g2
	add	%fp, -472, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	adjoint, 0
	 nop
	add	%fp, -496, %g3
	add	%fp, -568, %g2
	add	%fp, -328, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	matmul, 0
	 nop
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 2
	bne	.L76
	 nop
	add	%fp, -712, %g1
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -712, %g2
	add	%fp, -496, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-104]
	add	%fp, -496, %g3
	add	%fp, -712, %g2
	add	%fp, -496, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -712, %g1
	mov	%g1, %o0
	ld	[%fp-32], %o1
	ld	[%fp-28], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -496, %g3
	add	%fp, -496, %g2
	add	%fp, -712, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-104], %f8
	std	%f8, [%fp-32]
	b	.L77
	 nop
.L76:
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 3
	bne	.L78
	 nop
	add	%fp, -736, %g1
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -736, %g2
	add	%fp, -496, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-112]
	add	%fp, -496, %g3
	add	%fp, -736, %g2
	add	%fp, -496, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -736, %g1
	mov	%g1, %o0
	ld	[%fp-32], %o1
	ld	[%fp-28], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -496, %g3
	add	%fp, -496, %g2
	add	%fp, -736, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-112], %f8
	std	%f8, [%fp-32]
	b	.L77
	 nop
.L78:
	ldub	[%fp-5], %g1
	and	%g1, 0xff, %g1
	cmp	%g1, 4
	bne	.L77
	 nop
	add	%fp, -760, %g1
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f10
	sethi	%hi(.LC7), %g2
	or	%g2, %lo(.LC7), %g2
	ldd	[%g2], %f8
	sethi	%hi(.LC8), %g2
	or	%g2, %lo(.LC8), %g2
	ldd	[%g2], %g2
	std	%g2, [%fp-840]
	ld	[%fp-836], %g4
	st	%g4, [%sp+92]
	mov	%g2, %o5
	mov	%g1, %o0
	std	%f10, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o1
	mov	%g3, %o2
	std	%f8, [%fp-856]
	ldd	[%fp-856], %g2
	mov	%g2, %o3
	mov	%g3, %o4
	call	Vec_construct, 0
	 nop
	add	%fp, -760, %g2
	add	%fp, -496, %g1
	mov	%g2, %o0
	mov	%g1, %o1
	call	dot, 0
	 nop
	fmovs	%f0, %f8
	fmovs	%f1, %f9
	fnegs	%f8, %f8
	std	%f8, [%fp-120]
	add	%fp, -496, %g3
	add	%fp, -760, %g2
	add	%fp, -496, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	cross, 0
	 nop
	add	%fp, -760, %g1
	mov	%g1, %o0
	ld	[%fp-32], %o1
	ld	[%fp-28], %o2
	call	scale_vec, 0
	 nop
	add	%fp, -496, %g3
	add	%fp, -496, %g2
	add	%fp, -760, %g1
	mov	%g3, %o0
	mov	%g2, %o1
	mov	%g1, %o2
	call	add_vec, 0
	 nop
	ldd	[%fp-120], %f8
	std	%f8, [%fp-32]
.L77:
	ldd	[%fp-496], %f8
	std	%f8, [%fp-128]
	ldd	[%fp-488], %f8
	std	%f8, [%fp-136]
	ldd	[%fp-480], %f8
	std	%f8, [%fp-144]
	ldd	[%fp-32], %f8
	std	%f8, [%fp-152]
	ldd	[%fp-128], %f10
	ldd	[%fp-128], %f8
	fmuld	%f10, %f8, %f10
	ldd	[%fp-136], %f12
	ldd	[%fp-136], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-144], %f12
	ldd	[%fp-144], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f10
	ldd	[%fp-152], %f12
	ldd	[%fp-152], %f8
	fmuld	%f12, %f8, %f8
	faddd	%f10, %f8, %f8
	std	%f8, [%fp-856]
	ldd	[%fp-856], %o0
	call	square_root, 0
	 nop
	std	%f0, [%fp-160]
	ldd	[%fp-128], %f10
	ldd	[%fp-160], %f8
	fdivd	%f10, %f8, %f8
	ld	[%fp+68], %g1
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 8, %g1
	ldd	[%fp-136], %f10
	ldd	[%fp-160], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 16, %g1
	ldd	[%fp-144], %f10
	ldd	[%fp-160], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%g1]
	ld	[%fp+68], %g1
	add	%g1, 24, %g1
	ldd	[%fp-152], %f10
	ldd	[%fp-160], %f8
	fdivd	%f10, %f8, %f8
	std	%f8, [%g1]
	mov	%i0, %sp
	restore
	jmp	%o7+8
	 nop
	.size	quest, .-quest
	.align 4
	.type	f_bar.1217, #function
	.proc	07
f_bar.1217:
	save	%sp, -112, %sp
	std	%i0, [%fp-16]
	mov	%g2, %g1
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f10
	ldd	[%fp-16], %f8
	faddd	%f8, %f8, %f12
	ldd	[%fp-16], %f8
	fmuld	%f12, %f8, %f12
	ldd	[%g1+40], %f8
	faddd	%f8, %f8, %f14
	ldd	[%g1+40], %f8
	fmuld	%f14, %f8, %f8
	fsubd	%f12, %f8, %f12
	ldd	[%g1+32], %f8
	faddd	%f12, %f8, %f12
	ldd	[%g1+24], %f8
	fsubd	%f12, %f8, %f8
	fmuld	%f10, %f8, %f8
	std	%f8, [%fp-8]
	ldd	[%g1+16], %f8
	ldd	[%fp-8], %f10
	fsubd	%f10, %f8, %f10
	ldd	[%g1+8], %f8
	fsubd	%f10, %f8, %f8
	fmovs	%f8, %f0
	fmovs	%f9, %f1
	restore
	jmp	%o7+8
	 nop
	.size	f_bar.1217, .-f_bar.1217
	.section	".rodata"
	.align 8
.LC10:
	.asciz	"DEBUG"
	.align 8
.LC11:
	.asciz	"main.c"
	.align 8
.LC12:
	.asciz	"q_3.x = %lf"
	.align 8
.LC13:
	.asciz	"q_3.y = %lf"
	.align 8
.LC14:
	.asciz	"q_3.z = %lf"
	.align 8
.LC15:
	.asciz	"q_4 = %lf"
	.section	".text"
	.align 4
	.global main
	.type	main, #function
	.proc	020
main:
	save	%sp, -144, %sp
	sethi	%hi(nos), %g1
	or	%g1, %lo(nos), %g1
	ld	[%g1], %g1
	add	%fp, -32, %g2
	mov	%g2, %o0
	mov	%g1, %o1
	sethi	%hi(data), %g1
	or	%g1, %lo(data), %o2
	call	quest, 0
	 nop
	ldd	[%fp-32], %g2
	std	%g2, [%fp-40]
	ld	[%fp-36], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1266), %g1
	or	%g1, %lo(__func__.1266), %o2
	mov	405, %o3
	sethi	%hi(.LC12), %g1
	or	%g1, %lo(.LC12), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-24], %g2
	std	%g2, [%fp-40]
	ld	[%fp-36], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1266), %g1
	or	%g1, %lo(__func__.1266), %o2
	mov	406, %o3
	sethi	%hi(.LC13), %g1
	or	%g1, %lo(.LC13), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-16], %g2
	std	%g2, [%fp-40]
	ld	[%fp-36], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1266), %g1
	or	%g1, %lo(__func__.1266), %o2
	mov	407, %o3
	sethi	%hi(.LC14), %g1
	or	%g1, %lo(.LC14), %o4
	call	__cortos_log_printf, 0
	 nop
	ldd	[%fp-8], %g2
	std	%g2, [%fp-40]
	ld	[%fp-36], %g1
	st	%g1, [%sp+92]
	mov	%g2, %o5
	sethi	%hi(.LC10), %g1
	or	%g1, %lo(.LC10), %o0
	sethi	%hi(.LC11), %g1
	or	%g1, %lo(.LC11), %o1
	sethi	%hi(__func__.1266), %g1
	or	%g1, %lo(__func__.1266), %o2
	mov	408, %o3
	sethi	%hi(.LC15), %g1
	or	%g1, %lo(.LC15), %o4
	call	__cortos_log_printf, 0
	 nop
	mov	0, %o0
	call	cortos_exit, 0
	 nop
	restore
	jmp	%o7+8
	 nop
	.size	main, .-main
	.section	".rodata"
	.align 8
	.type	__func__.1266, #object
	.size	__func__.1266, 5
__func__.1266:
	.asciz	"main"
	.ident	"GCC: (Buildroot 2014.08-g6fa3163) 4.7.4"
	.section	.note.GNU-stack,"",@progbits
