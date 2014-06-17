.class public Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;-><init>()V

    return-void
.end method


# virtual methods
.method public bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V
    .locals 4

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000010"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->notifyCallback(Z)V

    goto :goto_0
.end method

.method public notifyCallback(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;->BindPhoneResult(Z)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setmCallBack(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/BindPhoneServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;

    return-void
.end method
