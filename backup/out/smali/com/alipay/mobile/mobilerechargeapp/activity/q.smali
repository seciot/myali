.class final Lcom/alipay/mobile/mobilerechargeapp/activity/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/q;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/q;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/q;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/q;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->finish()V

    :cond_0
    return-void
.end method
