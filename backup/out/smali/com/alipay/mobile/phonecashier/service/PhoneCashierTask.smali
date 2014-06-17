.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;
.super Landroid/os/AsyncTask;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private d:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->d:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->d:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    check-cast p1, [Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    array-length v0, p1

    if-le v0, v2, :cond_2

    aget-object v0, p1, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->d:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    new-instance v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v4, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->d:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierBootManager;->a()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    instance-of v2, v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->clearLastTask()V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
