! init_00.s for linking with thread 0,0 only

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: common_init_header
!   Code executed across all threads, but
!   only linked to the source of thread (0,0)
!   NOTE: The size of this header is manually computed
!         and stored in consts.INIT_HEADER_SIZE vairable.
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!
! Ajit startup initialization code.
!
.section .text.ajitstart
.global _start;
_start: ! always starts at 0x00000000
  ! enable traps, set current window=0
  set 0x10E0, %l0
  wr %l0, %psr

  ! Read CORE,THREAD IDs into %l1.
  ! format of asr29
  !    0x50 0x52 core-id thread-id
  rd %asr29, %l1

  ! initialize some ASR's (AD: Is this optional?)
  wr 0x1, %asr16
  wr 0x2, %asr17
  wr 0x3, %asr18
  wr 0x4, %asr19

WIMSET:
  set 0x2, %l0		! window 1 is marked invalid...  we start at window 0
  wr %l0, 0x0, %wim	!

  ! trap table. (AD: is this common to all threads? or only to thread0?)
  set	trap_table_base, %l0
  wr	%l0, 0x0, %tbr

  ! jump to skip data area ahead
  call INIT_CORTOS_ALLOCATE_AREA_TO_ZERO
  nop

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : common_init_header
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


! Allocates a memory area and initializes it to zero.
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: allocate_memory_for_queue_lockvars_etc
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


.align 8
CORTOS_INIT_TO_ZERO_START:

.align 8
CORTOS_RESERVED_SPACE: .skip 256 ! size in multiples of 8

.align 8
CORTOS_INT_ARRAY_BASE: .skip 1024 ! size in multiples of 8

.align 8
CORTOS_RES_LOCK_VARS_BASE: .skip 128 ! size in multiples of 8

.align 8
CORTOS_LOCK_VARS_BASE: .skip 128 ! size in multiples of 8

.align 8
CORTOS_QUEUE_LOCK_VARS_BASE: .skip 128 ! size in multiples of 8

.align 8
CORTOS_QUEUE_HEADERS_BASE: .skip 512 ! size in multiples of 8

.align 8
CORTOS_QUEUES_BASE: .skip 32768 ! size in multiples of 8

.align 8
CORTOS_INIT_TO_ZERO_END:

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : allocate_memory_for_queue_lockvars_etc
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!






!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: init_allocated_memory_to_zero
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

! initialize the region above to zeros
! Only for thread 0,0 enters here.
INIT_CORTOS_ALLOCATE_AREA_TO_ZERO:

! (0,0)=0x50520000, (0,1)=0x50520001, (1,0)=0x50520100, (1,1)=0x50520101, ...
set 0x50520000, %l2
subcc %l1, %l2, %g0
bnz CORTOS_SETUP_THREADS
nop

  ! set the base address
  sethi %hi(CORTOS_INIT_TO_ZERO_START}), %l0
  or %l0, %lo(CORTOS_INIT_TO_ZERO_START), %l0

  ! set the first illegal address
  sethi %hi(CORTOS_INIT_TO_ZERO_END), %l2
  or %l2, %lo(CORTOS_INIT_TO_ZERO_END), %l2
  sub %l2, 0x4, %l2         ! address of last valid word location

! loop to store zeros word by word (assumes size is at least 4 bytes)
zero_init_cortos_allocate_area:
  st %g0, [%l0]             ! zero stored here
  subcc %l0, %l2, %g0
  bne zero_init_cortos_allocate_area
  add %l0, 0x4, %l0         ! get address of next word

! if here, then the region is initialized to zeros

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : init_allocated_memory_to_zero
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!




!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: threads_setup
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

CORTOS_SETUP_THREADS:
!!!!!  setting up stacks in each thread....


SETUP_THREAD_0_0:

  ! (0,0)=0x50520000, (0,1)=0x50520001, (1,0)=0x50520100, (1,1)=0x50520101, ...
  set 0x50520000, %l2
  subcc %l1, %l2, %g0
  bnz CORTOS_HALT_ERROR
  nop


  !!!!!!!!!!!!!!!!!!!   START: thread (0,0) setup section !!!!!!!!!!!!!!!!!!
  set 0x302000, %sp  ! set stack address
  clr %fp

  !
  ! set up virtual -> physical map.
  !  In this example, the same VA -> PA translation is used by all
  !  threads.  The page table is set up by thread (0,0).
  !
  call page_table_setup
  nop

  !
  !  set PT_FLAG = 1.   This indicates that the page table has been written.
  !
  set PT_FLAG, %l6
  mov 1, %l7
  st %l7, [%l6]

  call __cortos_enable_serial
  nop

  !  Thread (0,0) jumps to AFTER_PTABLE_SETUP.
  ba AFTER_PTABLE_SETUP
  nop
  !!!!!!!!!!!!!!!!!!!   END  : thread (0,0) setup section !!!!!!!!!!!!!!!!!!





!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : threads_setup
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: mmu_and_page_table_waits
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

AFTER_PTABLE_SETUP:
  !  threads (0,0), (1,0), ... come here, and check if PT_FLAG is set.
  set PT_FLAG, %l6
  ld [%l6], %l7

  mov 0x1, %i0
  subcc %i0, %l7,  %g0

  ! l7 = 1 after page tables have been setup.
  bnz AFTER_PTABLE_SETUP
  nop

  call set_context_table_pointer
  nop

  ! enable mmu.. write 0x1 into mmu control register.
  set 0x1, %o0
  sta %o0, [%g0] 0x4

  ! jump to run threads.
  ba CORTOS_START_THREADS
  nop

WAIT_UNTIL_MMU_IS_ENABLED:
  ! threads (0,1), (1,1), ... will spin here until their mmu
  ! is enabled.
  ! read mmu control register.
  set 0x1, %o0
  lda [%g0] 0x4, %o0
  andcc %o0, 0x1, %o0

  ! spin as long as mmu_control = 0.
  bz WAIT_UNTIL_MMU_IS_ENABLED
  nop

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : mmu_and_page_table_waits
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: threads_user_logic
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

CORTOS_START_THREADS:


EXECUTE_THREAD_0_0:

  ! (0,0)=0x50520000, (0,1)=0x50520001, (1,1)=0x50520101, ...
  set 0x50520000, %l2
  subcc %l1, %l2, %g0
  bnz CORTOS_HALT_ERROR
  nop


!!!!!!! BLOCK START: Call_functions_sequentially.
  call main
  nop
!!!!!!! BLOCK END  : Call_functions_sequentially.


!!!!!!! BLOCK START: Call_functions_in_a_loop.
START_THREAD_0_0_LOOP:


!!!!!!! BLOCK END  : Call_functions_in_a_loop.

  ba CORTOS_HALT_OKAY  ! in case of cortos loop, this is unreachable
  nop


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : threads_user_logic
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK START: common_init_footer
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

CORTOS_HALT_ERROR:
  ! Write some value into asr16 to close.
  ! 0x1 is halt due to error while initialization in this script.
  wr 0x1, %asr16
  ta 0

CORTOS_HALT_OKAY:
  ! Write some value into asr16 to close.
  ! 0x0 is an expected/normal halt.
  wr 0x0, %asr16
  ta 0

.align 8
  PT_FLAG: .word 0x0

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! BLOCK END  : common_init_footer
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

