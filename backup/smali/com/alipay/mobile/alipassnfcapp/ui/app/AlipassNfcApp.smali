.class public Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# static fields
.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field params:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "false"

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    const-string/jumbo v1, "is_verify"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassWaveActivity_;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParamByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->params:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassnfcapp/ui/app/AlipassNfcApp;->getEntryClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
