.class public Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

.field private static h:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Landroid/content/SharedPreferences;

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "WidgetMsgManager"

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$4;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->i:Landroid/os/Handler;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->c:Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;
    .locals 1

    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->c:Lcom/alipay/mobileapp/biz/rpc/widgetmsg/UserWidgetMsgService;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->i:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;
    .locals 1

    invoke-static {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/model/JsonWidgetMsgs;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a:Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;

    return-object v0
.end method


# virtual methods
.method public ackClick(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ackClick,id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->ackClick()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public cachedTaskIdAndMsgIdRequestUpdateWidgetMsg(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "redpoint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->requestUpdateWidgetMsg()V

    return-void
.end method

.method public doWidgetMsgRefresh(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    const-string/jumbo v1, "doWidgetMsgRefresh"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    iget-object v3, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->getWidgetMsgCountInfoById(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v2, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgStyle(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setNeedAck(Z)V

    iget v3, v2, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    iget v4, v2, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    iget v2, v2, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    invoke-virtual {v0, v3, v4, v2}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->setMsgCount(III)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->reset()V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getWidgetMsgCountInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->e:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->getWidgetMsgCountInfoById(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;

    move-result-object v0

    return-object v0
.end method

.method public registerWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V
    .locals 3

    if-eqz p1, :cond_1

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerWidgetView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->a(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->doWidgetMsgRefresh(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public removeWidgetMsg(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeTemporaryWidgetMsg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$3;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public requestUpdateWidgetMsg()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    const-string/jumbo v1, "requestUpdateWidgetMsg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$1;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->d:Ljava/lang/String;

    return-void
.end method

.method public unRegisterWidgetView(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;)V
    .locals 3

    if-eqz p1, :cond_3

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unregisterWidgetView:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgFlag;->getWidgetId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public updateWidgetMsg(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;->h:Ljava/lang/String;

    const-string/jumbo v1, "updateWidgetMsg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager$2;-><init>(Lcom/alipay/mobile/framework/widgetmsg/WidgetMsgManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
