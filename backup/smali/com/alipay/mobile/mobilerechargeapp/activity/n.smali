.class final Lcom/alipay/mobile/mobilerechargeapp/activity/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/n;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/n;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)I

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/n;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/n;->cancel()Z

    :cond_0
    return-void
.end method
