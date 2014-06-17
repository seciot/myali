.class public Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;
.super Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ServiceDescription;",
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
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByServiceName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BundleContext;->findBundleNameByServiceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/BundleContext;->loadBundle(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    invoke-virtual {p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->create(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public registerExtnernalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->isLazy()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalService;

    invoke-virtual {p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->create(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->getInterfaceClass()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 4

    const-string/jumbo v0, "_externalServiceClass_"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl$1;-><init>(Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_4

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->restoreState(Landroid/content/SharedPreferences;)V

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->getExternalService(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    goto :goto_1
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "_externalServiceClass_"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ExternalServiceManagerImpl;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->saveState(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method
