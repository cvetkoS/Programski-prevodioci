
main:
			PUSH	%14
			MOV 	%15,%14
			MOV 	$1,-4(%14)
			SUBS	%15,$8,%15
@main_body:
			MOV 	$2,-8(%14)
@if0:
			CMPS 	-4(%14),$1
			JNE 	@false0
@true0:
			ADDS	-8(%14),$1,%0
			MOV 	%0,-4(%14)
			JMP 	@exit0
@false0:
@exit0:
			MOV 	-4(%14),%13
			JMP 	@main_exit
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET