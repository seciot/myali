.class final Lcom/alipay/mobile/mobilerechargeapp/activity/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/TransportCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 0

    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onPostExecute(Lcom/alipay/mobile/common/transport/Request;Lcom/alipay/mobile/common/transport/Response;)V
    .locals 3

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/mobilerechargeapp/activity/s;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/s;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/r;[B)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Ljava/lang/String;

    return-void
.end method

.method public final onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Ljava/lang/String;

    return-void
.end method
