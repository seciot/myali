.class final Lcom/alipay/mobile/alipassapp/ui/fj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/fj;->a:Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000030"

    const-string/jumbo v3, ""

    const-string/jumbo v4, "myCouponList"

    const-string/jumbo v5, "addCoupon"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fj;->a:Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    const-string/jumbo v0, "/pages/coupon.html?isFrom=couponList"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fj;->a:Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->a(Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/alipassapp/ui/VoucherCurrentListActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    return-void
.end method
