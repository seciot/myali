.class public Lcom/ut/device/BQueryWhoHasOne;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/ut/device/a;)V
    .locals 7

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lcom/ut/device/b;->S:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "UT.FoundIT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p2}, Lcom/ut/device/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/ut/device/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/ut/device/a;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ut/device/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v4}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v5}, Lcom/ut/c/g;->D(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "e"

    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "s"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "d"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "u"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "t"

    invoke-virtual {p2}, Lcom/ut/device/a;->e()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "S"

    invoke-virtual {p2}, Lcom/ut/device/a;->d()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "com.ut.permission.DEVICE_STATE"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    const-string/jumbo v0, "src"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ut/device/b;->b(Landroid/content/Context;)Lcom/ut/device/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ut/device/a;->d()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/ut/device/a;->d()J

    move-result-wide v1

    invoke-static {v0}, Lcom/ut/device/b;->a(Lcom/ut/device/a;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/ut/device/BQueryWhoHasOne;->abortBroadcast()V

    const-string/jumbo v1, "src"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/ut/device/BQueryWhoHasOne;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ut/device/a;)V

    :cond_0
    return-void
.end method
