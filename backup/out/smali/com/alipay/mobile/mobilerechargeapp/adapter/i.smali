.class final Lcom/alipay/mobile/mobilerechargeapp/adapter/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    iput p2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSwitchListener(ZLandroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/i;->a:I

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;->a(IZ)V

    :cond_0
    return-void
.end method
