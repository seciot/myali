.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ab;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->finish()V

    :cond_0
    return-void
.end method
