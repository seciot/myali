.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    iput p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->b:I

    iput p4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->a:Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->b:I

    iget v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V

    return-void
.end method
