.class final Lcom/alipay/mobile/mobilerechargeapp/activity/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/o;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/o;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/o;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/o;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->finish()V

    :cond_0
    return-void
.end method
