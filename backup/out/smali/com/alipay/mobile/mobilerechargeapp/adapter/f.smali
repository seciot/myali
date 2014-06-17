.class final Lcom/alipay/mobile/mobilerechargeapp/adapter/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    iput p2, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;->b:Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;->a(Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter;)Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/adapter/f;->a:I

    invoke-interface {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/adapter/WarnManagerListAdapter$OperationListener;->a(I)V

    :cond_0
    return-void
.end method
