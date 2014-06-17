.class public Lcom/alipay/pushsdk/push/NotificationService;
.super Landroid/app/Service;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/pushsdk/push/j;

.field private c:Landroid/app/AlarmManager;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Lcom/alipay/pushsdk/push/c;

.field private i:Lcom/alipay/pushsdk/push/d;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/NotificationService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/pushsdk/push/NotificationService;)Lcom/alipay/pushsdk/push/j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method protected final a(I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "startAlarmTimer ELAPSED_REALTIME_WAKEUP! nextTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x64

    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
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

.method public final b()Lcom/alipay/pushsdk/push/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Lcom/alipay/pushsdk/push/c;

    return-object v0
.end method

.method public final c()Lcom/alipay/pushsdk/push/d;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Lcom/alipay/pushsdk/push/d;

    return-object v0
.end method

.method public final d()Lcom/alipay/pushsdk/push/j;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v2, "onBind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 10

    const/4 v9, 0x5

    const/4 v5, 0x3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/pushsdk/push/c;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/c;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Lcom/alipay/pushsdk/push/c;

    new-instance v0, Lcom/alipay/pushsdk/push/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/d;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->i:Lcom/alipay/pushsdk/push/d;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/e;->a(Landroid/content/Context;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/pushsdk/c/a/c;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/alipay/pushsdk/c/a/c;->a()V

    :goto_1
    new-instance v0, Lcom/alipay/pushsdk/push/j;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/j;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "start()..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/pushsdk/push/g;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/g;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/g;->a()V

    new-instance v0, Lcom/alipay/pushsdk/push/h;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->f:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotificationService_start():mUserId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/p;->c()V

    const-string/jumbo v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    new-instance v0, Lcom/alipay/pushsdk/deliver/NotificationReceiver;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/deliver/NotificationReceiver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/ClientActionReceiver;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.SHOW_NOTIFICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.CONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.KEEPLIVE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/NotificationService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".push.action.CHECK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/pushsdk/push/NotificationService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget v0, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->a(I)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->l:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->A:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget v7, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotificationService_registerClientActionReceiver:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Lcom/alipay/pushsdk/push/ClientActionReceiver;->a:I

    div-int/lit8 v8, v8, 0x3c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate() executorService isShutdown="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/alipay/pushsdk/c/a/c;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_2
    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "initDebugMode: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, ""

    :goto_2
    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/pushsdk/c/a/c;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/alipay/pushsdk/c/a/c;->a()V

    goto/16 :goto_1

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/alipay/pushsdk/c/a/c;->a()V

    throw v0
.end method

.method public onDestroy()V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy()..."

    invoke-static {v10, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->g:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->D:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->D:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotificationService_onDestroy:mUserId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v2, "stop()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->c:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->d:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    iput-object v9, p0, Lcom/alipay/pushsdk/push/NotificationService;->e:Landroid/content/BroadcastReceiver;

    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iput-object v9, p0, Lcom/alipay/pushsdk/push/NotificationService;->f:Landroid/content/BroadcastReceiver;

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->g:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->w:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "NotificationService_stop:reconnectInterval="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/a/o;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " lostedTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/j;->c()V

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v2, "stop() executorService will be shutdown!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-static {}, Lcom/alipay/pushsdk/c/a/e;->a()V

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy() will restart this service."

    invoke-static {v10, v0, v1}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alipay/pushsdk/push/NotificationService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "cur_triger"

    const-string/jumbo v2, "16"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/alipay/pushsdk/push/NotificationService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_2
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v2, "onRebind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 15

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStartCommand Received start id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", intent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    if-eqz p1, :cond_3

    const-string/jumbo v1, "cur_triger"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "cur_userId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "cur_utdId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "cur_msptId"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    :goto_0
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->f:Ljava/lang/String;

    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v5, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v13, 0x2710

    add-long/2addr v6, v13

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "NotificationService_onStartCommand:trigerEvent="

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v1 .. v8}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    new-instance v1, Lcom/alipay/pushsdk/push/h;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->l:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/h;-><init>(Landroid/content/Context;)V

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1, v11}, Lcom/alipay/pushsdk/push/h;->a(Ljava/lang/String;)V

    iput-object v11, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v1, v10}, Lcom/alipay/pushsdk/push/h;->e(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Ljava/lang/String;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1, v9}, Lcom/alipay/pushsdk/push/h;->f(Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/j;->a(Ljava/lang/String;)V

    const/4 v1, 0x3

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onStartCommand trigerEvent="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", utdId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->b:Lcom/alipay/pushsdk/push/j;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lcom/alipay/pushsdk/push/e;

    invoke-direct {v1, p0, v12}, Lcom/alipay/pushsdk/push/e;-><init>(Lcom/alipay/pushsdk/push/NotificationService;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/Thread;

    const-string/jumbo v3, "NotificationService Triger Runnable"

    invoke-direct {v2, v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :cond_1
    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v3, "configRequest()..."

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->h:Lcom/alipay/pushsdk/push/c;

    new-instance v2, Lcom/alipay/pushsdk/push/b;

    invoke-direct {v2, p0}, Lcom/alipay/pushsdk/push/b;-><init>(Lcom/alipay/pushsdk/push/NotificationService;)V

    invoke-virtual {v1, v2}, Lcom/alipay/pushsdk/push/c;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    const-string/jumbo v4, "10"

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/h;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/NotificationService;->j:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/pushsdk/push/h;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/pushsdk/push/NotificationService;->k:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x4

    sget-object v1, Lcom/alipay/pushsdk/push/NotificationService;->a:Ljava/lang/String;

    const-string/jumbo v2, "onUnbind()..."

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
