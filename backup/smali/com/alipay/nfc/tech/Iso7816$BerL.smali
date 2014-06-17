.class public final Lcom/alipay/nfc/tech/Iso7816$BerL;
.super Lcom/alipay/nfc/tech/Iso7816;


# instance fields
.field private final c:I


# direct methods
.method private constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/tech/Iso7816;-><init>([B)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/alipay/nfc/tech/Iso7816$BerL;->c([BI)I

    move-result v0

    iput v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerL;->c:I

    return-void
.end method

.method public static b([BI)I
    .locals 3

    const/4 v0, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static c([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    aget-byte v1, p0, p1

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-gt p1, v1, :cond_1

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    goto :goto_0

    :cond_0
    aget-byte v0, p0, p1

    :cond_1
    return v0
.end method

.method public static d([BI)Lcom/alipay/nfc/tech/Iso7816$BerL;
    .locals 2

    new-instance v0, Lcom/alipay/nfc/tech/Iso7816$BerL;

    invoke-static {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$BerL;->b([BI)I

    move-result v1

    add-int/2addr v1, p1

    invoke-static {p0, p1, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerL;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 1

    iget v0, p0, Lcom/alipay/nfc/tech/Iso7816$BerL;->c:I

    return v0
.end method
