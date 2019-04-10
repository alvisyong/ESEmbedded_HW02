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
	nop
  movs r0, #100
	push {r0}
	//
	//branch w/ link
	//
	bl	sleep

sleep:
	nop
	b	.
