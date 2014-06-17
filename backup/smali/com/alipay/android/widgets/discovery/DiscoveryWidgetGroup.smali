.class public Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroup;
.implements Lcom/alipay/mobile/discoverywidget/a/c;


# instance fields
.field private alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

.field private allViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private appEntryConfigService:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

.field private container:Landroid/view/ViewGroup;

.field private context:Landroid/app/Activity;

.field private discoveryObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alipay/mobile/discoverywidget/biz/DiscoveryObserver;",
            ">;"
        }
    .end annotation
.end field

.field private endTime:J

.field private hasCouponData:Z

.field private hasMemberData:Z

.field private hasTravelData:Z

.field private layoutParent:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

.field private mId:Ljava/lang/String;

.field private microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

.field private startTime:J

.field private tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

.field protected titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

.field private widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgets:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->allViews:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->discoveryObserverList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-boolean v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasCouponData:Z

    iput-boolean v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasTravelData:Z

    iput-boolean v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasMemberData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->buildHomeReq()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasCouponData:Z

    return v0
.end method

.method static synthetic access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasTravelData:Z

    return v0
.end method

.method static synthetic access$800(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasMemberData:Z

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private addDiscoveryWidgetAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->container:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/discoverywidget/c;->c:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    new-instance v1, Lcom/alipay/android/widgets/discovery/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/widgets/discovery/c;-><init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->setAdapter(Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;)V

    goto :goto_0
.end method

.method private buildHomeReq()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->appEntryConfigService:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->appEntryConfigService:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->appEntryConfigService:Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;

    const-string/jumbo v1, "discovery"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/appentry/AppEntryConfigService;->getWidgetInfoListbyContainerId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;

    invoke-direct {v1}, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iput-object v2, v1, Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;->widgetIdList:Ljava/util/List;

    return-object v1
.end method

.method private getTag()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initContainer()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/discoverywidget/d;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->container:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->initRootLayout()V

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->container:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/discoverywidget/c;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->layoutParent:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    return-void
.end method

.method private initRootLayout()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->container:Landroid/view/ViewGroup;

    sget v1, Lcom/alipay/mobile/discoverywidget/c;->a:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/discoverywidget/e;->b:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method private refreshDiscoveryData()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Landroid/content/Context;)Lcom/alipay/mobile/discoverywidget/ui/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/discoverywidget/a/c;)V

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-object v1, v0, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->buildHomeReq()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    return-void
.end method

.method private registerLoginMsgService()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.alipay.security.login"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/android/widgets/discovery/b;

    invoke-direct {v2, p0}, Lcom/alipay/android/widgets/discovery/b;-><init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)V

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private setIndexResult(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->refresh()V

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgetListContainer:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getWidgetViewById(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string/jumbo v1, ""

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    if-eqz v2, :cond_9

    invoke-interface {v4}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/appentry/WidgetItemInfo;->getTips()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->tips:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "tips"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->tips:Ljava/lang/String;

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-boolean v1, v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->redMark:Z

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-object v1, v1, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->redMarkTip:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string/jumbo v1, "widget_msg_disc"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-object v0, v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->redMarkTip:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_4
    invoke-interface {v4, v5}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v1, "tips"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "widget_msg_disc"

    const-string/jumbo v1, ""

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000021"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000021"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->hasData:Z

    iput-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasCouponData:Z

    :cond_7
    if-eqz p1, :cond_8

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000022"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000022"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->hasData:Z

    iput-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasTravelData:Z

    :cond_8
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000023"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    const-string/jumbo v1, "50000023"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->hasData:Z

    iput-boolean v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasMemberData:Z

    goto/16 :goto_0

    :cond_9
    move-object v2, v1

    goto/16 :goto_2
.end method

.method private writePerfLog()V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->endTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->endTime:J

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->startTime:J

    sub-long v14, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-class v7, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "perf_open_discovery"

    const/4 v10, 0x0

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x3

    const-string/jumbo v17, ""

    aput-object v17, v13, v16

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->endTime:J

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    iput-wide v1, v0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->startTime:J

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u63a2\u7d22\u9996\u9875DiscoveryWidgetGroup\u52a0\u8f7d\u65f6\u95f4"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object p3, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    const-string/jumbo v1, "exploreHome"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->refViewID:Ljava/lang/String;

    iput-object p4, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeUserClickLog error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public discoveryNotify(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->setIndexResult(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->endTime:J

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writePerfLog()V

    return-void
.end method

.method public getAllWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->widgets:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/discoverywidget/d;->b:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v1, Lcom/alipay/mobile/discoverywidget/c;->e:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-static {v1}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Landroid/content/Context;)Lcom/alipay/mobile/discoverywidget/ui/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iput-object v2, v1, Lcom/alipay/mobile/discoverywidget/ui/a/d;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->buildHomeReq()Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/discoverywidget/ui/a/d;->c(Lcom/alipay/kabaoprod/biz/mwallet/pass/request/HomePageWidgetReq;)V

    :goto_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->registerLoginMsgService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget v1, Lcom/alipay/mobile/discoverywidget/c;->d:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    sget v3, Lcom/alipay/mobile/discoverywidget/e;->b:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/discoverywidget/b;->a:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-virtual {v2, v6, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v1, v5, v2, v5, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getView()Landroid/view/View;
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->startTime:J

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->layoutParent:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->initContainer()V

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->addDiscoveryWidgetAdapter()V

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public initDiscoveryLayout()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->discoveryObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->discoveryObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->discoveryObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRefresh()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widgets/discovery/a;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widgets/discovery/a;-><init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Lcom/alipay/mobile/framework/service/ext/security/AuthService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->refreshDiscoveryData()V

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    goto :goto_0
.end method

.method public onReturn()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->tabFlagText:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->allViews:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->refleshTabPointWidget(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->refreshDiscoveryData()V

    invoke-direct {p0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->getTag()Ljava/lang/String;

    return-void
.end method

.method public refleshTabPointWidget(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    const-class v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    sget-object v3, Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;->RIGHT_IMAGE:Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APTableView;->getChildView(Lcom/alipay/mobile/commonui/widget/APAbsTableView$ViewID;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_2

    invoke-virtual {p1, v4}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setVisibility(I)V

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;

    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->mId:Ljava/lang/String;

    return-void
.end method
