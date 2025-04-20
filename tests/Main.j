.class public super Main
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	; stack 3: most we have in stack at one time is a double (two words) and
	; print stream ref (one word)
	; locals 2: because we only ever have two locals. 1. implicit this ref,
	; and 2. the stored Word
	.code stack 6 locals 2
		; Init word type. We duplicate reference so we still have a ref after
		; we invoke init func (which consumes a ref)
		new datatypes/Word
		dup
		invokespecial Method datatypes/Word <init> ()V

		astore_1
		getstatic Field java/lang/System out Ljava/io/PrintStream;

		; getting field from Word ref consumes ref and leaves stack with a
		; double and the System.out field.
		aload_1
		getfield Field datatypes/Word numVal D

		invokevirtual Method java/io/PrintStream println (D)V

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
