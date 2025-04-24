.class public super datatypes/word/HasLitValue
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 3 locals 3
		new datatypes/Word
    dup
    ldc "ABC"
		invokespecial Method datatypes/Word <init> (Ljava/lang/String;)V

    ; get string values, and compare
    getfield datatypes/Word litVal Ljava/lang/String;
    ldc "ABC"

    invokevirtual Method java/lang/String equals (Ljava/lang/Object;)Z

    ; if returned 0 (false) then strings are not equal... exit with code 1
    ifeq LRET_INVALID

    ; otherwise, exit fine
    iconst_0
    invokestatic java/lang/System exit (I)V

LRET_INVALID:
    iconst_1
    invokestatic java/lang/System exit (I)V

		return
	.end code
.end method
.end class
