.class public final Lcom/alipay/mobile/security/authcenter/a/i;
.super Lcom/alipay/mobile/security/authcenter/a/d;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/a/d;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/a/i;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/i;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/a/i;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/i;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/i;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;->setInnerToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/i;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "tokenSource"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "tokenByWap"

    :cond_1
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;->setSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/i;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->wapTokenLogin(Lcom/alipay/mobile/framework/service/ext/security/domain/WapLoginToken;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    goto :goto_0
.end method
