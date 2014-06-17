.class final Lcom/alipay/nfc/card/pboc/WuhanTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# static fields
.field private static final t:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/WuhanTong;->t:[B

    return-void

    :array_0
    .array-data 0x1
        0x41t
        0x50t
        0x31t
        0x2et
        0x57t
        0x48t
        0x43t
        0x54t
        0x43t
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->p:Ljava/lang/String;

    const-string/jumbo v0, "\u6b66\u6c49\u57ce\u5e02\u4e00\u5361\u901a"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/WuhanTong;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/WuhanTong;
    .locals 11

    const/16 v6, 0x1b

    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v8, 0x1

    sget-object v0, Lcom/alipay/nfc/card/pboc/WuhanTong;->c:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v10}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    sget-object v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->t:[B

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    :cond_2
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/WuhanTong;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v2, Lcom/alipay/nfc/card/pboc/WuhanTong;

    invoke-direct {v2, p0}, Lcom/alipay/nfc/card/pboc/WuhanTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/card/pboc/WuhanTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v0

    if-lt v0, v6, :cond_3

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v0

    if-ge v0, v6, :cond_4

    :cond_3
    iput-object v1, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->j:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->i:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->h:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->g:Ljava/lang/String;

    :goto_1
    new-array v0, v8, [Ljava/util/ArrayList;

    aput-object v5, v0, v9

    invoke-virtual {v2, v0}, Lcom/alipay/nfc/card/pboc/WuhanTong;->a([Ljava/util/ArrayList;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v0

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v3

    invoke-static {v3, v9, v10}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->g:Ljava/lang/String;

    const-string/jumbo v3, "%02d"

    new-array v4, v8, [Ljava/lang/Object;

    const/16 v6, 0x18

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->h:Ljava/lang/String;

    const-string/jumbo v3, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v6, 0x14

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v9

    const/16 v6, 0x15

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v8

    const/4 v6, 0x2

    const/16 v7, 0x16

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x3

    const/16 v7, 0x17

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x4

    const/16 v7, 0x10

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    const/16 v6, 0x11

    aget-byte v6, v0, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v10

    const/4 v6, 0x6

    const/16 v7, 0x12

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const/16 v7, 0x13

    aget-byte v0, v0, v7

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->i:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/nfc/card/pboc/WuhanTong;->j:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method
