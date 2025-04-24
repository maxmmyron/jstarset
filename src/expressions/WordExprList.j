.class public expressions/WordExprList
.super java/util/ArrayList
.signature Ljava/util/ArrayList<Lexpressions/WordExpr;>;

.method public <init> : ()V
  .code stack 1 locals 1
    aload_0
    invokespecial Method java/util/ArrayList <init> ()V
    return
  .end code
.end method

.method public evaluate : ()Ldatatypes/Word;
  .code stack 2 locals 2
		aconst_null
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