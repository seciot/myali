.class public Lcom/alipay/mobile/base/rpc/impl/InterceptorServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;

# interfaces
.implements Lcom/alipay/mobile/base/rpc/InterceptorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/base/rpc/impl/InterceptorServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/LoginInterceptor;

    invoke-direct {v2}, Lcom/alipay/mobile/base/rpc/impl/LoginInterceptor;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    const-class v1, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;

    invoke-direct {v2}, Lcom/alipay/mobile/base/rpc/impl/CommonInterceptor;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    const-class v1, Lcom/alipay/mobile/framework/service/annotation/UpdateDeviceInfo;

    new-instance v2, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;

    invoke-virtual {p0}, Lcom/alipay/mobile/base/rpc/impl/InterceptorServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/base/rpc/impl/CtuInterceptor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
