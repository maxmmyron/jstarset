.class final public super enum datatypes/DataType
.super java/lang/Enum
.field public static final enum WORD_TYPE Ldatatypes/DataType;
.field public static final enum SET_TYPE Ldatatypes/DataType;
.field public static final enum CLASS_TYPE Ldatatypes/DataType;
.field public static final enum PATTERN_TYPE Ldatatypes/DataType;
.field private static final synthetic $VALUES [Ldatatypes/DataType;

; NOTE: this was autogenerated by krak2 (this is all for a five line enum???)

.method public static values : ()[Ldatatypes/DataType;
    .code stack 1 locals 0
L0:     getstatic Field datatypes/DataType $VALUES [Ldatatypes/DataType;
L3:     invokevirtual Method [Ldatatypes/DataType; clone ()Ljava/lang/Object;
L6:     checkcast [Ldatatypes/DataType;
L9:     areturn
L10:
        .linenumbertable
            L0 1
        .end linenumbertable
    .end code
.end method

.method public static valueOf : (Ljava/lang/String;)Ldatatypes/DataType;
    .code stack 2 locals 1
L0:     ldc Class datatypes/DataType
L2:     aload_0
L3:     invokestatic Method java/lang/Enum valueOf (Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
L6:     checkcast datatypes/DataType
L9:     areturn
L10:
        .linenumbertable
            L0 1
        .end linenumbertable
    .end code
.end method

.method private <init> : (Ljava/lang/String;I)V
    .code stack 3 locals 3
L0:     aload_0
L1:     aload_1
L2:     iload_2
L3:     invokespecial Method java/lang/Enum <init> (Ljava/lang/String;I)V
L6:     return
L7:
        .linenumbertable
            L0 1
        .end linenumbertable
    .end code
    .signature ()V
.end method

.method static <clinit> : ()V
    .code stack 4 locals 0
L0:     new datatypes/DataType
L3:     dup
L4:     ldc "WORD_TYPE"
L6:     iconst_0
L7:     invokespecial Method datatypes/DataType <init> (Ljava/lang/String;I)V
L10:    putstatic Field datatypes/DataType WORD_TYPE Ldatatypes/DataType;
L13:    new datatypes/DataType
L16:    dup
L17:    ldc "SET_TYPE"
L19:    iconst_1
L20:    invokespecial Method datatypes/DataType <init> (Ljava/lang/String;I)V
L23:    putstatic Field datatypes/DataType SET_TYPE Ldatatypes/DataType;
L26:    new datatypes/DataType
L29:    dup
L30:    ldc "CLASS_TYPE"
L32:    iconst_2
L33:    invokespecial Method datatypes/DataType <init> (Ljava/lang/String;I)V
L36:    putstatic Field datatypes/DataType CLASS_TYPE Ldatatypes/DataType;
L39:    new datatypes/DataType
L42:    dup
L43:    ldc "PATTERN_TYPE"
L45:    iconst_3
L46:    invokespecial Method datatypes/DataType <init> (Ljava/lang/String;I)V
L49:    putstatic Field datatypes/DataType PATTERN_TYPE Ldatatypes/DataType;
L52:    iconst_4
L53:    anewarray datatypes/DataType
L56:    dup
L57:    iconst_0
L58:    getstatic Field datatypes/DataType WORD_TYPE Ldatatypes/DataType;
L61:    aastore
L62:    dup
L63:    iconst_1
L64:    getstatic Field datatypes/DataType SET_TYPE Ldatatypes/DataType;
L67:    aastore
L68:    dup
L69:    iconst_2
L70:    getstatic Field datatypes/DataType CLASS_TYPE Ldatatypes/DataType;
L73:    aastore
L74:    dup
L75:    iconst_3
L76:    getstatic Field datatypes/DataType PATTERN_TYPE Ldatatypes/DataType;
L79:    aastore
L80:    putstatic Field datatypes/DataType $VALUES [Ldatatypes/DataType;
L83:    return
L84:
        .linenumbertable
            L0 2
            L13 3
            L26 4
            L39 5
            L52 1
        .end linenumbertable
    .end code
.end method
.signature Ljava/lang/Enum<Ldatatypes/DataType;>;
.sourcefile "datatypes/DataType.java"
.end class
