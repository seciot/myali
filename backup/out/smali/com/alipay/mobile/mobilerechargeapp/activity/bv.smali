.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bv;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bv;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/utils/LogAgentWriteLog;->h(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bv;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->finish()V

    return-void
.end method
