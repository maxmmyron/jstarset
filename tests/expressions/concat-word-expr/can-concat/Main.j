.class public super expressions/concat-word-expr/can-concat/Main
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 6 locals 2
		new expressions/ConcatWordExpr
		dup

		new datatypes/Word
		dup
		ldc "Hello "
		invokespecial Method datatypes/Word <init> (Ljava/lang/String;)V

		new datatypes/Word
		dup
		ldc "World"
		invokespecial Method datatypes/Word <init> (Ljava/lang/String;)V

		invokespecial Method expressions/ConcatWordExpr <init> (Ldatatypes/Word;Ldatatypes/Word;)V

		invokevirtual Method expressions/ConcatWordExpr evaluate ()Ldatatypes/Word;
		getfield Field datatypes/Word litVal Ljava/lang/String;
		astore_1

		getstatic Field java/lang/System out Ljava/io/PrintStream;
		aload_1
		invokevirtual Method java/io/PrintStream println (Ljava/lang/String;)V

		return
	.end code
.end method
.end class
