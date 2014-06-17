.class public Lcom/alipay/nfc/card/pboc/MyBankCard;
.super Lcom/alipay/nfc/card/pboc/PbocCard;


# direct methods
.method private constructor <init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/nfc/card/pboc/PbocCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v0, "UNKNOWN_CARD"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/MyBankCard;->p:Ljava/lang/String;

    const-string/jumbo v0, "?"

    iput-object v0, p0, Lcom/alipay/nfc/card/pboc/MyBankCard;->o:Ljava/lang/String;

    return-void
.end method

.method static final a(Lcom/alipay/nfc/tech/Iso7816$Tag;)Lcom/alipay/nfc/card/pboc/MyBankCard;
    .locals 15

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/nfc/card/pboc/MyBankCard;->c:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    sget-object v1, Lcom/alipay/nfc/card/pboc/MyBankCard;->c:[B

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->a(II)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x4f

    invoke-virtual {v1, v0}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010101"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v3, "DEBIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->p:Ljava/lang/String;

    :goto_0
    const/16 v3, 0x50

    invoke-virtual {v1, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/alipay/nfc/tech/Iso7816$Tag;->b([B)Lcom/alipay/nfc/tech/Iso7816$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    new-instance v2, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x57

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v2

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    new-instance v4, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x79

    invoke-virtual {v4, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v4

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    new-instance v5, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x77

    invoke-virtual {v5, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v5

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    new-instance v6, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/16 v1, 0x78

    invoke-virtual {v6, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v6

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    new-instance v7, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->s:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v8, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->s:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_6

    const/4 v8, 0x5

    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const/4 v9, 0x2

    const/4 v10, 0x2

    aget-byte v10, v8, v10

    add-int/2addr v10, v1

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    new-instance v9, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v8}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v8

    invoke-direct {v9, v8}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    invoke-virtual {v9}, Lcom/alipay/nfc/tech/Iso7816$Response;->c()Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;

    invoke-direct {v8}, Lcom/alipay/nfc/card/pboc/LogInfoInner;-><init>()V

    invoke-virtual {v9}, Lcom/alipay/nfc/tech/Iso7816$Response;->b()[B

    move-result-object v9

    const/4 v10, 0x6

    const/4 v11, 0x6

    invoke-static {v9, v10, v11}, Lcom/alipay/nfc/Util;->c([BII)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x2a

    const/4 v12, 0x1

    invoke-static {v9, v11, v12}, Lcom/alipay/nfc/Util;->c([BII)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x10

    invoke-static {v11, v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    if-eqz v10, :cond_0

    const-string/jumbo v11, "\u672a\u77e5"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    :goto_2
    const-string/jumbo v11, "%02X.%02X.%02X %02X:%02X:%02X "

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x0

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x2

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/4 v14, 0x3

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x4

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x5

    const/4 v14, 0x5

    aget-byte v14, v9, v14

    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->a:Ljava/lang/String;

    const-string/jumbo v11, "<br />"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->a:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    invoke-static {v10}, Lcom/alipay/nfc/Util;->a(F)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->b:Ljava/lang/String;

    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x14

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Lcom/alipay/nfc/Util;->c([BII)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    sparse-switch v10, :sswitch_data_1

    const-string/jumbo v10, "\u672a\u77e5"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->c:Ljava/lang/String;

    :goto_3
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->c:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x16

    const/16 v11, 0x2a

    invoke-static {v9, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    invoke-static {v10}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v10

    if-eqz v10, :cond_5

    :try_start_0
    new-instance v10, Ljava/lang/String;

    const/16 v11, 0x16

    const/16 v12, 0x2a

    invoke-static {v9, v11, v12}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    invoke-static {v11}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v11

    const-string/jumbo v12, "gbk"

    invoke-direct {v10, v11, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, " | "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, " | type:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x2c

    const/4 v13, 0x1

    invoke-static {v9, v12, v13}, Lcom/alipay/nfc/Util;->c([BII)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "<br>"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->s:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_1
    invoke-static {v2}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010102"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v3, "CREDIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_2
    invoke-static {v2}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "a000000333010103"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/alipay/nfc/card/pboc/MyBankCard;

    invoke-direct {v0, p0}, Lcom/alipay/nfc/card/pboc/MyBankCard;-><init>(Lcom/alipay/nfc/tech/Iso7816$Tag;)V

    const-string/jumbo v3, "QUASI_CREDIT_CARD"

    iput-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->p:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_5
    return-object v0

    :sswitch_0
    const-string/jumbo v11, "\u5546\u54c1\u6216\u670d\u52a1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_1
    const-string/jumbo v11, "\u63d0\u6b3e/\u73b0\u91d1\u4ed8\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v11, "\u8c03\u6574"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_3
    const-string/jumbo v11, "\u4fe1\u7528\u8bc1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_4
    const-string/jumbo v11, "\u76f4\u63a5\u8f6c\u8d26"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v11, "\u5546\u54c1\u6216\u670d\u52a1\u5e76\u73b0\u91d1\u652f\u4ed8"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v11, "\u8fd8\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v11, "\u5b58\u6b3e"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_8
    const-string/jumbo v11, "\u8c03\u6574"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v11, "\u5708\u5b58"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v11, "\u5708\u5b58"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_b
    const-string/jumbo v11, "\u67e5\u8be2\u53ef\u7528\u8d44\u91d1"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_c
    const-string/jumbo v11, "\u67e5\u8be2\u4f59\u989d"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v11, "\u8d26\u6237\u8f6c\u8d26"

    iput-object v11, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->e:Ljava/lang/String;

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v10, "\u4eba\u6c11\u5e01"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->c:Ljava/lang/String;

    goto/16 :goto_3

    :sswitch_f
    const-string/jumbo v10, "\u7f8e\u5143"

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->c:Ljava/lang/String;

    goto/16 :goto_3

    :catch_0
    move-exception v10

    :cond_5
    const-string/jumbo v10, ""

    iput-object v10, v8, Lcom/alipay/nfc/card/pboc/LogInfoInner;->d:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    invoke-static {v4}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    int-to-float v1, v1

    const/high16 v10, 0x42c8

    div-float/2addr v1, v10

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->k:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    int-to-float v1, v1

    const/high16 v9, 0x42c8

    div-float/2addr v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->l:Ljava/lang/String;

    invoke-static {v6}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    int-to-float v1, v1

    const/high16 v8, 0x42c8

    div-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->m:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v4, "gbk"

    invoke-direct {v1, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->q:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_7
    :goto_6
    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    new-instance v3, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->a([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->j:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->r:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    new-instance v3, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    if-eqz v2, :cond_c

    array-length v1, v2

    if-lez v1, :cond_c

    invoke-static {v2}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "D"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    const-string/jumbo v4, "D"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->g:Ljava/lang/String;

    :goto_7
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v2, v1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "20"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "%02X.%02X.%02X"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-byte v1, v1, v7

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    :cond_8
    :goto_8
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_a

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    if-eqz v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    :goto_9
    array-length v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "20"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02X.%02X.%02X"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    :cond_9
    :goto_a
    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_b

    new-instance v2, Lcom/alipay/nfc/tech/Iso7816$Response;

    invoke-virtual {p0, v1}, Lcom/alipay/nfc/tech/Iso7816$Tag;->c([B)[B

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;-><init>([B)V

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_c

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_d

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->n:Ljava/lang/String;

    :cond_a
    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_e

    invoke-virtual {v2, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v1

    if-eqz v1, :cond_10

    :try_start_2
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [B

    fill-array-data v3, :array_f

    invoke-virtual {v2, v3}, Lcom/alipay/nfc/tech/Iso7816$Response;->a([B)[B

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/nfc/Util;->c([B)[B

    move-result-object v2

    const-string/jumbo v3, "gbk"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_5

    :catch_1
    move-exception v1

    goto/16 :goto_5

    :cond_b
    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->g:Ljava/lang/String;

    goto/16 :goto_7

    :cond_c
    const/16 v1, 0x5a

    invoke-virtual {v3, v1}, Lcom/alipay/nfc/tech/Iso7816$Response;->b(B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/nfc/Util;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->g:Ljava/lang/String;

    goto/16 :goto_7

    :cond_d
    array-length v2, v1

    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    const-string/jumbo v2, "%02X%02X.%02X.%02X"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    goto/16 :goto_8

    :cond_e
    const-string/jumbo v2, ""

    iput-object v2, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    goto/16 :goto_9

    :cond_f
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%02X%02X.%02X.%02X"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x2

    aget-byte v6, v1, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const/4 v6, 0x3

    aget-byte v1, v1, v6

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->i:Ljava/lang/String;

    goto/16 :goto_a

    :cond_10
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/alipay/nfc/card/pboc/MyBankCard;->f:Ljava/lang/String;

    goto/16 :goto_5

    :catch_2
    move-exception v1

    goto/16 :goto_6

    nop

    :array_0
    .array-data 0x1
        0x0t
        0xb2t
        0x1t
        0xct
        0x3ct
    .end array-data

    nop

    :array_1
    .array-data 0x1
        0x80t
        0xcat
        0x9ft
        0x79t
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x80t
        0xcat
        0x9ft
        0x77t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x1
        0x80t
        0xcat
        0x9ft
        0x78t
        0x0t
    .end array-data

    nop

    :array_4
    .array-data 0x1
        0x80t
        0xcat
        0x9ft
        0x4ft
        0x0t
    .end array-data

    nop

    :array_5
    .array-data 0x1
        0x0t
        0xb2t
        0x1t
        0x5ct
        0x0t
    .end array-data

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_3
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x20 -> :sswitch_6
        0x21 -> :sswitch_7
        0x22 -> :sswitch_8
        0x23 -> :sswitch_9
        0x24 -> :sswitch_a
        0x30 -> :sswitch_b
        0x31 -> :sswitch_c
        0x40 -> :sswitch_d
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x156 -> :sswitch_e
        0x840 -> :sswitch_f
    .end sparse-switch

    :array_6
    .array-data 0x1
        0x80t
        0xcat
        0x9ft
        0x36t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 0x1
        0x9ft
        0x36t
    .end array-data

    nop

    :array_8
    .array-data 0x1
        0x0t
        0xb2t
        0x1t
        0x14t
        0x44t
    .end array-data

    nop

    :array_9
    .array-data 0x1
        0x5ft
        0x25t
    .end array-data

    nop

    :array_a
    .array-data 0x1
        0x5ft
        0x24t
    .end array-data

    nop

    :array_b
    .array-data 0x1
        0x0t
        0xb2t
        0x1t
        0xct
        0x3ct
    .end array-data

    nop

    :array_c
    .array-data 0x1
        0x9ft
        0x61t
    .end array-data

    nop

    :array_d
    .array-data 0x1
        0x9ft
        0x61t
    .end array-data

    nop

    :array_e
    .array-data 0x1
        0x5ft
        0x20t
    .end array-data

    nop

    :array_f
    .array-data 0x1
        0x5ft
        0x20t
    .end array-data
.end method
