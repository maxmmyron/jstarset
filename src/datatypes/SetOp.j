.class final public super enum datatypes/SetOp
.super java/lang/Enum
.field public static final enum UNION Ldatatypes/SetOp;
.field public static final enum INTERSECTION Ldatatypes/SetOp;
.field public static final enum DIFFERENCE Ldatatypes/SetOp;
.field private static final synthetic $VALUES [Ldatatypes/SetOp;

.method public static values : ()[Ldatatypes/SetOp;
  .code stack 1 locals 0
    getstatic Field datatypes/SetOp $VALUES [Ldatatypes/SetOp;
    invokevirtual Method [Ldatatypes/SetOp; clone ()Ljava/lang/Object;
    checkcast [Ldatatypes/SetOp;
    areturn
  .end code
.end method


.method public static valueOf : (Ljava/lang/String;)Ldatatypes/SetOp;
  .code stack 2 locals 1
    ldc Class datatypes/SetOp
    aload_0
    invokestatic Method java/lang/Enum valueOf (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    checkcast datatypes/SetOp
    areturn
  .end code
.end method

.method private <init> : (Ljava/lang/String;I)V
  .code stack 3 locals 3
    aload_0
    aload_1
    iload_2
    invokespecial Method java/lang/Enum <init> (Ljava/lang/String;I)V
    return
  .end code
  .signature ()V
.end method

; static class field initialization
.method static <clinit> : ()V
  .code stack 4 locals 0
    new datatypes/SetOp
    dup
    ldc "UNION"
    iconst_0
    invokespecial Method datatypes/SetOp <init> (Ljava/lang/String;I)V
    putstatic Field datatypes/SetOp UNION Ldatatypes/SetOp;

    new datatypes/SetOp
    dup
    ldc "INTERSECTION"
    iconst_1
    invokespecial Method datatypes/SetOp <init> (Ljava/lang/String;I)V
    putstatic Field datatypes/SetOp INTERSECTION Ldatatypes/SetOp;

    new datatypes/SetOp
    dup
    ldc "DIFFERENCE"
    iconst_2
    invokespecial Method datatypes/SetOp <init> (Ljava/lang/String;I)V
    putstatic Field datatypes/SetOp DIFFERENCE Ldatatypes/SetOp;

    ; build out $VALUES array
    iconst_3
    anewarray datatypes/SetOp
    dup

    iconst_0
    getstatic Field datatypes/SetOp UNION Ldatatypes/SetOp;
    aastore

    dup
    iconst_1
    getstatic Field datatypes/SetOp INTERSECTION Ldatatypes/SetOp;
    aastore

    dup
    iconst_2
    getstatic Field datatypes/SetOp DIFFERENCE Ldatatypes/SetOp;
    aastore

    putstatic Field datatypes/SetOp $VALUES [Ldatatypes/SetOp;
    return
  .end code
.end method

.signature Ljava/lang/Enum<Ldatatypes/SetOp;>;
.end class

