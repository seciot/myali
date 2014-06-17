.class final Lcom/alipay/nfc/card/pboc/BeijingMunicipal;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->p:Ljava/lang/String;

    const-string/jumbo v0, "\u5317\u4eac\u5e02\u653f\u4ea4\u901a\u5361"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/BeijingMunicipal;
    .locals 13

    const/4 v1, 0x0

    const/16 v12, 0x8

    const/4 v11, 0x4

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget-object v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->c:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v11}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v3

    sget-object v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->b:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v10}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    invoke-virtual {v0, v4}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v4

    const/16 v6, 0x20

    if-ge v4, v6, :cond_2

    :cond_0
    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->g:Ljava/lang/String;

    :cond_1
    :goto_0
    new-array v1, v10, [Ljava/util/ArrayList;

    aput-object v5, v1, v9

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->a([Ljava/util/ArrayList;)V

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v2

    invoke-static {v2, v9, v12}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->g:Ljava/lang/String;

    const-string/jumbo v4, "%02X.%02X%02X"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aget-byte v7, v2, v12

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0x9

    aget-byte v7, v2, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const/16 v8, 0xa

    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->h:Ljava/lang/String;

    const-string/jumbo v4, "%02X%02X.%02X.%02X - %02X%02X.%02X.%02X"

    new-array v6, v12, [Ljava/lang/Object;

    const/16 v7, 0x18

    aget-byte v7, v2, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    const/16 v7, 0x19

    aget-byte v7, v2, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x2

    const/16 v8, 0x1a

    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const/16 v8, 0x1b

    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x1c

    aget-byte v7, v2, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v11

    const/4 v7, 0x5

    const/16 v8, 0x1d

    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const/16 v8, 0x1e

    aget-byte v8, v2, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const/16 v8, 0x1f

    aget-byte v2, v2, v8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->a()I

    move-result v1

    if-le v1, v11, :cond_1

    invoke-virtual {v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v1

    invoke-static {v1, v10, v11}, Lcom/alipay/nfc/Util;->a([BII)I

    move-result v2

    aget-byte v1, v1, v9

    if-nez v1, :cond_3

    const-string/jumbo v1, "%d "

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "%d* "

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v9

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/BeijingMunicipal;->j:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()Lcom/alipay/nfc/model/CardInfo;
    .locals 2

    invoke-super {p0}, Lcom/alipay/nfc/card/pboc/PbocCard;->a()Lcom/alipay/nfc/model/CardInfo;

    move-result-object v0

    const-string/jumbo v1, "BeijingMunicipal"

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/model/CardInfo;->h(Ljava/lang/String;)V

    return-object v0
.end method
