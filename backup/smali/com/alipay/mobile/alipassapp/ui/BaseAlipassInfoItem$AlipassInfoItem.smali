.class public Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;
.super Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;


# static fields
.field public static final INFO_ITEM_TYPE_ALIPASS:I = 0x0

.field public static final INFO_ITEM_TYPE_MEMBERCARD:I = 0x1


# instance fields
.field private infoItemType:I

.field private mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;


# direct methods
.method public constructor <init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->infoItemType:I

    new-instance v0, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;-><init>(Lcom/alipay/kabaoprod/core/model/model/PassBaseInfo;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    iput p3, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->infoItemType:I

    return-void
.end method

.method private getAlipassView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_list_item_pass_info:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;-><init>(Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$1;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_alipass_header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    iput-object v0, v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;->mAlipassHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$dimen;->alipass_listview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p3, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->CheckLazyParse()V

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;->mAlipassHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/common/ar;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/alipassapp/ui/common/ar;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;->mAlipassHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/common/AlipassHeaderLayout;->refresh(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;Z)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$PassItemViewHolder;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p3, v1, v5, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method

.method private getMemberCardView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_list_item_membercard_info:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;-><init>(Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$1;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->layout_membercard_header:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;

    iput-object v0, v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;->memberCardHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$dimen;->membercard_listview_padding_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    float-to-int v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p3, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->CheckLazyParse()V

    iget-object v1, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;->memberCardHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;

    new-instance v2, Lcom/alipay/mobile/alipassapp/ui/widget/a;

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getDisplayInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;->getResolveBackgroundColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/alipassapp/ui/widget/a;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;->memberCardHeaderLayout:Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/widget/MemberCardHeaderLayout;->refresh(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem$MemberCardViewHolder;

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    return-object v0
.end method

.method public getPartnerID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPartnerId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassCacheVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getGmtModified()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPassId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getPassId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->mPassInfo:Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;->getSerialNumber()Ljava/lang/String;

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
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->infoItemType:I

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getAlipassView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getAlipassView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$AlipassInfoItem;->getMemberCardView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
