.class public expressions/BinSetExpr
.super expressions/SetExpr

.field public op Ldatatypes/SetOp;
.field public left Lexpressions/SetExpr;
.field public right Lexpressions/SetExpr;

.method public <init> : (Ldatatypes/SetOp;Lexpressions/SetExpr;Lexpressions/SetExpr;)V
	.code stack 2 locals 4
		aload_0
		invokespecial Method expressions/SetExpr <init> ()V

		aload_0
		aload_1
		putfield expressions/BinSetExpr op Ldatatypes/SetOp;

		aload_0
		aload_2
		putfield expressions/BinSetExpr left Lexpressions/SetExpr;

		aload_0
		aload_3
		putfield expressions/BinSetExpr right Lexpressions/SetExpr;
		return
	.end code
.end method

.method public evaluate : ()Ldatatypes/Set;
	.code stack 5 locals 2
		new datatypes/Set
		dup
		invokespecial Method datatypes/Set <init> ()V

		aload_0
		getfield expressions/BinSetExpr op Ldatatypes/SetOp;
		invokevirtual Method datatypes/SetOp ordinal ()I

		lookupswitch
			0       : LUNION
			1       : LINTERSECTION
			2       : LDIFFERENCE
			default :	LDEFAULT

LUNION:
		; add all from left
		dup
		aload_0
		getfield expressions/BinSetExpr left Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set addAll (Ljava/util/Collection;)Z
		pop

		; add all from right
		dup
		aload_0
		getfield expressions/BinSetExpr right Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set addAll (Ljava/util/Collection;)Z
		pop

		goto LRET

LINTERSECTION:
		; add all from left
		dup
		aload_0
		getfield expressions/BinSetExpr left Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set addAll (Ljava/util/Collection;)Z
		pop

		; retain those also in right
		dup
		aload_0
		getfield expressions/BinSetExpr right Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set retainAll (Ljava/util/Collection;)Z
		pop

		goto LRET

LDIFFERENCE:
		; add all from left
		dup
		aload_0
		getfield expressions/BinSetExpr left Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set addAll (Ljava/util/Collection;)Z
		pop

		; remove all in right
		dup
		aload_0
		getfield expressions/BinSetExpr right Lexpressions/SetExpr;
		invokevirtual Method expressions/SetExpr evaluate ()Ldatatypes/Set;
		invokevirtual Method datatypes/Set removeAll (Ljava/util/Collection;)Z
		pop

		goto LRET

LDEFAULT:
		iconst_0
		invokestatic Method java/lang/System exit (I)V

LRET:
		areturn

	.end code
.end method

.method public parallel_safe : (Lutil/Accums;)Z
	.code stack 2 locals 2
		iconst_1
		ireturn
	.end code
.end method

.method public accum_safe : (Lutil/Accums;I)Z
	.code stack 2 locals 3
		iconst_1
		ireturn
	.end code
.end method

.method public datetime_safe : ()Z
	.code stack 2 locals 2
		iconst_1
		ireturn
	.end code
.end method

.end class
