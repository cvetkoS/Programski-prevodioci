
funkcijaSaDvaParametra:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$8,%15
@funkcijaSaDvaParametra_body:
			ADDS	12(%14),8(%14),%0
			MOV 	%0,%13
			JMP 	@funkcijaSaDvaParametra_exit
@funkcijaSaDvaParametra_exit:
			MOV 	%14,%15
			POP 	%14
			RET
funkcijaSaJednimParametrom:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$4,%15
@funkcijaSaJednimParametrom_body:
			ADDS	8(%14),$1,%0
			MOV 	%0,%13
			JMP 	@funkcijaSaJednimParametrom_exit
@funkcijaSaJednimParametrom_exit:
			MOV 	%14,%15
			POP 	%14
			RET
main:
			PUSH	%14
			MOV 	%15,%14
			SUBS	%15,$4,%15
@main_body:
			PUSH	$1
			PUSH	%1
			CALL	funkcijaSaDvaParametra
			ADDS	%15,$8,%15
			MOV 	%13,%0
			MOV 	%0,-4(%14)
			PUSH	$0
			CALL	funkcijaSaJednimParametrom
			ADDS	%15,$4,%15
			MOV 	%13,%0
			MOV 	%0,%13
			JMP 	@main_exit
@main_exit:
			MOV 	%14,%15
			POP 	%14
			RET