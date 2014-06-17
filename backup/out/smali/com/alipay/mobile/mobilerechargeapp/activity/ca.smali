.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ca;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->e(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ca;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;

    invoke-static {v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->f(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method
