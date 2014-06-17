.class public Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->c:Landroid/view/LayoutInflater;

    return-void
.end method

.method private static a(Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a(Ljava/util/List;)V

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;->getFacePrice()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1000"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;-><init>(Lcom/alipay/mobileprod/biz/recharge/vo/EcardVO;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->c:Landroid/view/LayoutInflater;

    const v1, 0x1090012

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const v0, 0x1020014

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-virtual {v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setClickable(Z)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->c:Landroid/view/LayoutInflater;

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    sget v1, Lcom/alipay/mobile/mobilerechargeapp/R$id;->K:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v2, Lcom/alipay/mobile/mobilerechargeapp/R$id;->L:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v3, Lcom/alipay/mobile/mobilerechargeapp/R$id;->H:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/commonui/widget/APImageView;

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-virtual {v4}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-virtual {v4}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "\u8bf7\u9009\u62e9\u5145\u503c\u9762\u989d"

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->f()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\u4f18\u60e0\u4ef7\uff1a"

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->j()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/mobilerechargeapp/R$color;->b:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v8}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/RechargeAmountAdapter;->b:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;

    invoke-virtual {v4}, Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "\u552e\u4ef7\uff1a"

    goto :goto_1

    :cond_3
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/commonui/widget/APImageView;->setVisibility(I)V

    goto :goto_2
.end method
