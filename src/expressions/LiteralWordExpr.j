.class public expressions/LiteralWordExpr
.super expressions/WordExpr

.field public val Ljava/lang/String;

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method expressions/WordExpr <init> ()V
		return
	.end code
.end method

.method public <init> : (Ljava/lang/String;)V
	.code stack 2 locals 2
		aload_0
    dup
		invokespecial Method expressions/WordExpr <init> ()V
    aload_1
    putfield Field expressions/LiteralWordExpr val Ljava/lang/String;
		return
	.end code
.end method

.method public evaluate : ()Ldatatypes/Word;
  .code stack 3 locals 1
    new datatypes/Word
    dup
    aload_0
    getfield Field expressions/LiteralWordExpr val Ljava/lang/String;
    invokespecial Method datatypes/Word <init> (Ljava/lang/String;)V
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
