.class public interface abstract Lcom/j256/ormlite/dao/ForeignCollection;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/j256/ormlite/dao/CloseableIterable;
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/j256/ormlite/dao/CloseableIterable",
        "<TT;>;",
        "Ljava/util/Collection",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract closeLastIterator()V
.end method

.method public abstract getWrappedIterable()Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract isEager()Z
.end method

.method public abstract iteratorThrow()Lcom/j256/ormlite/dao/CloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/CloseableIterator",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract refresh(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract refreshAll()I
.end method

.method public abstract refreshCollection()I
.end method

.method public abstract update(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public abstract updateAll()I
.end method
