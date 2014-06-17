.class public final Lcom/alipay/b/a/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:[S

.field private b:Z

.field private synthetic c:Lcom/alipay/b/a/d;


# direct methods
.method public constructor <init>(Lcom/alipay/b/a/d;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/b/a/e;->c:Lcom/alipay/b/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x4000

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/alipay/b/a/e;->a:[S

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/b/a/e;->b:Z

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/b/a/e;->b:Z
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

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/b/a/e;->b:Z
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
    .locals 9

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x0

    const v0, 0xac44

    const/16 v2, 0x10

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v0, v2, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-gez v0, :cond_c

    const v2, 0xac44

    const/16 v4, 0x10

    const/4 v5, 0x3

    :try_start_1
    invoke-static {v2, v4, v5}, Landroid/media/AudioRecord;->getMinBufferSize(III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    move-result v0

    move v2, v1

    :goto_0
    if-gez v0, :cond_0

    move v2, v3

    :cond_0
    if-ne v2, v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    :try_start_2
    rem-int v1, v0, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    if-eqz v1, :cond_b

    add-int/lit8 v5, v0, 0x1

    :goto_1
    const/16 v0, 0x1000

    if-ge v5, v0, :cond_a

    const/16 v5, 0x1000

    move v4, v2

    :cond_2
    :goto_2
    const-wide/16 v0, 0x64

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    invoke-direct {p0}, Lcom/alipay/b/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SonicWaveNFC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ".AudioRecord encoding:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " minsize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :try_start_4
    new-instance v0, Landroid/media/AudioRecord;

    iget-object v1, p0, Lcom/alipay/b/a/e;->c:Lcom/alipay/b/a/d;

    iget v1, v1, Lcom/alipay/b/a/d;->a:I

    const v2, 0xac44

    iget-object v3, p0, Lcom/alipay/b/a/e;->c:Lcom/alipay/b/a/d;

    iget v3, v3, Lcom/alipay/b/a/d;->b:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    const/16 v1, 0x1cb6

    :goto_4
    invoke-direct {p0}, Lcom/alipay/b/a/e;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    if-gtz v1, :cond_8

    :cond_3
    move v1, v6

    :cond_4
    :goto_5
    invoke-direct {p0}, Lcom/alipay/b/a/e;->a()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    move-result v2

    if-eqz v2, :cond_5

    const v2, 0x285ff0

    if-lt v1, v2, :cond_9

    :cond_5
    :goto_6
    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    :cond_6
    :goto_7
    if-eqz v0, :cond_7

    :try_start_7
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    :cond_7
    :goto_8
    const-wide/16 v0, 0x64

    :try_start_8
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v6

    move v1, v3

    :goto_9
    move v5, v0

    move v4, v1

    goto :goto_2

    :cond_8
    :try_start_9
    iget-object v2, p0, Lcom/alipay/b/a/e;->a:[S

    const/4 v3, 0x0

    const/16 v7, 0x4000

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    if-ltz v2, :cond_3

    sub-int/2addr v1, v2

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/alipay/b/a/e;->a:[S

    const/4 v3, 0x0

    const/16 v7, 0x4000

    invoke-virtual {v0, v2, v3, v7}, Landroid/media/AudioRecord;->read([SII)I

    move-result v2

    if-lez v2, :cond_5

    add-int/2addr v1, v2

    invoke-static {}, Lcom/alipay/b/a/b;->a()Lcom/alipay/b/a/b;

    move-result-object v3

    iget-object v7, p0, Lcom/alipay/b/a/e;->a:[S

    invoke-virtual {v3, v7, v2}, Lcom/alipay/b/a/b;->a([SI)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x64

    :try_start_a
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v1, v7

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "SonicWaveNFC"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_a

    :catch_8
    move-exception v2

    goto :goto_9

    :catch_9
    move-exception v1

    move v1, v2

    goto :goto_9

    :cond_a
    move v4, v2

    goto/16 :goto_2

    :cond_b
    move v5, v0

    goto/16 :goto_1

    :cond_c
    move v2, v3

    goto/16 :goto_0
.end method
