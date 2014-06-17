.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V

    return-void
.end method
