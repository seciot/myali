.class public Lcom/alipay/asset/common/view/WealthDynamicTableView;
.super Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;

# interfaces
.implements Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;


# instance fields
.field private a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthDynamicTableView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/asset/common/view/WealthDynamicTableView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {p0, p1}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->attachNewFlag2LeftText(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public cleanWidgetFlag()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthDynamicTableView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {p0, v0}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/asset/common/view/WealthDynamicTableView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-void
.end method

.method public getBindedWidgetFlagView()Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;
    .locals 1

    iget-object v0, p0, Lcom/alipay/asset/common/view/WealthDynamicTableView;->a:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->getRightTextView()Lcom/alipay/mobile/commonui/widget/APTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/asset/common/view/WealthDynamicTableView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$color;->colorGray:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setTextColor(I)V

    return-void
.end method
