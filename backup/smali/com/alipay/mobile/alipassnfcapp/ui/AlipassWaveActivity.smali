.class public Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity;
.super Lcom/alipay/mobile/alipassnfcapp/ui/RootController;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "is_dynamic"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlipassSendDynmicSoundView"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "AlipassSendSoundView"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassnfcapp/ui/RootController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
