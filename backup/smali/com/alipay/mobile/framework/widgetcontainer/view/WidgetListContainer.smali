.class public Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;
.super Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected getContentView(Ljava/util/List;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer$1;-><init>(Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move v2, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-lez v2, :cond_8

    add-int/lit8 v1, v2, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_9

    add-int/lit8 v1, v2, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getGroup()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    move v1, v5

    :goto_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "name"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "icon"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getIcon()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "desc"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getDisc()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "tips"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getTips()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v8, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9, v7, v1}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/alipay/mobile/framework/widgetcontainer/view/DefaultListWidgetView;-><init>(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setWidgetId(Ljava/lang/String;)V

    invoke-interface {v4, v7}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    invoke-interface {v4, v1}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setViewFlag(I)V

    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetContainerAdapter:Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;->needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->bindWidgetMsgFlag()V

    :cond_2
    iget-object v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->widgetList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    sget v7, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v7, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    and-int/lit8 v7, v1, 0x2

    if-nez v7, :cond_3

    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_4

    :cond_3
    iget v7, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->groupGap:I

    div-int/lit8 v7, v7, 0x2

    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_4
    and-int/lit8 v7, v1, 0x4

    if-nez v7, :cond_5

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    :cond_5
    iget v1, p0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->groupGap:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v1, "-1"

    move-object v4, v1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v1, "-1"

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v1, 0x2

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v1, 0x4

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x8

    goto/16 :goto_3

    :cond_d
    return-object v6

    :cond_e
    move v1, v3

    goto/16 :goto_3
.end method
