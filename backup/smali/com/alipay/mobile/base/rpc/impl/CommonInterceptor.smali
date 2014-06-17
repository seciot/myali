.class public Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/RpcInterceptor;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;

    invoke-direct {v0}, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->c:Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    move-object v1, v0

    :goto_0
    sget-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z
    .locals 8
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

    iget-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->c:Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->exceptionHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;Ljava/lang/annotation/Annotation;)Z

    const/4 v0, 0x1

    invoke-virtual {p6}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v1

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :goto_1
    sget-object v3, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->rpcAuth()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "login fail."

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "actionType"

    const-string/jumbo v3, "20000002"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000001"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_4
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "change user."

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_1
    invoke-virtual {p4, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_5
    move-object v0, v1

    goto/16 :goto_3

    :cond_6
    move-object v2, v1

    goto/16 :goto_1
.end method

.method public postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z
    .locals 7
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

    iget-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->c:Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->postHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;)Z

    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_RPC_RESPONSE:Ljava/lang/String;

    invoke-static {v0, p3, p4, p5}, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z
    .locals 8
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

    iget-object v0, p0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->c:Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/base/rpc/impl/PromotionRpcInterceptor;->preHandle(Ljava/lang/Object;Ljava/lang/ThreadLocal;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/annotation/Annotation;Ljava/lang/ThreadLocal;)Z

    sget-object v0, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->b:Ljava/lang/ThreadLocal;

    sget-object v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionCtx:Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_RPC_REQUEST:Ljava/lang/String;

    invoke-static {v0, p3, p4, p5}, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method
