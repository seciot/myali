.class public final Lcom/alipay/mobile/security/authcenter/a/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;

.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/RSAService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/a/b;->b:Landroid/content/Context;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->a:Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->c:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->c:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;-><init>()V

    invoke-virtual {v2, p1}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;->setUserName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->c:Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v3, 0x0

    invoke-virtual {v0, p3, v3}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;->setPayPassword(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;->setLoginPassword(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;->setClientID(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{[info=supplement], req="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/b;->a:Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;

    invoke-interface {v0, v2}, Lcom/alipay/mobilegw/biz/shared/processer/account/QUserInfoSupplementService;->supplementQUserInfo(Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementReq;)Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{[info=supplement], req="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",res="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobileapp/common/service/facade/account/supplement/model/QUserInfoSupplementRes;->getResultStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
