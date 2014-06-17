.class public Lcom/alipay/android/app/helper/TidHelper;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/android/app/tid/TidInfo;

.field private static b:I

.field private static c:Ljava/lang/Object;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/alipay/android/app/helper/Tid;
    .locals 4

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v1}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    return-object v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 4

    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->h(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_0

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/tid/TidInfo;
    .locals 0

    sput-object p0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-class v1, Lcom/alipay/android/app/helper/TidHelper;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/helper/Tid;->getTid()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u4e0d\u80fd\u5728\u4e3b\u7ebf\u7a0b\u91cd\u7f6eTID"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()V

    new-instance v0, Lcom/alipay/android/app/helper/c;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/c;->start()V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d()I
    .locals 2

    sget v0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/android/app/helper/TidHelper;->b:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()I
    .locals 2

    sget v0, Lcom/alipay/android/app/helper/TidHelper;->b:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/alipay/android/app/helper/TidHelper;->b:I

    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    invoke-static {p0}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

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

    const-string/jumbo v2, "3.5.3"

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

    const-string/jumbo v2, "msp"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

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
    if-gez v0, :cond_5

    move v0, v1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    move v0, v1

    goto :goto_4

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method static synthetic g(Landroid/content/Context;)Lcom/alipay/android/app/tid/TidInfo;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->j(Landroid/content/Context;)Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    return-object v0
.end method

.method private static h(Landroid/content/Context;)Lcom/alipay/android/app/helper/Tid;
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    sget-boolean v0, Lcom/alipay/android/app/helper/TidHelper;->d:Z

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "msp.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/alipay/android/app/pay/GlobalConstant;->loadProperties(Landroid/content/Context;Ljava/io/InputStream;Z)V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/alipay/android/app/pay/GlobalConstant;->convertProperties(Landroid/content/Context;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.alipay.setting/SafePayServerUrl"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/alipay/android/app/pay/GlobalConstant;->HTTP_URL:Ljava/lang/String;

    const-string/jumbo v3, "https://mclientpre.alipay.com/gateway.do"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v6, Lcom/alipay/android/app/pay/GlobalConstant;->PRE:Z

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    sput-boolean v6, Lcom/alipay/android/app/helper/TidHelper;->d:Z

    :cond_2
    sput-object v2, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    new-instance v0, Lcom/alipay/android/app/helper/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/helper/b;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/alipay/android/app/helper/TidHelper;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/alipay/android/app/helper/TidHelper;->b:I

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->c:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    sget-object v0, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alipay/android/app/helper/Tid;

    invoke-direct {v0}, Lcom/alipay/android/app/helper/Tid;-><init>()V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTid(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/helper/Tid;->setTidSeed(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/helper/Tid;->setTimestamp(J)V

    sget-object v1, Lcom/alipay/android/app/helper/TidHelper;->a:Lcom/alipay/android/app/tid/TidInfo;

    invoke-virtual {v1, p0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->a()Lcom/alipay/android/app/helper/Tid;

    move-result-object v0

    goto :goto_2
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v2, "utdid"

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "user_agent"

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/android/app/helper/MspConfig;->a(Lcom/alipay/android/app/tid/TidInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/alipay/android/app/util/FrameUtils;->a(Lorg/json/JSONObject;)Lcom/alipay/android/app/net/Request;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;

    new-instance v3, Lcom/alipay/android/app/data/InteractionData;

    invoke-direct {v3}, Lcom/alipay/android/app/data/InteractionData;-><init>()V

    invoke-direct {v2, v3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;-><init>(Lcom/alipay/android/app/data/InteractionData;)V

    new-instance v3, Lcom/alipay/android/app/net/Response;

    invoke-direct {v3}, Lcom/alipay/android/app/net/Response;-><init>()V

    invoke-virtual {v2, p0, v1, v3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v0, "tid"

    const-string/jumbo v1, ""

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v0, "clientkey"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/MspConfig;->t()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static j(Landroid/content/Context;)Lcom/alipay/android/app/tid/TidInfo;
    .locals 8

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.alipay.android.app.share"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "tid"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "timestamp"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v2, 0x0

    const/4 v5, 0x2

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    :cond_0
    invoke-static {v0, v4, v2, v3}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->e()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v0, v6

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_6
    move-object v0, v6

    goto :goto_0
.end method
