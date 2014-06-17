.class final Lcom/alipay/mobile/phonecashier/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/c;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/c;->a:Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelper;->a()V

    return-void
.end method
