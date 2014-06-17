.class final Lcom/alipay/nfc/card/pboc/YangchengTong;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# static fields
.field private static final t:[B

.field private static final u:[B

.field private static final v:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->t:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->u:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->v:[B

    return-void

    :array_0
    .array-data 0x1
        0x50t
        0x41t
        0x59t
        0x2et
        0x41t
        0x50t
        0x50t
        0x59t
    .end array-data

    :array_1
    .array-data 0x1
        0x50t
        0x41t
        0x59t
        0x2et
        0x50t
        0x41t
        0x53t
        0x44t
    .end array-data

    :array_2
    .array-data 0x1
        0x50t
        0x41t
        0x59t
        0x2et
        0x54t
        0x49t
        0x43t
        0x4ct
    .end array-data
.end method

.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->p:Ljava/lang/String;

    const-string/jumbo v0, "\u5cad\u5357\u901a\u5361\uff08\u7f8a\u57ce\u901a\uff09"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/YangchengTong;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/YangchengTong;
    .locals 13

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->c:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->t:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-virtual {p0, v9}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v5

    sget-object v0, Lcom/alipay/nfc/card/pboc/YangchengTong;->u:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/YangchengTong;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    sget-object v2, Lcom/alipay/nfc/card/pboc/YangchengTong;->v:[B

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/YangchengTong;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/alipay/nfc/card/pboc/YangchengTong;

    invoke-direct {v3, p0}, Lcom/alipay/nfc/card/pboc/YangchengTong;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    invoke-virtual {v3, v5}, Lcom/alipay/nfc/card/pboc/YangchengTong;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v5

    const/16 v6, 0x32

    if-ge v5, v6, :cond_4

    :cond_0
    iput-object v1, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->j:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->i:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->h:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->g:Ljava/lang/String;

    :goto_2
    new-array v1, v11, [Ljava/util/ArrayList;

    aput-object v0, v1, v10

    aput-object v2, v1, v9

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/card/pboc/YangchengTong;->a([Ljava/util/ArrayList;)V

    move-object v1, v3

    :cond_1
    return-object v1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v2, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v4, v5, v12}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->g:Ljava/lang/String;

    const-string/jumbo v5, "%02X.%02X"

    new-array v6, v11, [Ljava/lang/Object;

    const/16 v7, 0x2c

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    const/16 v7, 0x2d

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->h:Ljava/lang/String;

    const-string/jumbo v5, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x17

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    const/16 v7, 0x18

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0x19

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x3

    const/16 v8, 0x1a

    aget-byte v8, v4, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const/16 v8, 0x1b

    aget-byte v8, v4, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    aget-byte v7, v4, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v12

    const/4 v7, 0x6

    const/16 v8, 0x1d

    aget-byte v8, v4, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const/16 v8, 0x1e

    aget-byte v4, v4, v8

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->i:Ljava/lang/String;

    iput-object v1, v3, Lcom/alipay/nfc/card/pboc/YangchengTong;->j:Ljava/lang/String;

    goto/16 :goto_2
.end method
