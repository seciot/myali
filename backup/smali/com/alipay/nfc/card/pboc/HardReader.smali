.class final Lcom/alipay/nfc/card/pboc/HardReader;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;[BLandroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p2, v0, v1}, Lcom/alipay/nfc/Util;->b([BII)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->f:Ljava/lang/String;

    const-string/jumbo v0, "TRANS_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->p:Ljava/lang/String;

    invoke-static {p2}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "a00000000386980703"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "\u53f0\u5dde\u901a"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->o:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    sget v0, Lcom/alipay/mobile/nfc/R$string;->e:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/HardReader;->o:Ljava/lang/String;

    goto :goto_1
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;Landroid/content/res/Resources;)Lcom/alipay/nfc/card/pboc/HardReader;
    .locals 10

    const/16 v8, 0x15

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/nfc/card/pboc/HardReader;->c:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/nfc/card/pboc/HardReader;->a:[B

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->c(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v3

    move-object v1, v3

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->c(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_3
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    :goto_2
    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v1, v2

    :goto_3
    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    sget-object v0, Lcom/alipay/nfc/card/pboc/HardReader;->d:[B

    invoke-static {p0, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->c(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    :cond_6
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object v9, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v9

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v4

    if-nez v4, :cond_a

    :cond_8
    sget-object v4, Lcom/alipay/nfc/card/pboc/HardReader;->b:[B

    invoke-virtual {p0, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v1, Lcom/alipay/nfc/card/pboc/HardReader;->b:[B

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->c(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    :cond_9
    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(I)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/nfc/card/pboc/HardReader;->b(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_a
    move-object v9, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v9

    invoke-virtual {v2}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v4

    if-nez v4, :cond_b

    if-nez v1, :cond_b

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v0, :cond_0

    :cond_b
    new-instance v3, Lcom/alipay/nfc/card/pboc/HardReader;

    invoke-direct {v3, p0, v0, p1}, Lcom/alipay/nfc/card/pboc/HardReader;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;[BLandroid/content/res/Resources;)V

    invoke-virtual {v3, v2}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Response;)V

    if-eqz v1, :cond_c

    invoke-virtual {v3, v1, v7, v7}, Lcom/alipay/nfc/card/pboc/HardReader;->a(Lcom/alipay/nfc/tech/Iso7816$Response;IZ)V

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    aput-object v5, v0, v7

    invoke-virtual {v3, v0}, Lcom/alipay/nfc/card/pboc/HardReader;->a([Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_d
    move-object v0, v1

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_3
.end method

.method private static a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/nfc/tech/Iso7816$Tag;",
            ")",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_0
    const/16 v0, 0x1f

    if-gt v3, v0, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->a(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    iget-object v6, v1, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->c:Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v7, 0x70

    invoke-virtual {v6, v7}, Lcom/alipay/nfc/tech/Iso7816$BerT;->a(B)Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/alipay/nfc/tech/Iso7816$BerT;->f:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v1, v6}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->a(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v6, Lcom/alipay/nfc/tech/Iso7816$BerT;->g:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v1, v6}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->a(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->e:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$BerV;->b()[B

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    move-object v1, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_3
    return-object v5
.end method

.method private static a(Lcom/alipay/nfc/tech/Iso7816$Tag;[B)[B
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/nfc/card/pboc/HardReader;->c:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/alipay/nfc/card/pboc/HardReader;->a:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-nez v2, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->a(Lcom/alipay/nfc/tech/Iso7816;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    iget-object v1, v0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->c:Lcom/alipay/nfc/tech/Iso7816$BerT;

    const/16 v2, 0x6f

    invoke-virtual {v1, v2}, Lcom/alipay/nfc/tech/Iso7816$BerT;->a(B)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alipay/nfc/tech/Iso7816$BerT;->e:Lcom/alipay/nfc/tech/Iso7816$BerT;

    invoke-virtual {v0, v1}, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->a(Lcom/alipay/nfc/tech/Iso7816$BerT;)Lcom/alipay/nfc/tech/Iso7816$BerTLV;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/alipay/nfc/tech/Iso7816$BerTLV;->e:Lcom/alipay/nfc/tech/Iso7816$BerV;

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$BerV;->b()[B

    move-result-object p1

    goto :goto_0
.end method

.method private static c(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/tech/Iso7816$Response;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(Z)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v0

    goto :goto_0
.end method
