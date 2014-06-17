.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ba;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/mobilerechargeapp/data/AutoInterface;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->p(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    return-void
.end method

.method public final a(Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    invoke-static {v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->q(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;)Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->c:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ba;->a:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;

    sget-object v1, Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;->b:Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;Lcom/alipay/mobile/mobilerechargeapp/utils/MobileSourceEnum;)V

    goto :goto_0
.end method
