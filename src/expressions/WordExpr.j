.class public abstract expressions/WordExpr
.super expressions/Expr

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method expressions/Expr <init> ()V
		return
	.end code
.end method

.method public type : ()Ldatatypes/DataType;
	.code stack 1 locals 1
		getstatic Field datatypes/DataType WORD_TYPE Ldatatypes/DataType;
		areturn
	.end code
.end method

.method public abstract evaluate : ()Ldatatypes/Word;
.end method

.method public abstract parallel_safe : (Lutil/Accums;)Z
.end method

.method public abstract accum_safe : (Lutil/Accums;I)Z
.end method

.method public abstract datetime_safe : ()Z
.end method

.end class
