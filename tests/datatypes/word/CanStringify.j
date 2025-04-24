.class public super datatypes/word/CanStringify
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
    invokevirtual Method java/lang/Object toString ()Ljava/lang/String;
    astore_2

    getstatic Field java/lang/System out Ljava/io/PrintStream;
		aload_2
		invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V
		return
	.end code
.end method
.end class
