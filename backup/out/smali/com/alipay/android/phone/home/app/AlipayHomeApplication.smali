.class public Lcom/alipay/android/phone/home/app/AlipayHomeApplication;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "AlipayHomeApplication.java"


# instance fields
.field private microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->params:Landroid/os/Bundle;

    return-void
.end method

.method private handleJumpRequest(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 41
    const-string/jumbo v0, "actionType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    const-string/jumbo v1, "gotoasset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000002"

    const-string/jumbo v2, "20000019"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->microContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 24
    iput-object p1, p0, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->params:Landroid/os/Bundle;

    .line 25
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->handleJumpRequest(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->params:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/home/app/AlipayHomeApplication;->handleJumpRequest(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
