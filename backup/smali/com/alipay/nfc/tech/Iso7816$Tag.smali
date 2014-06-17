.class public final Lcom/alipay/nfc/tech/Iso7816$Tag;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/nfc/tech/IsoDep;

.field private b:Lcom/alipay/nfc/tech/Iso7816$ID;


# direct methods
.method public constructor <init>(Landroid/nfc/tech/IsoDep;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->a:Landroid/nfc/tech/IsoDep;

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$ID;

    invoke-virtual {p1}, Landroid/nfc/tech/IsoDep;->getTag()Landroid/nfc/Tag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$ID;-><init>([B)V

    iput-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->b:Lcom/alipay/nfc/tech/Iso7816$ID;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/nfc/tech/Iso7816$ID;
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->b:Lcom/alipay/nfc/tech/Iso7816$ID;

    return-object v0
.end method

.method public final a(I)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    const/4 v1, 0x1

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    and-int/lit8 v2, p1, 0x1f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final a(II)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [B

    aput-byte v3, v0, v3

    const/4 v1, 0x1

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    shl-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 6

    const/4 v5, 0x4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x5

    new-array v2, v2, [B

    const/16 v3, -0x80

    aput-byte v3, v2, v4

    const/16 v3, 0x5c

    aput-byte v3, v2, v1

    aput-byte v4, v2, v0

    const/4 v3, 0x3

    if-eqz p1, :cond_0

    :goto_0
    int-to-byte v0, v0

    aput-byte v0, v2, v3

    aput-byte v5, v2, v5

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final varargs a([B)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x5c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final b()Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 2

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1

    :array_0
    .array-data 0x1
        0x0t
        0xb2t
        0x1t
        0xc5t
        0x0t
    .end array-data
.end method

.method public final varargs b([B)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x6

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/16 v2, -0x5c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    new-instance v1, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    return-object v1
.end method

.method public final c()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->a:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final c([B)[B
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->a:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->d:[B

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->a:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Tag;->a:Landroid/nfc/tech/IsoDep;

    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
