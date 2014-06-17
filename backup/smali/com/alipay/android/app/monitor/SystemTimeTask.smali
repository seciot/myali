.class public abstract Lcom/alipay/android/app/monitor/SystemTimeTask;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Runnable;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/android/app/monitor/e;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/monitor/e;-><init>(Lcom/alipay/android/app/monitor/SystemTimeTask;)V

    iput-object v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->d:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->a:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->c:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/monitor/SystemTimeTask;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->c:Ljava/lang/Object;

    return-object v0
.end method

.method protected static b()Z
    .locals 1

    invoke-static {}, Lcom/alipay/android/app/data/BizDataSource;->a()Lcom/alipay/android/app/data/BizDataSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/BizDataSource;->e()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/monitor/SystemTimeTask;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->b:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->b:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->b:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->d:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final c()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/app/sys/NetConnectionType;->a:Lcom/alipay/android/app/sys/NetConnectionType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/monitor/SystemTimeTask;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected abstract e()V
.end method

.method protected abstract f()V
.end method

.method protected abstract g()Z
.end method
