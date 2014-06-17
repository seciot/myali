.class final Lcom/alipay/mobile/mobilerechargeapp/activity/aw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/av;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->i(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->j(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->l(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/MobileRechargeApp;->mHistoryManager:Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->k(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryManager;->a(Lcom/alipay/mobile/mobilerechargeapp/history/RechargeHistoryInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/av;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->m(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    return-void
.end method
