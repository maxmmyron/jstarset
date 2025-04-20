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
.method public equals : (Ldatatypes/Word;)Z
	.code stack 2 locals 2
		aload_1
		getfield Field datatypes/Word litVal Ljava/lang/String;

		aload_0
		getfield Field datatypes/Word litVal Ljava/lang/String;

		invokevirtual Method java/lang/String equals (Ljava/lang/String;)Z

		ireturn
	.end code
.end method

.end class
