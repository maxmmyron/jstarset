.class public expressions/WordListSetExpr
.super expressions/SetExpr

.field public body Lexpressions/WordExprList;

.method public <init> : (Lexpressions/WordExprList;)V
	.code stack 2 locals 4
		aload_0
		invokespecial Method expressions/SetExpr <init> ()V

		aload_0
		aload_1
		putfield expressions/WordListSetExpr body Lexpressions/WordExprList;
		return
	.end code
.end method

.method public evaluate : ()Ldatatypes/Set;
	.code stack 5 locals 1
    new datatypes/Set
    dup

    aload_0
    getfield expressions/WordListSetExpr body Lexpressions/WordExprList;

    new util/Environment
		dup
		invokespecial Method util/Environment <init> ()V

		invokespecial Method datatypes/Set <init> (Lexpressions/WordExprList;Lutil/Environment;)V

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
