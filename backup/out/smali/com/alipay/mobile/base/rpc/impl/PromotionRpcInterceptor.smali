.class public Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInterceptor;


# instance fields
.field private a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iput-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    return-void
.end method


# virtual methods
.method public exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/alipay/mobile/common/rpc/RpcException;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            ")Z"
        }
    .end annotation

    const/4 v3, 0x1

    invoke-interface {p6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    check-cast p6, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-interface {p6}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->removeInterceptorWithRpc(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-interface {v2, v0, v1}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->addInterceptorWithRpc(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->a:Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/promotion/intercept/IPromotionInterceptorManager;->setEnable(Z)V

    goto :goto_0
.end method

.method public preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
