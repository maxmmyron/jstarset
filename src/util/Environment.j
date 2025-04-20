.class public util/Environment
.super java/util/ArrayList
.signature Ljava/util/ArrayList<Ldatatypes/Value>;

.method public <init> : ()V
  .code stack 1 locals 1
    aload_0
    invokespecial Method java/util/ArrayList <init> ()V
    return
  .end code
.end method

; TODO: Unusued in starset source, but implementation may be needed
.method public deepCopy : ()Lutil/Environment;
  .code stack 1 locals 1
    aload_0
    areturn
  .end code
.end method

.end class