.class public datatypes/Set
.super java/util/HashSet
.signature Ljava/util/HashSet<Ldatatypes/Word;>;

.field public ioSeparator C
.field public concatSeparator L/java/lang/String;
.field public phony Z

; constructor
.method public <init> : ()V
	.code stack 1 locals 1

		aload_0
		invokespecial Method java/lang/HashSet <init> ()V
		return

	.end code
.end method

.method public <init> : (Lexpressions/WordExprList;Lutil/Environment;)V
	.code stack 3 locals 4
		aload_0
		invokespecial Method java/lang/HashSet <init> ()V

		aload_1
		invokevirtual Method expressions/WordExprList size ()I
		istore_3
							; i = 0
		iconst_0
		istore 4
		goto LCHECK
LLOOP:				; loads a new Word into the Set.
		aload_0

							; load the array ref and the index
		aload_1
		iload 4
							; get the expression, and evaluate it (which returns a Word)
		invokevirtual Method expressions/ExprList get (I)Lexpressions/Expr;
		invokevirtual Method expressions/WordExpr evaluate ()Lexpressions/Word;

							; add to set and discard boolean result
		invokevirtual Method datatypes/Set add (Lexpressions/Word;)Z
		pop

							; i++
		iinc 4 1
LCHECK:
							; i < .size()
		iload 4		; i
		iload_3		; .size()
		if_icmplt LLOOP

							; loop over
		return
	.end code
.end method

.end class
