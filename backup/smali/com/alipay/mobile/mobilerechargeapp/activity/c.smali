.class final Lcom/alipay/mobile/mobilerechargeapp/activity/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/c;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/c;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/c;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/c;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/c;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->finish()V

    :cond_0
    return-void
.end method
