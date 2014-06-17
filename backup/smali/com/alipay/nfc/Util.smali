.class public final Lcom/alipay/nfc/Util;
.super Ljava/lang/Object;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/Util;->a:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method public static varargs a([B)I
    .locals 4

    const/4 v0, 0x0

    array-length v2, p0

    move v1, v0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v3, p0, v0

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a([BI)I
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0x13

    :goto_0
    if-ltz v0, :cond_0

    if-lez p1, :cond_0

    shl-int/lit8 v1, v1, 0x8

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static a([BII)I
    .locals 3

    const/4 v0, 0x0

    add-int v1, p1, p2

    :goto_0
    if-ge p1, v1, :cond_0

    shl-int/lit8 v0, v0, 0x8

    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(F)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "%.2f"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static b([BII)Ljava/lang/String;
    .locals 7

    mul-int/lit8 v0, p2, 0x2

    new-array v1, v0, [C

    add-int v2, p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge p1, v2, :cond_0

    aget-byte v3, p0, p1

    add-int/lit8 v4, v0, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->a:[C

    shr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    aput-char v5, v1, v0

    add-int/lit8 v0, v4, 0x1

    sget-object v5, Lcom/alipay/nfc/Util;->a:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v5, v3

    aput-char v3, v1, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static c([BII)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static c([B)[B
    .locals 5

    const/4 v1, 0x0

    const/16 v4, 0x20

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    array-length v2, p0

    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_2

    aget-byte v3, p0, v0

    if-eqz v3, :cond_1

    aget-byte v3, p0, v0

    if-ne v3, v4, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-lez v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-byte v3, p0, v3

    if-ne v3, v4, :cond_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    if-lt v0, v2, :cond_5

    move-object v0, v1

    goto :goto_0

    :cond_5
    invoke-static {p0, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_0
.end method
