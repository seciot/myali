.class final Lcom/alipay/android/app/helper/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/helper/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->d()I

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/helper/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/app/helper/TidHelper;->g(Landroid/content/Context;)Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/tid/TidInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/tid/TidInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_4
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/alipay/android/app/tid/TidInfo;->c()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    invoke-static {v1}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/tid/TidInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_5
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    :try_start_6
    invoke-static {v0}, Lcom/alipay/android/app/helper/TidHelper;->a(Lcom/alipay/android/app/tid/TidInfo;)Lcom/alipay/android/app/tid/TidInfo;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_0
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_5
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->e()I

    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/alipay/android/app/helper/TidHelper;->f()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v1

    throw v0
.end method
