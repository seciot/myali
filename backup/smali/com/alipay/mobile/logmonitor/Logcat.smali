.class public Lcom/alipay/mobile/logmonitor/Logcat;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/regex/Pattern;

.field private static b:Ljava/io/BufferedReader;

.field private static c:Ljava/lang/Process;

.field private static d:Ljava/lang/Thread;

.field private static e:Lcom/alipay/mobile/logmonitor/model/LogFileModel;

.field private static f:Ljava/io/BufferedWriter;

.field private static g:I

.field private static h:Z

.field private static i:Ljava/text/SimpleDateFormat;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static k:Ljava/lang/String;

.field private static l:Z

.field private static m:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "^([0-9:\\s\\-\\.]+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->a:Ljava/util/regex/Pattern;

    sput-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->b:Ljava/io/BufferedReader;

    sput-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->d:Ljava/lang/Thread;

    sput-boolean v2, Lcom/alipay/mobile/logmonitor/Logcat;->h:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->i:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string/jumbo v0, "logSwitch"

    sput-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->k:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->l:Z

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sput v0, Lcom/alipay/mobile/logmonitor/Logcat;->m:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/model/LogFileModel;)Lcom/alipay/mobile/logmonitor/model/LogFileModel;
    .locals 0

    sput-object p0, Lcom/alipay/mobile/logmonitor/Logcat;->e:Lcom/alipay/mobile/logmonitor/model/LogFileModel;

    return-object p0
.end method

.method static synthetic a(Ljava/io/BufferedReader;)Ljava/io/BufferedReader;
    .locals 0

    sput-object p0, Lcom/alipay/mobile/logmonitor/Logcat;->b:Ljava/io/BufferedReader;

    return-object p0
.end method

.method static synthetic a(Ljava/io/BufferedWriter;)Ljava/io/BufferedWriter;
    .locals 0

    sput-object p0, Lcom/alipay/mobile/logmonitor/Logcat;->f:Ljava/io/BufferedWriter;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/Process;)Ljava/lang/Process;
    .locals 0

    sput-object p0, Lcom/alipay/mobile/logmonitor/Logcat;->c:Ljava/lang/Process;

    return-object p0
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->l:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/mobile/logmonitor/model/LogFileModel;Ljava/io/BufferedWriter;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/alipay/mobile/logmonitor/Logcat;->b(Lcom/alipay/mobile/logmonitor/model/LogFileModel;Ljava/io/BufferedWriter;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    sget v1, Lcom/alipay/mobile/logmonitor/Logcat;->g:I

    if-gtz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->h()I

    move-result v1

    sput v1, Lcom/alipay/mobile/logmonitor/Logcat;->g:I

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v1, ".*(GC_EXPLICIT|GC_ALLOC|GC_CONCURRENT|GC_FOR_ALLOC|WAIT_FOR_CONCURRENT_GC|Grow heap).*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".*\\([\\s]{0,10}("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/logmonitor/Logcat;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")\\).*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :cond_4
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/alipay/mobile/logmonitor/Logcat;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, ".*(ActivityManager).*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)J
    .locals 2

    invoke-static {p0}, Lcom/alipay/mobile/logmonitor/Logcat;->c(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic b()Ljava/lang/Process;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->c:Ljava/lang/Process;

    return-object v0
.end method

.method private static b(Lcom/alipay/mobile/logmonitor/model/LogFileModel;Ljava/io/BufferedWriter;)Z
    .locals 2

    sget-object v1, Lcom/alipay/mobile/logmonitor/util/LogMonitorConstans;->GLOBAL_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {p0}, Lcom/alipay/mobile/logmonitor/model/LogFileModel;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static c(Ljava/lang/String;)J
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, " "

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    sget-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->i:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/alipay/mobile/logmonitor/Logcat;->m:I

    add-int/lit16 v3, v3, 0x76c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    :goto_1
    return-wide v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c()Z
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->h:Z

    return v0
.end method

.method static synthetic d()Ljava/io/BufferedReader;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->b:Ljava/io/BufferedReader;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->h:Z

    return v0
.end method

.method public static flushCurrentFile()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->f:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->e:Lcom/alipay/mobile/logmonitor/model/LogFileModel;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->e:Lcom/alipay/mobile/logmonitor/model/LogFileModel;

    sget-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->f:Ljava/io/BufferedWriter;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/Logcat;->b(Lcom/alipay/mobile/logmonitor/model/LogFileModel;Ljava/io/BufferedWriter;)Z

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->h:Z

    return-void
.end method

.method private static g()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->l:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/logmonitor/Logcat;->l:Z

    goto :goto_0
.end method

.method private static h()I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v2, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string/jumbo v3, "system"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static start()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->g()V

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/logmonitor/a;

    invoke-direct {v1}, Lcom/alipay/mobile/logmonitor/a;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->d:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static stop()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->g()V

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->flushCurrentFile()V

    sget-object v0, Lcom/alipay/mobile/logmonitor/Logcat;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
