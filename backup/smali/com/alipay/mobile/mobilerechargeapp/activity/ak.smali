.class final Lcom/alipay/mobile/mobilerechargeapp/activity/ak;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->b:I

    iput p4, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->d:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->a:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->b:I

    iget v3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;->c:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V

    return-void
.end method
