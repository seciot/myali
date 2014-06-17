.class final Lcom/alipay/mobile/quinox/splash/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/splash/c;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->e(Lcom/alipay/mobile/quinox/splash/c;)Z

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->f(Lcom/alipay/mobile/quinox/splash/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit16 v0, v0, 0x3e8

    add-int/lit16 v0, v0, -0x1f4

    :goto_0
    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_0
    mul-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_1
    move-exception v0

    const-wide/16 v0, 0x3e8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/d;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v1}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    throw v0
.end method
