.class public Lcom/alipay/android/app/MspService;
.super Landroid/app/Service;


# static fields
.field private static a:Z


# instance fields
.field private b:Lcom/alipay/android/app/MspService$AliPayServiceStub;

.field private c:Lcom/alipay/android/app/MspService$AlixPayServiceStub;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/alipay/android/app/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/c;-><init>(Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "OK"

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "trade_no=\"%s\"&extern_token=\"%s\"&partner=\"%s\"&app_name=\"tb\""

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;)V
    .locals 2

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/MspService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/net/MspClient;

    const-string/jumbo v1, "http://mclient.alipay.com/test.htm"

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/app/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/MspClient;->b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/NetErrorException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/IRemoteServiceCallback;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/alipay/android/app/d;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/d;-><init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/IRemoteServiceCallback;)V

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/IRemoteCallback;)V

    :cond_0
    return-void
.end method

.method static synthetic b()V
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->d()V

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "extern_token=\"\"&app_name=\"alipay\"&trade_no=\"\"&biz_type=\"paycheck\""

    invoke-static {v0}, Lcom/alipay/android/app/PayEngine;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    const-string/jumbo v1, "com.alipay.android.app.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.eg.android.AlipayGphone.IAliPay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$AliPayServiceStub;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->c:Lcom/alipay/android/app/MspService$AlixPayServiceStub;

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/MspService;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    sget-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    if-nez v0, :cond_0

    sput-boolean v4, Lcom/alipay/android/app/MspService;->a:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v2, "msp.properties"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/pay/GlobalConstant;->convertProperties(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->c()V

    const-class v0, Lcom/alipay/android/app/data/LuaExcutor;

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/script/ScriptExcutorCreator;->a(Ljava/lang/Class;)V

    const-class v0, Lcom/alipay/android/app/data/MspBizUnit;

    invoke-static {v0}, Lcom/alipay/android/app/data/BizData;->a(Ljava/lang/Class;)V

    new-instance v0, Lcom/alipay/android/app/request/MspFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/app/request/MspFrameFactory;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a(Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;)V

    new-instance v0, Lcom/alipay/android/mini/data/MiniFrameFactory;

    invoke-direct {v0}, Lcom/alipay/android/mini/data/MiniFrameFactory;-><init>()V

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a(Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;)V

    const-class v0, Lcom/alipay/android/app/display/windows/WindowsManager;

    const/4 v2, 0x2

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v2, 0x3

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    invoke-static {v4, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const-class v0, Lcom/alipay/android/mini/window/MiniWindowManager;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v2, 0x4

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v2, 0x6

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/16 v2, 0x8

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/16 v2, -0xa

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/4 v2, 0x5

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    const/16 v2, 0x9

    invoke-static {v2, v0}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a(ILjava/lang/Class;)V

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/script/ScriptEventRunnable;->startThread()V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->b()V

    invoke-static {v1}, Lcom/alipay/android/app/AlarmReciver;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$AliPayServiceStub;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/android/app/MspService$AliPayServiceStub;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/MspService$AliPayServiceStub;-><init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->b:Lcom/alipay/android/app/MspService$AliPayServiceStub;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/MspService;->c:Lcom/alipay/android/app/MspService$AlixPayServiceStub;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/android/app/MspService$AlixPayServiceStub;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/app/MspService$AlixPayServiceStub;-><init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/MspService;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService;->c:Lcom/alipay/android/app/MspService$AlixPayServiceStub;

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;

    invoke-virtual {v0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;->isQihooGuardOpened()Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->c()V

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/MspService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/android/app/MspService;->a:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
