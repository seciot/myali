.class final Lcom/alipay/mobile/appstoreapp/app/a;
.super Ljava/lang/Object;
.source "AppStoreApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 91
    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/a;->a:Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    .line 99
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, v3, v3}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getUserInfoBySql(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    .line 102
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v2

    .line 104
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v1

    .line 106
    if-nez v2, :cond_0

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {v0, v4, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    .line 108
    invoke-virtual {v0, v3, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    .line 112
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
