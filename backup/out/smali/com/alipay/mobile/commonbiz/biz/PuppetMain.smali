.class public Lcom/alipay/mobile/commonbiz/biz/PuppetMain;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "fromAlipayLogin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;->finish()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;->finish()V

    goto :goto_0
.end method
