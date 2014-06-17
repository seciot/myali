.class public Lcom/alipay/mobile/longlink/b/c/e;
.super Lcom/alipay/mobile/longlink/b/c/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/longlink/b/c/e;

    invoke-static {v0}, Lcom/alipay/mobile/longlink/c/a;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/longlink/b/c/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/longlink/b/c/a;-><init>()V

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->a:I

    iput v0, p0, Lcom/alipay/mobile/longlink/b/c/e;->d:I

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->b:I

    iput v0, p0, Lcom/alipay/mobile/longlink/b/c/e;->e:I

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/longlink/b/c/e;->e(I)V

    sget v0, Lcom/alipay/mobile/longlink/b/c/b;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/longlink/b/c/e;->f(I)V

    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 7

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v6, 0x4

    aget-byte v0, p1, v4

    sget-object v1, Lcom/alipay/mobile/longlink/b/c/e;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getHdrfromRead() got valid packet! msgType="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-array v1, v6, [B

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/alipay/mobile/longlink/b/c/e;->d([B)I

    move-result v1

    sget-object v2, Lcom/alipay/mobile/longlink/b/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgLen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    aget-byte v2, p1, v5

    sget-object v3, Lcom/alipay/mobile/longlink/b/c/e;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getHdrfromRead() got valid packet! isGziped="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v3, v4}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/longlink/b/c/e;->d(I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/longlink/b/c/e;->b(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/longlink/b/c/e;->c(I)V

    return-void
.end method

.method public final c([B)V
    .locals 5

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobile/longlink/b/c/e;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/longlink/b/c/e;->a(I)V

    return-void
.end method

.method public final h()[B
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobile/longlink/b/c/e;->e:I

    new-array v2, v0, [B

    iget v0, p0, Lcom/alipay/mobile/longlink/b/c/e;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v2, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/c/e;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v2, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/c/e;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v2, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/c/e;->c()I

    move-result v3

    new-array v4, v6, [B

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_0

    mul-int/lit8 v5, v0, 0x8

    rsub-int/lit8 v5, v5, 0x18

    shr-int v5, v3, v5

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v1, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lcom/alipay/mobile/longlink/b/c/e;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x7

    invoke-virtual {v0}, Ljava/lang/Integer;->byteValue()B

    move-result v0

    aput-byte v0, v2, v3

    new-array v0, v7, [B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v6, [B

    const/16 v3, 0xb

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
