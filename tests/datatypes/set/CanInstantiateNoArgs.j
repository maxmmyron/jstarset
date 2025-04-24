.class public super datatypes/set/CanInstantiateNoArgs
.super java/lang/Object

.method public <init> : ()V
	.code stack 2 locals 1
		aload_0
    dup
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 2 locals 2
		new datatypes/Set
    dup
		invokespecial Method datatypes/Set <init> ()V
		return
	.end code
.end method
.end class
