.class final Lcom/alipay/mobile/mobilerechargeapp/activity/br;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->a:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->c:Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->a:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/br;->b:I

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;I)V

    return-void
.end method
