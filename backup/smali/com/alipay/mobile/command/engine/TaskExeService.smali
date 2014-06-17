.class public Lcom/alipay/mobile/command/engine/TaskExeService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    return-void
.end method

.method static synthetic a()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "installApkCache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandConfig;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "installApkOtpCache"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "service_triger"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandConfig;->initial(Landroid/content/Context;)V

    new-instance v0, Lcom/alipay/mobile/command/engine/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/command/engine/g;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "trigger service  onCreate"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->b()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->stopSelf()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    iget-wide v2, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/b;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/c;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/command/engine/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/d;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/command/trigger/SysEventChangeTrigger;

    invoke-direct {v1}, Lcom/alipay/mobile/command/trigger/SysEventChangeTrigger;-><init>()V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/command/engine/TaskExeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "crash commandCenter erro."

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/command/engine/TaskExeService;->stopSelf()V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trigger_time_key"

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "triger service onDestroy"

    aput-object v1, v0, v2

    return-void

    :catch_0
    move-exception v0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "task shutdown error."

    aput-object v1, v0, v2

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12

    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->b()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "trigger_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "triger action_type:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-static {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v3

    aput-object v3, v0, v2

    const-string/jumbo v0, "trigger_biz_context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-nez v2, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getOpTypeEnum(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    move-result-object v2

    iget-wide v3, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->b:J

    const-string/jumbo v0, "trigger_fm_context"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/alipay/mobile/command/engine/TaskExeService;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/alipay/mobile/command/engine/e;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/command/engine/e;-><init>(Lcom/alipay/mobile/command/engine/TaskExeService;Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    return v11

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "encode bizcontext Error"

    aput-object v3, v0, v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    new-array v1, v10, [Ljava/lang/Object;

    const-string/jumbo v2, "CMDCENTER\u517c\u5bb9\u6027\u95ee\u9898"

    aput-object v2, v1, v9

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u5f53\u524d\u8bbe\u5907\u65e0sd\u5361\u4fe1\u606f,\u65e0\u6cd5\u5b8c\u6210cmd\u64cd\u4f5c."

    aput-object v2, v0, v1

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "\u5f53\u524d\u8bbe\u5907\u65e0sd\u5361\u4fe1\u606f,\u65e0\u6cd5\u5b8c\u6210cmd\u64cd\u4f5c."

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :cond_2
    move-object v6, v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "triger Service unbind"

    aput-object v2, v0, v1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
