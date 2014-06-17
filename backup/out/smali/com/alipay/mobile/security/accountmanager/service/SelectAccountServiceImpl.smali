.class public Lcom/alipay/mobile/security/accountmanager/service/SelectAccountServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/SelectAccountService;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/ext/security/SelectAccountCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/SelectAccountService;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public result(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/SelectAccountServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/SelectAccountCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/ext/security/SelectAccountCallBack;->a()V

    return-void
.end method

.method public showSelectAccount(Lcom/alipay/mobile/framework/service/ext/security/SelectAccountCallBack;)V
    .locals 4

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/service/SelectAccountServiceImpl;->a:Lcom/alipay/mobile/framework/service/ext/security/SelectAccountCallBack;

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/SelectAccountServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/security/accountmanager/service/SelectAccountServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000018"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method
