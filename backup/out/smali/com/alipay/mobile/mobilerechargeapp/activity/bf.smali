.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    iput-boolean p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bf;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->finish()V

    goto :goto_0
.end method
