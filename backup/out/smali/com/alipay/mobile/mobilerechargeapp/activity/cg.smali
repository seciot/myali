.class final Lcom/alipay/mobile/mobilerechargeapp/activity/cg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;

    iput-boolean p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;->b:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;

    iget-boolean v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Z)V

    return-void
.end method
