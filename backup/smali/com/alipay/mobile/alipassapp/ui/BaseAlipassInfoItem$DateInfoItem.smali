.class public Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;
.super Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;


# instance fields
.field private mDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseInfo()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getView(Landroid/content/Context;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    if-nez p3, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/alipassapp/R$layout;->sub_list_item_date_info:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem$DateItemViewHolder;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem$DateItemViewHolder;-><init>(Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->date_text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, v1, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem$DateItemViewHolder;->text:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem$DateItemViewHolder;->text:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem;->mDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3

    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/alipassapp/ui/BaseAlipassInfoItem$DateInfoItem$DateItemViewHolder;

    goto :goto_0
.end method
