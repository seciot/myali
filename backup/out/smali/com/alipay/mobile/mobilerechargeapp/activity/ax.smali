.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ax;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/av;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ax;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ax;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->n(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->destroy(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ax;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->o(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    return-void
.end method
