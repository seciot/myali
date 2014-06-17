.class public Lcom/alipay/android/app/helper/PayHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/helper/PayHelper;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/android/app/IAlixPay;

.field private d:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/helper/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/a;-><init>(Lcom/alipay/android/app/helper/PayHelper;)V

    iput-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/helper/PayHelper;Lcom/alipay/android/app/IAlixPay;)Lcom/alipay/android/app/IAlixPay;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;
    .locals 2

    sget-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/android/app/helper/PayHelper;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/PayHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    const-string/jumbo v1, "9.0.5"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/MspConfig;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/MspConfig;->a(Z)V

    :cond_0
    sget-object v0, Lcom/alipay/android/app/helper/PayHelper;->a:Lcom/alipay/android/app/helper/PayHelper;

    return-object v0
.end method

.method private c()Z
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "com.alipay.android.app"

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string/jumbo v2, "3.5.2"

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v5, "\\."

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_1

    const-string/jumbo v0, "0"

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v5, :cond_2

    const-string/jumbo v0, "0"

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v5, :cond_4

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eq v6, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    sub-int v0, v3, v0

    :goto_4
    if-gtz v0, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    move v0, v1

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.app"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/alipay/android/app/IRemoteServiceCallback;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    const-class v3, Lcom/alipay/android/app/MspService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/alipay/android/app/helper/PayHelper;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/app/helper/PayHelper;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    if-nez v2, :cond_3

    const/16 v2, 0x64

    if-gt v0, v2, :cond_3

    const-wide/16 v2, 0x32

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    move-object v0, v1

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    iput-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_2

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p2}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    :try_start_4
    const-string/jumbo v2, "SPSafePay"

    invoke-static {v2}, Lcom/alipay/android/mini/util/LogAgent;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    invoke-interface {v2, p2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    :try_start_5
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_8
    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/android/app/helper/PayHelper;->d:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_5
    throw v0

    :catch_4
    move-exception v2

    iput-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->c:Lcom/alipay/android/app/IAlixPay;

    goto :goto_5

    :catch_5
    move-exception v2

    goto :goto_4
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/net/MspClient;

    iget-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    const-string/jumbo v2, "http://mclient.alipay.com/test.htm"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/net/MspClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/android/app/exception/NetErrorException;->printStackTrace()V

    goto :goto_0
.end method

.method public final declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "tid"

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "utdid"

    iget-object v2, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/android/app/helper/PayHelper;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/mobilesecuritysdk/face/SecurityClientMobile;->a(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
