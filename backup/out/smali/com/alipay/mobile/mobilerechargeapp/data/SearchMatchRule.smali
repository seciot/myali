.class public Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/util/ArrayList;Ljava/lang/CharSequence;)Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;
    .locals 13

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;

    invoke-direct {v3}, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;-><init>()V

    const/16 v0, 0x3c

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    const/16 v0, 0x28

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    :cond_1
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_2
    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    const/16 v0, 0x28

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v9, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    const/16 v1, 0x28

    :goto_2
    const/16 v2, 0x1e

    if-ne v2, v1, :cond_d

    const/16 v1, 0x1e

    iput v1, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    sparse-switch v0, :sswitch_data_0

    :goto_3
    move-object v0, v3

    goto :goto_0

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/16 v1, 0x28

    goto :goto_2

    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    if-le v1, v2, :cond_9

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    const/4 v4, 0x0

    const/4 v2, 0x0

    move v12, v2

    move v2, v4

    move v4, v12

    :goto_5
    if-ge v4, v1, :cond_a

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v10, v11, :cond_8

    add-int/lit8 v2, v2, 0x1

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_4

    :cond_a
    const/16 v1, 0x9

    if-lt v2, v1, :cond_b

    const/16 v1, 0xb

    if-eq v2, v1, :cond_b

    const/16 v1, 0x14

    goto :goto_2

    :cond_b
    const/16 v1, 0xb

    if-ne v2, v1, :cond_c

    const/16 v1, 0x1e

    goto :goto_2

    :cond_c
    const/16 v1, 0x28

    goto :goto_2

    :cond_d
    const/16 v2, 0x14

    if-ne v2, v1, :cond_e

    const/16 v1, 0x14

    iput v1, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_e

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :sswitch_0
    const/16 v0, 0x14

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    iget-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v2}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {v1}, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v6, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->c:Ljava/lang/String;

    :sswitch_1
    iget-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->d:I

    goto/16 :goto_3

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "searchDisplayData prefix = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v0, 0x3c

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->a:Ljava/util/ArrayList;

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-ge v2, v4, :cond_12

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    iget-object v1, v0, Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;->b:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_11

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x32

    :goto_7
    const/16 v7, 0x32

    if-ne v7, v1, :cond_10

    const/16 v1, 0x32

    iput v1, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_6

    :cond_11
    const/16 v1, 0x3c

    goto :goto_7

    :cond_12
    iget v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->b:I

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_13

    const-string/jumbo v0, ""

    iput-object v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v3, Lcom/alipay/mobile/mobilerechargeapp/data/DisplayData;->d:I

    :cond_13
    move-object v0, v3

    goto/16 :goto_0

    :cond_14
    move-object v0, v3

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x3

    invoke-static {p0, p0}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/alipay/mobile/mobilerechargeapp/data/SearchMatchRule;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_1

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    const/high16 v5, -0x1

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x12

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/16 v2, 0xb

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
