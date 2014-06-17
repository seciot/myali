.class final Lcom/alipay/android/app/monitor/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/monitor/SystemTimeTask;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/monitor/SystemTimeTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/monitor/a;->a()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-virtual {v0}, Lcom/alipay/android/app/monitor/SystemTimeTask;->f()V

    invoke-static {}, Lcom/alipay/android/app/monitor/TaskManager;->a()Lcom/alipay/android/app/monitor/TaskManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/monitor/TaskManager;->a(Lcom/alipay/android/app/monitor/SystemTimeTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v0}, Lcom/alipay/android/app/monitor/SystemTimeTask;->a(Lcom/alipay/android/app/monitor/SystemTimeTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v0}, Lcom/alipay/android/app/monitor/SystemTimeTask;->b(Lcom/alipay/android/app/monitor/SystemTimeTask;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v0}, Lcom/alipay/android/app/monitor/SystemTimeTask;->a(Lcom/alipay/android/app/monitor/SystemTimeTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v0}, Lcom/alipay/android/app/monitor/SystemTimeTask;->b(Lcom/alipay/android/app/monitor/SystemTimeTask;)Z

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v1}, Lcom/alipay/android/app/monitor/SystemTimeTask;->a(Lcom/alipay/android/app/monitor/SystemTimeTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_4
    iget-object v2, p0, Lcom/alipay/android/app/monitor/e;->a:Lcom/alipay/android/app/monitor/SystemTimeTask;

    invoke-static {v2}, Lcom/alipay/android/app/monitor/SystemTimeTask;->b(Lcom/alipay/android/app/monitor/SystemTimeTask;)Z

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
