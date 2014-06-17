.class final Lcom/alipay/mobile/mobilerechargeapp/activity/be;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/be;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/be;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/be;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "login success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/be;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v1, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Z)V

    goto :goto_0
.end method
