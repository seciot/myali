.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

.field final synthetic c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iput p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->a:I

    iput-object p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->b:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->a:I

    iget-object v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;->b:Lcom/alipay/mobile/mobilerechargeapp/data/ItemData;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    return-void
.end method
