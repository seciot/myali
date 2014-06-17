.class final Lcom/alipay/mobile/mobilerechargeapp/adapter/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/h;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/h;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/h;->a:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;->a()V

    :cond_0
    return-void
.end method
