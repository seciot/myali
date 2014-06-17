.class final Lcom/alipay/mobile/mobilerechargeapp/activity/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInstallFailed()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ay;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ay;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/av;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPayFailed(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ax;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/ax;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/av;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/av;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/aw;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/av;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
