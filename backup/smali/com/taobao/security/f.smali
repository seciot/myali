.class public final Lcom/taobao/security/f;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)[I
    .locals 8

    const/4 v0, 0x0

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v1, v3

    div-int/lit8 v1, v1, 0x2

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-array v2, v1, [I

    move v1, v0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    const-string/jumbo v4, "0123456789ABCDEF"

    aget-byte v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const-string/jumbo v5, "0123456789ABCDEF"

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v4, v7, :cond_1

    if-eq v5, v7, :cond_1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput v4, v2, v0

    :cond_1
    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method
