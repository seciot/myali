.class final Lcom/alipay/mobile/mobilerechargeapp/activity/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/r;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/r;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/s;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/r;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/s;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/s;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/r;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/s;->a:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;[B)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/s;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/r;

    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/activity/r;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->d(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "parse json error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
