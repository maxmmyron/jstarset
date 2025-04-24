.class public super datatypes/set/can-instantiate-nonempty/Main
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 6 locals 4
    ; create two words
    new expressions/LiteralWordExpr
    dup
    ldc "Hello"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    astore_2

    new expressions/LiteralWordExpr
    dup
    ldc "World"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    astore_3

    ; create word expr list
    new expressions/WordExprList
    dup
    dup
    dup
    invokespecial Method expressions/WordExprList <init> ()V

    ; add "Hello" wordexpr
    aload_2
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; add "World" wordexpr
    aload_3
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    astore_2

    new datatypes/Set
    dup
    aload_2
    new util/Environment
    dup
    invokespecial Method util/Environment <init> ()V
		invokespecial Method datatypes/Set <init> (Lexpressions/WordExprList;Lutil/Environment;)V
		return
	.end code
.end method
.end class
