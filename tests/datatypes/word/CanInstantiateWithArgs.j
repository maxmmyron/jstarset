.class public super datatypes/word/CanInstantiateWithArgs
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 2 locals 2
		new datatypes/Word
    ldc "Word Value"
		invokespecial Method datatypes/Word <init> (Ljava/lang/String;)V
		return
	.end code
.end method
.end class
