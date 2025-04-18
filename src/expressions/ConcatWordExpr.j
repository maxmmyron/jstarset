.class public super ConcatWordExpr
.super expressions/WordExpr

.field public w1 Ldatatypes/Word;
.field public w2 Ldatatypes/Word;

.method public <init> : (Ldatatypes/Word;Ldatatypes/Word;)V
	.code stack 2 locals 3
		aload_0
		invokespecial Method expressions/WordExpr <init> ()V

		aload_0
		aload_1
		putfield Field ConcatWordExpr w1 Ldatatypes/Word;

		aload_0
		aload_2
		putfield Field ConcatWordExpr w2 Ldatatypes/Word;

		return
	.end code
.end method

.method public evaluate : ()Ldatatypes/Word;
	.code stack 5 locals 4
		new datatypes/Word
		dup
		dup
		invokespecial Method Word <init> ()V

		aload_0
		getfield Field expressions/ConcatWordExpr w1 Ldatatypes/Word;
		getfield Field datatypes/Word litVal Ljava/lang/String;

		aload_0
		getfield Field expressions/ConcatWordExpr w2 Ldatatypes/Word;
		getfield Field datatypes/Word litVal Ljava/lang/String;

		invokevirtual Method java/lang/String concat (Ljava/lang/String;)Ljava/lang/String;

		putfield datatypes/Word litVal Ljava/lang/String;

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
