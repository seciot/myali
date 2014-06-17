.class final Lcom/alipay/mobile/mobilerechargeapp/activity/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/t;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V

    return-void
.end method
