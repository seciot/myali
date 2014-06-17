.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ac;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->finish()V

    :cond_0
    return-void
.end method
