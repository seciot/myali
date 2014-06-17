.class final Lcom/alipay/mobile/about/service/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/f;->c:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/f;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/about/service/f;->c:Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;

    iget-object v0, p0, Lcom/alipay/mobile/about/service/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateBroadcastReceiver;->a()Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;

    move-result-object v6

    const-string/jumbo v0, "com.alipay.mobile.about.UPDATE_CHECK_VERSION"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->checkUpdate(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v0, "com.alipay.mobile.about.UPDATE_CLIENT"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    const-string/jumbo v1, "_updateInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;

    if-eqz v4, :cond_2

    sget v5, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NONEED:I

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NONEED:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getExistNewVersion()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_OPTIONAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget v5, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_OPTIONAL:I

    :cond_1
    :goto_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;

    invoke-virtual {v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getDownloadURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getMemo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4}, Lcom/alipay/mobilegw/biz/shared/processer/login/UserLoginResult;->getCurrentProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->update(Lcom/alipay/mobile/framework/service/ext/about/UpdateInfo;)V

    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    iget-object v1, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/about/service/f;->b:Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "state=onResume"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/about/service/m;->d()V

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/about/UpdateServices;->updateImmediately()V

    :cond_3
    return-void

    :cond_4
    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_MUST:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget v5, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_MUST:I

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->LOGIN_UPDATE_NOTICE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v5, Lcom/alipay/mobile/security/securitycommon/ErrMsgConstants;->ABOUT_UPDATE_NOTICE:I

    goto :goto_0
.end method
