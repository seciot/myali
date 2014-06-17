.class final Lcom/alipay/mobile/mobilerechargeapp/activity/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/u;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/u;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/u;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/u;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    return-void
.end method
