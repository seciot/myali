.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->g(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bw;->b:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
