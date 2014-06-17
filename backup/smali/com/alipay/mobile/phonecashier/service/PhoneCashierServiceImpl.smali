.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;


# static fields
.field public static a:Z


# instance fields
.field private b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

.field private c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

.field private f:I

.field private g:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f:I

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/b;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->g:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    return-object p1
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object p3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-void
.end method

.method private a()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iput-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    iput-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f:I

    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->getUserInfoSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    iget-object v3, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2, v0}, Lcom/alipay/mobile/phonecashier/service/util/PhoneCashierUtil;->a(ILjava/lang/String;)V

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->cancel(Z)Z

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)I
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->f:I

    return v0
.end method

.method static synthetic c(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->e:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    return-object v0
.end method


# virtual methods
.method public boot(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v3, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    new-instance v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    iput-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v3, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    new-instance v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    iput-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v3, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->a:Z

    new-instance v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    invoke-direct {v1, v0, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    iput-object v1, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    new-array v1, v3, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public checkAndUpdate(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;->onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V

    return-void
.end method

.method public clearLastTask()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->b:Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public createLiveConnection()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/phonecashier/service/c;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadLocalTid()Lcom/alipay/android/app/helper/Tid;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.android.app.after.remove.current.payTask"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierServiceImpl;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
