.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bh;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bh;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    return-void
.end method
