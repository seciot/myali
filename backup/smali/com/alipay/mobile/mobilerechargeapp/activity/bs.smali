.class final Lcom/alipay/mobile/mobilerechargeapp/activity/bs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iput p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iget v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;I)V

    return-void
.end method
