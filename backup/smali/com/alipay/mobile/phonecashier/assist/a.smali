.class final Lcom/alipay/mobile/phonecashier/assist/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/scan/ScanCallback;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Landroid/app/Activity;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/assist/a;->c:Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/assist/a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/assist/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanResult(ZLandroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/a;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/a;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onReadSuccess"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/assist/a;->b:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
