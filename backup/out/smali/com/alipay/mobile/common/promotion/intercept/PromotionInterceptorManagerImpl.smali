.class public Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/support/v4/content/LocalBroadcastManager;

.field private d:Landroid/content/BroadcastReceiver;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->e:Z

    iput-boolean v4, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v1, v0, v4

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/common/promotion/intercept/PromotionActivityAdvice;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.finishApp(String, String, Bundle)"

    aput-object v1, v0, v4

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartAppAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartAppAdvice;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.startActivityForResult(Intent, int)"

    aput-object v1, v0, v3

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.startActivityForResult(Intent, int)"

    aput-object v1, v0, v4

    const-string/jumbo v1, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, String)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivity(MicroApplication, Intent)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, String, int)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startActivityForResult(MicroApplication, Intent, int)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivity(MicroApplication, Intent)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.startExtActivityForResult(MicroApplication, Intent, int)"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/common/promotion/intercept/PromotionStartActivityAdvice;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->c:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-direct {p0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a()V

    return-void
.end method

.method private a(Landroid/view/View;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    instance-of v1, v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "iterate interceptor to match view trigger: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->triggerId:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/promotion/intercept/PromotionMatchHelper;->matchViewTrigger(Landroid/view/View;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Intent;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;
    .locals 3

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string/jumbo v2, ""

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;
    .locals 9

    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->c()Ljava/lang/String;

    move-result-object v2

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    instance-of v3, v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "iterate interceptor to match jump: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    iget-object v5, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_0

    :cond_5
    move-object v2, p2

    goto :goto_2

    :cond_6
    move-object v1, p1

    goto :goto_1
.end method

.method private declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl$1;-><init>(Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->d:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->c:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v2, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public addInterceptorByGroupKey(Ljava/lang/String;Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    :goto_2
    move v2, v0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addInterceptorByGroupKey: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    :cond_1
    return v3

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public addInterceptorWithRpc(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    const-string/jumbo v3, "weavingList"

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    aget-object v0, v2, v0

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/InterceptorFactory;->reflectCreateInterceptor(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->addInterceptorByGroupKey(Ljava/lang/String;Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;

    return-void
.end method

.method public currentActivityHasInterceptor()Z
    .locals 8

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "currentActivityHasInterceptor() start: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    instance-of v6, v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    if-eqz v6, :cond_5

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/promotion/intercept/interceptor/BaseInterceptor;->getDesc()Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "check interceptor: curAppId("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")-desc.appId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "), curPageId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")-desc.pageId("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v6, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->appId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v0, v0, Lcom/alipay/mobile/common/promotion/intercept/desc/InterceptorDesc;->pageId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto/16 :goto_0
.end method

.method public getOnClickListenerProxy(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;-><init>(Ljava/lang/Object;)V

    const-class v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->getProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTriggerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;

    return-object v0
.end method

.method public isEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    return v0
.end method

.method public match([Ljava/lang/Object;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;
    .locals 6

    const/4 v5, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "match: matchType="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v1, "viewTrigger"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    array-length v1, p1

    if-ne v1, v4, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Landroid/view/View;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "jump"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    array-length v1, p1

    if-ne v1, v4, :cond_3

    aget-object v1, p1, v3

    if-eqz v1, :cond_0

    aget-object v1, p1, v3

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, ""

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto :goto_0

    :cond_3
    array-length v1, p1

    if-ne v1, v5, :cond_7

    aget-object v1, p1, v4

    if-eqz v1, :cond_0

    aget-object v1, p1, v4

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_5

    aget-object v1, p1, v3

    if-nez v1, :cond_4

    aget-object v0, p1, v4

    check-cast v0, Landroid/content/Intent;

    const-string/jumbo v1, ""

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget-object v1, p1, v3

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v1, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    aget-object v0, p1, v4

    check-cast v0, Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Landroid/content/Intent;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto :goto_0

    :cond_5
    aget-object v1, p1, v4

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    aget-object v1, p1, v3

    if-nez v1, :cond_6

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    aget-object v1, p1, v3

    instance-of v1, v1, Lcom/alipay/mobile/framework/app/MicroApplication;

    if-eqz v1, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Lcom/alipay/mobile/framework/app/MicroApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    aget-object v0, p1, v4

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    array-length v1, p1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    aget-object v0, p1, v3

    check-cast v0, Ljava/lang/String;

    aget-object v1, p1, v4

    check-cast v1, Ljava/lang/String;

    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/interceptor/JumpInterceptor;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public removeInterceptor(Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeInterceptorWithRpc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setEnable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iput-boolean p1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->f:Z

    return-void
.end method

.method public declared-synchronized setTriggerView(Landroid/view/View;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionInterceptorManagerImpl;->b:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
