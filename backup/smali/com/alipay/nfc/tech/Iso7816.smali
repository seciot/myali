.class public Lcom/alipay/nfc/tech/Iso7816;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B


# instance fields
.field protected b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lcom/alipay/nfc/tech/Iso7816;->a:[B

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/alipay/nfc/tech/Iso7816;->a:[B

    iput-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Lcom/alipay/nfc/tech/Iso7816;->a:[B

    :cond_0
    iput-object p1, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    array-length v0, v0

    return v0
.end method

.method public final a(B)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    array-length v2, v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    aget-byte v2, v2, v1

    if-ne v2, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a([BI)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    array-length v1, v3

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_1

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-byte v5, v3, v1

    add-int/lit8 v2, p2, 0x1

    aget-byte v6, p1, p2

    if-eq v5, v6, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move p2, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/nfc/tech/Iso7816;->b:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
