.class public Lcom/alipay/pushsdk/push/c/e;
.super Lcom/alipay/pushsdk/push/c/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/c/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;-><init>()V

    sget v0, Lcom/alipay/pushsdk/push/c/b;->c:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/e;->d:I

    sget v0, Lcom/alipay/pushsdk/push/c/b;->d:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/e;->e:I

    sget v0, Lcom/alipay/pushsdk/push/c/b;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->f(I)V

    sget v0, Lcom/alipay/pushsdk/push/c/b;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->g(I)V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->f()V

    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x4

    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-array v0, v4, [B

    invoke-static {p1, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/alipay/pushsdk/push/c/e;->d([B)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->e(I)V

    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgLen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c([B)V
    .locals 6

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    ushr-int/lit8 v2, v1, 0x7

    and-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v1, v1, 0x5

    and-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->a(I)V

    invoke-virtual {p0, v2}, Lcom/alipay/pushsdk/push/c/e;->b(I)V

    invoke-virtual {p0, v3}, Lcom/alipay/pushsdk/push/c/e;->c(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/push/c/e;->d(I)V

    const/4 v1, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getHdrfromRead() got valid packet! msgId="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final j()I
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/e;->g(I)V

    :cond_0
    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->b:I

    return v0
.end method

.method public final k()[B
    .locals 9

    const/4 v8, 0x3

    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget v0, p0, Lcom/alipay/pushsdk/push/c/e;->e:I

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v2

    if-ne v2, v8, :cond_0

    move v0, v1

    :cond_0
    new-array v0, v0, [B

    iget v2, p0, Lcom/alipay/pushsdk/push/c/e;->d:I

    shl-int/lit8 v2, v2, 0x4

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v5

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->b()I

    move-result v2

    shl-int/lit8 v2, v2, 0x7

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->c()I

    move-result v3

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->d()I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    or-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->e()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v7

    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrbufforWrite() the 1st buffer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrbufforWrite() the 2nd buffer:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->a()I

    move-result v2

    if-eq v2, v8, :cond_1

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/e;->g()I

    move-result v2

    invoke-static {v2}, Lcom/alipay/pushsdk/push/c/e;->h(I)[B

    move-result-object v2

    invoke-static {v2, v5, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-static {v1, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/alipay/pushsdk/push/c/e;->c:Ljava/lang/String;

    const-string/jumbo v2, "getHdrbufforWrite() all len=6"

    invoke-static {v6, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method
