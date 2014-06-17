.class public final Lcom/alipay/b/b/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/alipay/b/b/d;


# direct methods
.method protected constructor <init>(Lcom/alipay/b/b/d;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/b/b/e;->a:Z

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/b/b/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/b/b/e;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 2

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getSendDataHandler()Lcom/alipay/b/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getSendDataHandler()Lcom/alipay/b/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/b/b/b;->onSendDataStarted()V

    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    iget v1, v0, Lcom/alipay/b/b/d;->b:I

    add-int/lit16 v1, v1, -0x3e8

    iput v1, v0, Lcom/alipay/b/b/d;->b:I

    :cond_1
    invoke-direct {p0}, Lcom/alipay/b/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    iget-object v0, v0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-object v0, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    iget v1, v0, Lcom/alipay/b/b/d;->b:I

    add-int/lit8 v1, v1, -0x64

    iput v1, v0, Lcom/alipay/b/b/d;->b:I

    iget-object v0, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    iget v0, v0, Lcom/alipay/b/b/d;->b:I

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/b/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/b/b/e;->b:Lcom/alipay/b/b/d;

    invoke-virtual {v0}, Lcom/alipay/b/b/d;->c()V

    :try_start_2
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getSendDataHandler()Lcom/alipay/b/b/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getSendDataHandler()Lcom/alipay/b/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/b/b/b;->onSendDataTimeout()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2
.end method
