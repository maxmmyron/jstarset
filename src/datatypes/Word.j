.class public super datatypes/Word
.super java/lang/Object
.field public litVal Ljava/lang/String;
.field public numVal D

.method public <init> : ()V
	.code stack 3 locals 1
		; super()
		aload_0
		invokespecial Method java/lang/Object <init> ()V

		; init litVal with default (null)
		aload_0
		aconst_null
		putfield Field datatypes/Word litVal Ljava/lang/String;

		; init numVal with default NaN
		aload_0
		ldc2_w +NaN			; load NaN into op stack
		putfield Field datatypes/Word numVal D
		return
	.end code
.end method

.method public <init> : (Ljava/lang/String;)V
	.code stack 3 locals 2
		; super()
		aload_0
		invokespecial Method java/lang/Object <init> ()V

		; init litVal with arg
		aload_0
		aload_1
		putfield Field datatypes/Word litVal Ljava/lang/String;

		; init numVal with default NaN
		aload_0
		ldc2_w +NaN			; load NaN into op stack
		putfield Field datatypes/Word numVal D
		return
	.end code
.end method

; compares string values between
.method public equals : (Ljava/lang/Object;)Z
	.code stack 2 locals 2
		aload_0
		aload_1
		if_acmpeq LTRUE

		aload_1
		instanceof datatypes/Word
		ifeq LFALSE ; If null or not a Word, they are not equal

		aload_1
		checkcast datatypes/Word
		getfield Field datatypes/Word litVal Ljava/lang/String;

		aload_0
		getfield Field datatypes/Word litVal Ljava/lang/String;

		invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z

		ireturn

LTRUE:
		iconst_1
		ireturn

LFALSE:
		iconst_0
		ireturn
	.end code
.end method

.method public toString : ()Ljava/lang/String;
	.code stack 2 locals 1
		aload_0
		getfield Field datatypes/Word litVal Ljava/lang/String;
		areturn
	.end code
.end method

.method public hashCode : ()I
	.code stack 1 locals 1
		aload_0
		getfield Field datatypes/Word litVal Ljava/lang/String;
		invokevirtual Method java/lang/Object hashCode ()I
		ireturn
	.end code
.end method

.end class
