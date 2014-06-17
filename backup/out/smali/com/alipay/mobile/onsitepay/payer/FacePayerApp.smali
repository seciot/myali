.class public Lcom/alipay/mobile/onsitepay/payer/FacePayerApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "FacePayerApp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/FacePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/FacePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 42
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/FacePayerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
