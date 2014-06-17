.class public Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;
.super Lcom/alipay/mobile/commonui/widget/APExtTableView;

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APExtTableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bindWidgetMsgFlag()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {p0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->attachNewFlag2LeftText(Landroid/view/View;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getWidgetId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setDisplayInfo(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "desc"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "icon"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "tips"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "widget_msg_disc"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    if-eqz v4, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V

    const-string/jumbo v4, "new"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlagNew()V

    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setLeftText(Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setRightText(Ljava/lang/String;)V

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/androidquery/AQuery;

    invoke-virtual {p0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->mIconImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {v0, v2}, Lcom/androidquery/AQuery;->id(Landroid/view/View;)Lcom/androidquery/AbstractAQuery;

    move-result-object v0

    check-cast v0, Lcom/androidquery/AQuery;

    invoke-virtual {v0, v1}, Lcom/androidquery/AQuery;->image(Ljava/lang/String;)Lcom/androidquery/AbstractAQuery;

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "hui"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v4, "\u60e0"

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const-string/jumbo v5, "num"

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->showMsgFlag(I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->b:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aget-object v2, v1, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_9

    array-length v0, v1

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    :cond_9
    invoke-virtual {p0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "drawable"

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setViewFlag(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setType(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setType(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setType(I)V

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->setType(I)V

    goto :goto_0
.end method

.method public setWidgetId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;->a:Ljava/lang/String;

    return-void
.end method
