.class public final Lcom/alipay/mobile/about/a/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/about/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/about/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/about/a/a;->c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

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

    iput-object v0, p0, Lcom/alipay/mobile/about/a/a;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->a()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/a/a;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/a/a;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/about/a/a;->b:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->setUserId(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/about/a/a;->c:Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;->versionUpdateCheck(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    return-object v0
.end method
