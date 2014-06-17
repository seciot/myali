.class public Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;
.super Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;


# instance fields
.field private mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

.field private mOnClickListener:Lcom/alipay/mobile/alipassapp/ui/ev;


# direct methods
.method public constructor <init>(Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;Lcom/alipay/mobile/alipassapp/ui/ev;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;-><init>()V

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/alipassapp/biz/model/b;-><init>(Lcom/alipay/kabaoprod/biz/mwallet/card/model/CardModel;)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    iput-object p2, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mOnClickListener:Lcom/alipay/mobile/alipassapp/ui/ev;

    return-void
.end method


# virtual methods
.method public getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCardType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPartnerId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSecondLogoText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/b;->f()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_list_item_membercard_obtainable:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem$CardObtainableViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem$CardObtainableViewHolder;-><init>(Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$1;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_obtainable_card_header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;

    iput-object v0, v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem$CardObtainableViewHolder;->cardObtainableLayout:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem$CardObtainableViewHolder;->cardObtainableLayout:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mObtainableInfo:Lcom/alipay/mobile/alipassapp/biz/model/b;

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem;->mOnClickListener:Lcom/alipay/mobile/alipassapp/ui/ev;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderObtainable;->refresh(Lcom/alipay/mobile/alipassapp/biz/model/b;Lcom/alipay/mobile/alipassapp/ui/ev;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$MemberCardObtainableInfoItem$CardObtainableViewHolder;

    goto :goto_0
.end method
