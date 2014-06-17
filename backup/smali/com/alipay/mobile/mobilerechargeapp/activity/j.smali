.class final Lcom/alipay/mobile/mobilerechargeapp/activity/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/i;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/i;[B)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/j;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/i;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/j;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/j;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/i;

    iget-object v0, v0, Lcom/alipay/mobile/mobilerechargeapp/activity/i;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/j;->a:[B

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;[B)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/j;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/i;

    iget-object v1, v1, Lcom/alipay/mobile/mobilerechargeapp/activity/i;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;)Ljava/lang/String;

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
