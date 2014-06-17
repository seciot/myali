.class public final Lcom/alipay/nfc/tech/Iso7816$Response;
.super Lcom/alipay/nfc/tech/Iso7816;


# static fields
.field public static final c:[B

.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->c:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->d:[B

    return-void

    :array_0
    .array-data 0x1
        0x6ft
        0x0t
    .end array-data
.end method

.method public constructor <init>([B)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    sget-object p1, Lcom/alipay/nfc/tech/Iso7816$Response;->d:[B

    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public final a([B)[B
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    move v0, v1

    :goto_0
    array-length v2, v3

    array-length v4, p1

    sub-int/2addr v2, v4

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_0

    aget-byte v4, p1, v2

    add-int v5, v0, v2

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    array-length v4, p1

    if-ne v2, v4, :cond_1

    array-length v1, p1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    array-length v4, p1

    add-int/2addr v0, v4

    aget-byte v0, v3, v0

    add-int/2addr v0, v2

    invoke-static {v3, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final b()[B
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/alipay/nfc/tech/Iso7816$Response;->c:[B

    goto :goto_0
.end method

.method public final b(B)[B
    .locals 5

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-byte v4, v2, v0

    add-int/lit8 v1, v1, 0x1

    if-ne v4, p1, :cond_0

    add-int/lit8 v0, v1, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    add-int/2addr v1, v3

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final c()Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816$Response;->b:[B

    array-length v1, v0

    add-int/lit8 v2, v1, -0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v2

    int-to-short v0, v0

    const/16 v1, -0x7000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
