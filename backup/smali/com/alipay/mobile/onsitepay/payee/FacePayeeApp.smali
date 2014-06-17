.class public Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "FacePayeeApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 40
    if-eqz v0, :cond_0

    .line 41
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 55
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 57
    new-instance v2, Lcom/alipay/mobile/onsitepay/payee/s;

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/mobile/onsitepay/payee/s;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Handler;)V

    invoke-static {v2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 79
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method
