.class public final Lcom/alipay/mobile/security/authcenter/a/h;
.super Lcom/alipay/mobile/security/authcenter/a/d;


# instance fields
.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/a/d;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/a/h;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/a/h;->c:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->c:Landroid/os/Bundle;

    const-string/jumbo v1, "ssoChannelId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->parseTaobaoSsoToken(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getParsedNickName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->getParsedSsoToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/a/h;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->syncTimeStamp()J

    move-result-wide v2

    iget-object v6, p0, Lcom/alipay/mobile/security/authcenter/a/h;->a:Landroid/content/Context;

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->createSecSign(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;

    invoke-direct {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;-><init>()V

    invoke-virtual {v5, v7}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setNickName(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setSsoToken(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setTaobaoDeviceId(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setTimeStamp(J)V

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setSecSign(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setSsoChannelId(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;->setAutoImport(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/h;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->taobaoSsoTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/TaobaoSsoLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    goto :goto_0
.end method
