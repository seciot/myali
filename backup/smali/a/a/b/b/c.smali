.class final La/a/b/b/c;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/d;


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:[Ljava/lang/Object;

.field d:La/a/a/b;


# direct methods
.method public constructor <init>(La/a/a/b;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/b/c;->d:La/a/a/b;

    iput-object p2, p0, La/a/b/b/c;->a:Ljava/lang/Object;

    iput-object p3, p0, La/a/b/b/c;->b:Ljava/lang/Object;

    iput-object p4, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/b/b/c;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/a/b/b/c;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()[Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    iput-object v0, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    iget-object v2, p0, La/a/b/b/c;->c:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final d()La/a/a/e;
    .locals 1

    iget-object v0, p0, La/a/b/b/c;->d:La/a/a/b;

    invoke-interface {v0}, La/a/a/b;->a()La/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b/b/c;->d:La/a/a/b;

    invoke-interface {v0}, La/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/b/b/c;->d:La/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
