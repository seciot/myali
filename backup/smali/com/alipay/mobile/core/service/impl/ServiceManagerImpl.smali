.class public Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/core/ServiceManager;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    return-void
.end method

.method public exit()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/MicroService;->destroy(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyService(Lcom/alipay/mobile/framework/service/MicroService;)V
    .locals 4

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v1, v2

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/MicroService;

    if-ne v0, p1, :cond_1

    goto :goto_1
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

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

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/MicroService;->restoreState(Landroid/content/SharedPreferences;)V

    goto :goto_0
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/core/service/impl/ServiceManagerImpl;->a:Ljava/util/Map;

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
