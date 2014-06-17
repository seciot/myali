.class public Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field public mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

.field public mParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch(Landroid/os/Bundle;)V
    .locals 5

    const/high16 v4, 0x400

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_3

    const-string/jumbo v2, "PPBindMobileNo"

    const-string/jumbo v3, "actionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string/jumbo v2, "recharge"

    const-string/jumbo v3, "actionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cphc"

    const-string/jumbo v3, "actionType"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->dispatch(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->dispatch(Landroid/os/Bundle;)V

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

.method public setmParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mParams:Landroid/os/Bundle;

    return-void
.end method
