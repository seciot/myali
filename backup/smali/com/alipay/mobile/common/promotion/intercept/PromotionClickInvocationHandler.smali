.class public Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "PromotionClickInvocationHandler"

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    if-eqz v0, :cond_5

    if-eqz p3, :cond_5

    array-length v1, p3

    if-ne v1, v5, :cond_5

    aget-object v1, p3, v4

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_5

    aget-object v1, p3, v4

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->currentActivityHasInterceptor()Z

    move-result v3

    if-eqz v3, :cond_5

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string/jumbo v4, "viewTrigger"

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->match([Ljava/lang/Object;Ljava/lang/String;)Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setTriggerView(Landroid/view/View;)V

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setTriggerView(Landroid/view/View;)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptor;->isSwallow()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/promotion/intercept/PromotionClickInvocationHandler;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    throw v1

    :cond_3
    throw v0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto :goto_0
.end method
