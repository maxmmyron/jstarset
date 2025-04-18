.class public abstract Expr
.super java/lang/Object

.field public is_ident B

.method public <init> : ()V
	.code stack 1 locals 1
		aload_0
		invokespecial Method java/lang/Object <init> ()V
		return
	.end code
.end method

.method public abstract type : ()Ldatatypes/DataType;
.end method

; we can declare abstract method like this. there's just no code inside
.method public abstract parallel_safe : (Lutil/Accums;)Z
.end method

.method public abstract accum_safe : (Lutil/Accums;I)Z
.end method

.method public abstract datetime_safe : ()Z
.end method

.end class
