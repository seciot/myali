.class public Lcom/alipay/mobile/authorization/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 21
    const-string/jumbo v0, "authorization"

    iput-object v0, p0, Lcom/alipay/mobile/authorization/MetaInfo;->entry:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 23
    const-string/jumbo v1, "authorization"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/authorization/app/AuthorizationApp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "10000112"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 27
    iget-object v1, p0, Lcom/alipay/mobile/authorization/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 30
    const-class v1, Lcom/alipay/mobile/authorization/app/ThirdPartyAuthorizeServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 31
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    .line 32
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/authorization/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
