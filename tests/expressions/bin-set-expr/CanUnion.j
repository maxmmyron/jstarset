.class public super expressions/bin-set-expr/CanUnion
.super java/lang/Object

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public static main : ([Ljava/lang/String;)V
	.code stack 11 locals 3
    new expressions/BinSetExpr
    dup

    ; get op (union)

    getstatic Field datatypes/SetOp UNION Ldatatypes/SetOp;

    ; build setexpr 1 {"a", "b", "c"}

    new expressions/WordListSetExpr
    dup

    ; create WordExprList for holding words
    new expressions/WordExprList
    dup
    invokespecial Method expressions/WordExprList <init> ()V

    ; add "A"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "A"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; add "B"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "B"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; add "C"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "C"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; instantiate WordListSetExpr
    invokespecial Method expressions/WordListSetExpr <init> (Lexpressions/WordExprList;)V

    ; build setexpr 2 {"c", "d", "e"}

    new expressions/WordListSetExpr
    dup

    ; create WordExprList for holding words
    new expressions/WordExprList
    dup
    invokespecial Method expressions/WordExprList <init> ()V

    ; add "C"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "C"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; add "D"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "D"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; add "E"
    dup
    new expressions/LiteralWordExpr
    dup
    ldc "E"
    invokespecial Method expressions/LiteralWordExpr <init> (Ljava/lang/String;)V
    invokevirtual Method expressions/WordExprList add (Ljava/lang/Object;)Z
    pop

    ; instantiate WordListSetExpr
    invokespecial Method expressions/WordListSetExpr <init> (Lexpressions/WordExprList;)V

    ; stack is now <top>: WordListSetExpr WordListSetExpr SetOp BinSetExpr ...
    invokespecial Method expressions/BinSetExpr <init> (Ldatatypes/SetOp;Lexpressions/SetExpr;Lexpressions/SetExpr;)V

    invokevirtual Method expressions/BinSetExpr evaluate ()Ldatatypes/Set;

    ; debug: printing size
    invokevirtual Method datatypes/Set size ()I
    istore_2

    getstatic Field java/lang/System out Ljava/io/PrintStream;
		iload_2
		invokevirtual Method java/io/PrintStream println (I)V

		return
	.end code
.end method
.end class
