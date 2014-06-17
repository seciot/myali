.class public Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

.field private g:Lcom/alipay/asset/common/view/WealthAccountInfoView;

.field private h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

.field private i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-static {p1}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Landroid/content/Context;)Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    return-void
.end method

.method private a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iget-boolean v1, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->mark:Z

    const-string/jumbo v0, "cache"

    iget-object v2, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markTag:Ljava/lang/String;

    iget-object v4, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markLable:Ljava/lang/String;

    iget-object v5, p2, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;->markStyle:Ljava/lang/String;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setMsgData(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->reset()V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->g:Lcom/alipay/asset/common/view/WealthAccountInfoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->g:Lcom/alipay/asset/common/view/WealthAccountInfoView;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthAccountInfoView;->updateUI()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Z)V

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Z)V

    goto :goto_0
.end method

.method public final b(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b:Ljava/util/Map;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lcom/alipay/android/phone/wealth/home/R$layout;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->setBindingWidget(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v4, v2}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->addChild(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    :cond_1
    iget-object v4, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeMarkInfo;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->f:Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->refreshMsgFlag()V

    return-void
.end method

.method public getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "widgetId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",getWidgetView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->cleanWidgetFlag()V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    invoke-virtual {v1, p1}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Ljava/lang/String;)Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;

    move-result-object v1

    invoke-interface {v1, p3, p4, v0}, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;->a(Ljava/util/Map;ILcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1, p3}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    invoke-interface {v1, p4}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->setViewFlag(I)V

    invoke-interface {v1, p1}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->setWidgetId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    invoke-interface {v1, v0}, Lcom/alipay/android/widgets/asset/widget/IAssetWidgetView;->bindWidgetFlagView(Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;)V

    instance-of v0, v1, Lcom/alipay/asset/common/view/WealthAccountInfoView;

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/alipay/asset/common/view/WealthAccountInfoView;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->g:Lcom/alipay/asset/common/view/WealthAccountInfoView;

    :cond_1
    return-object v1
.end method

.method public isWidgetVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    invoke-virtual {v0, p1}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Ljava/lang/String;)Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;

    invoke-interface {v1, p1, v0}, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;->a(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->d:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "widgetId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",appId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method public needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public performWidgetClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->e:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->isHideFlag()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/asset/common/view/WealthWidgetMsgFlag;->ackClick()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->a:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->h:Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;

    invoke-virtual {v0, p2}, Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;->a(Ljava/lang/String;)Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :try_start_1
    invoke-interface {v0, p2, v5}, Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;->b(Ljava/lang/String;Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v6

    :goto_1
    if-eqz v5, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, v5, Lcom/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo;->desc:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter;->i:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    invoke-virtual {v1, v6}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->c(Z)V

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v1

    goto :goto_1
.end method
