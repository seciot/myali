.class public Lcom/alipay/android/app/PayEngine;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/app/PayEngine;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    sget-object v1, Lcom/alipay/android/app/PayEngine;->a:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/alipay/android/app/e;

    invoke-direct {v1}, Lcom/alipay/android/app/e;-><init>()V

    sput-object v1, Lcom/alipay/android/app/PayEngine;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.alipay.android.app.remove.current.payTask"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/app/PayEngine;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v6

    invoke-static {p0}, Lcom/alipay/android/app/util/StringUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/android/app/util/BizUtils;->a(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    :try_start_1
    invoke-static {v7, v1}, Lcom/alipay/android/app/PayEngine;->b(Ljava/lang/String;I)Z

    invoke-virtual {v6, v8}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v3

    :try_start_2
    invoke-virtual {v3, v7}, Lcom/alipay/android/app/data/BizData;->a(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->i()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;->a()V

    invoke-virtual {v6}, Lcom/alipay/android/app/data/BizDataSource;->b()V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v1

    invoke-virtual {v1, v7, v4, v5}, Lcom/alipay/android/app/data/DataProcessor;->a(Ljava/lang/String;J)V

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->m()Lcom/alipay/android/app/data/BizDataUnit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v2

    if-eqz v2, :cond_1

    :try_start_3
    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->a(Lcom/alipay/android/app/data/BizData;)V

    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataProcessor;->e()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_4
    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v9

    const-string/jumbo v10, "crash"

    invoke-virtual {v9, v1, v10}, Lcom/alipay/android/app/monitor/MonitorThread;->b(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->b(Lcom/alipay/android/app/data/BizData;)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_3
    invoke-virtual {v6, v8}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_5
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v1

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :cond_4
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v3

    const-string/jumbo v4, "pay time span"

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/android/app/monitor/MonitorThread;->c(JLjava/lang/String;)V

    const-string/jumbo v1, "SPSafePay"

    invoke-static {v1, v7}, Lcom/alipay/android/mini/util/LogAgent;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->a()V

    goto/16 :goto_0

    :cond_5
    :try_start_6
    invoke-virtual {v1}, Lcom/alipay/android/app/data/DataProcessor;->b()Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v0

    if-eqz v2, :cond_6

    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->b(Lcom/alipay/android/app/data/BizData;)V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_7
    invoke-virtual {v6, v8}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_7
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v1

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v7, v3, v6

    invoke-virtual {v1, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_8

    invoke-interface {v2, v3}, Lcom/alipay/android/app/data/BizDataUnit;->b(Lcom/alipay/android/app/data/BizData;)V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/alipay/android/app/data/BizData;->h()V

    :cond_9
    invoke-virtual {v6, v8}, Lcom/alipay/android/app/data/BizDataSource;->d(I)V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v1

    if-eqz v1, :cond_a

    :try_start_8
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v1

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnDestroy:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v7, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_a
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    goto/16 :goto_3

    :catch_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :catch_6
    move-exception v1

    move-object v2, v0

    goto/16 :goto_2
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resultStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "memo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "};"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/alipay/android/app/PayEngine;->b(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v2

    invoke-static {p0}, Lcom/alipay/android/app/util/BizUtils;->a(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->a(I)Z

    move-result v4

    const/4 v1, 0x0

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v2, v3}, Lcom/alipay/android/app/data/BizDataSource;->b(I)Lcom/alipay/android/app/data/BizData;
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    :goto_1
    return v0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/alipay/android/app/exception/AppErrorException;->printStackTrace()V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Lcom/alipay/android/app/data/BizDataSource;->c(I)Lcom/alipay/android/app/data/BizData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Lcom/alipay/android/app/data/BizDataSource;->a(Lcom/alipay/android/app/data/BizDataSource;Lcom/alipay/android/app/data/BizData;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
