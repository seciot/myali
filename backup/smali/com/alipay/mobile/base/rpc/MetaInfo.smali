.class public Lcom/alipay/mobile/base/rpc/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    const-string/jumbo v0, "RpcInterceptor"

    iput-object v0, p0, Lcom/alipay/mobile/base/rpc/MetaInfo;->entry:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    const-string/jumbo v1, "RpcInterceptor"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/base/rpc/impl/InterceptorServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/base/rpc/InterceptorService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/base/rpc/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
