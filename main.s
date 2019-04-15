.syntax unified

.word 0x20000100
.word _start

.global _start
.type _start, %function
_start:
	nop

	//
	//branch w/o link
	//
	b	label01

label01:
 movs	r1,	#101
 mov	r2,	#102
 movw	r3,	#103
 movs	r0,	#100




	push {r2,r1,r0}


  pop {r3,r2,r1}
 //pop {r2}
	//
	//branch w/ link
	//
	bl	sleep

sleep:
	nop
	b	.
