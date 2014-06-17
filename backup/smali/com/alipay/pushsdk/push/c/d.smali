.class public Lcom/alipay/pushsdk/push/c/d;
.super Lcom/alipay/pushsdk/push/c/a;


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/c/d;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/pushsdk/push/c/a;-><init>()V

    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/d;->d:I

    sget v0, Lcom/alipay/pushsdk/push/c/b;->b:I

    iput v0, p0, Lcom/alipay/pushsdk/push/c/d;->e:I

    sget v0, Lcom/alipay/pushsdk/push/c/b;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->f(I)V

    sget v0, Lcom/alipay/pushsdk/push/c/b;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->g(I)V

    return-void
.end method


# virtual methods
.method public final b([B)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x4

    aget-byte v0, p1, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgType="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-array v1, v5, [B

    const/4 v2, 0x1

    invoke-static {p1, v2, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/alipay/pushsdk/push/c/d;->d([B)I

    move-result v1

    sget-object v2, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgLen="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->b(I)V

    invoke-virtual {p0, v1}, Lcom/alipay/pushsdk/push/c/d;->e(I)V

    return-void
.end method

.method public final c([B)V
    .locals 5

    const/4 v0, 0x1

    aget-byte v0, p1, v0

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/c/d;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getHdrfromRead() got valid packet! msgId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/c/d;->a(I)V

    return-void
.end method

.method public final k()[B
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x4

    iget v0, p0, Lcom/alipay/pushsdk/push/c/d;->e:I

    new-array v0, v0, [B

    iget v1, p0, Lcom/alipay/pushsdk/push/c/d;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v4

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1}, Ljava/lang/Integer;->byteValue()B

    move-result v1

    aput-byte v1, v0, v2

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/c/d;->g()I

    move-result v1

    invoke-static {v1}, Lcom/alipay/pushsdk/push/c/d;->h(I)[B

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v3, [B

    const/4 v2, 0x7

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v1, v3, [B

    const/16 v2, 0xb

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
