.class public final Lcom/alipay/b/a/c;
.super Ljava/lang/Thread;


# instance fields
.field private a:Z

.field private synthetic b:Lcom/alipay/b/a/b;


# direct methods
.method protected constructor <init>(Lcom/alipay/b/a/b;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/b/a/c;->a:Z

    return-void
.end method

.method private declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/b/a/c;->a:Z
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
    iput-boolean p1, p0, Lcom/alipay/b/a/c;->a:Z
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
    .locals 11

    const/4 v7, 0x1

    const/16 v10, 0x20

    const/4 v6, 0x0

    :cond_0
    :goto_0
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move v0, v6

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/alipay/b/a/c;->a()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_3
    if-nez v0, :cond_0

    invoke-virtual {p0, v6}, Lcom/alipay/b/a/c;->a(Z)V

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/b/a/d;->c()V

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x64

    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_4
    :try_start_2
    iget-object v1, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    invoke-virtual {v1}, Lcom/alipay/b/a/b;->b()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    if-eqz v1, :cond_18

    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/alipay/b/a/c;->a(Z)V

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/b/a/d;->c()V

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v0, v0, Lcom/alipay/b/a/b;->c:I

    if-nez v0, :cond_6

    const/16 v0, 0x20

    new-array v1, v0, [B

    move v0, v6

    move v2, v6

    :goto_5
    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v3, v3, Lcom/alipay/b/a/b;->b:I

    if-lt v0, v3, :cond_3

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-boolean v3, v3, Lcom/alipay/b/a/b;->e:Z

    iget-object v4, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v4, v4, Lcom/alipay/b/a/b;->d:F

    float-to-double v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/b/a/a;->onDataReceived([BIZD)V

    move v0, v7

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v3, v3, Lcom/alipay/b/a/b;->a:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v3, v3, Lcom/alipay/b/a/b;->a:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v0, v0, Lcom/alipay/b/a/b;->c:I

    if-ne v0, v7, :cond_7

    const/16 v0, 0x80

    new-array v1, v0, [B

    const-string/jumbo v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v2, v6

    :goto_6
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v0, v0, Lcom/alipay/b/a/b;->b:I

    if-lt v2, v0, :cond_9

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v2, v2, Lcom/alipay/b/a/b;->b:I

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-boolean v3, v3, Lcom/alipay/b/a/b;->e:Z

    iget-object v4, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v4, v4, Lcom/alipay/b/a/b;->d:F

    float-to-double v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/b/a/a;->onDataReceived([BIZD)V

    :cond_7
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v0, v0, Lcom/alipay/b/a/b;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    const/16 v0, 0x80

    new-array v1, v0, [B

    const-string/jumbo v4, "0123456789abcdefghijklmnopqrstuvwxyz~!@#$%^&*()_+-`\';:|/.<>?\\\"X "

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v6

    move v2, v6

    :goto_7
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v0, v0, Lcom/alipay/b/a/b;->b:I

    div-int/lit8 v0, v0, 0x3

    if-lt v3, v0, :cond_c

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-boolean v3, v3, Lcom/alipay/b/a/b;->e:Z

    iget-object v4, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v4, v4, Lcom/alipay/b/a/b;->d:F

    float-to-double v4, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/b/a/a;->onDataReceived([BIZD)V

    :cond_8
    move v0, v7

    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v0, v0, Lcom/alipay/b/a/b;->a:[B

    aget-byte v0, v0, v2

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    shl-int/lit8 v5, v2, 0x1

    if-ltz v0, :cond_a

    if-ge v0, v4, :cond_a

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_a
    int-to-byte v0, v0

    aput-byte v0, v1, v5

    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v0, v0, Lcom/alipay/b/a/b;->a:[B

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    if-ltz v0, :cond_b

    if-ge v0, v4, :cond_b

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_b
    int-to-byte v0, v0

    aput-byte v0, v1, v5

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v0, v0, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v8, v3, 0x3

    aget-byte v0, v0, v8

    ushr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    if-ltz v0, :cond_d

    if-ge v0, v5, :cond_d

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :cond_d
    int-to-byte v8, v0

    if-gtz v2, :cond_e

    if-eq v8, v10, :cond_1a

    :cond_e
    add-int/lit8 v0, v2, 0x1

    aput-byte v8, v1, v2

    :goto_8
    iget-object v2, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v2, v2, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v8, v3, 0x3

    aget-byte v2, v2, v8

    shl-int/lit8 v2, v2, 0x4

    iget-object v8, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v8, v8, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x1

    aget-byte v8, v8, v9

    ushr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0xf

    or-int/2addr v2, v8

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    if-ltz v2, :cond_f

    if-ge v2, v5, :cond_f

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_f
    int-to-byte v8, v2

    if-gtz v0, :cond_10

    if-eq v8, v10, :cond_11

    :cond_10
    add-int/lit8 v2, v0, 0x1

    aput-byte v8, v1, v0

    move v0, v2

    :cond_11
    iget-object v2, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v2, v2, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x1

    aget-byte v2, v2, v8

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    iget-object v8, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v8, v8, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v9, v3, 0x3

    add-int/lit8 v9, v9, 0x2

    aget-byte v8, v8, v9

    ushr-int/lit8 v8, v8, 0x6

    and-int/lit8 v8, v8, 0x3

    or-int/2addr v2, v8

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    if-ltz v2, :cond_12

    if-ge v2, v5, :cond_12

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_12
    int-to-byte v8, v2

    if-gtz v0, :cond_13

    if-eq v8, v10, :cond_14

    :cond_13
    add-int/lit8 v2, v0, 0x1

    aput-byte v8, v1, v0

    move v0, v2

    :cond_14
    iget-object v2, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-object v2, v2, Lcom/alipay/b/a/b;->a:[B

    mul-int/lit8 v8, v3, 0x3

    add-int/lit8 v8, v8, 0x2

    aget-byte v2, v2, v8

    and-int/lit8 v2, v2, 0x3f

    int-to-byte v2, v2

    if-ltz v2, :cond_15

    if-ge v2, v5, :cond_15

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :cond_15
    int-to-byte v8, v2

    if-gtz v0, :cond_16

    if-eq v8, v10, :cond_17

    :cond_16
    add-int/lit8 v2, v0, 0x1

    aput-byte v8, v1, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v0, v2

    :cond_17
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto/16 :goto_7

    :cond_18
    :try_start_4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget-wide v3, v3, Lcom/alipay/b/a/b;->g:J

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/b/a/c;->b:Lcom/alipay/b/a/b;

    iget v3, v3, Lcom/alipay/b/a/b;->f:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {p0, v0}, Lcom/alipay/b/a/c;->a(Z)V

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/b/a/d;->c()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :try_start_6
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getReceiveDataHandler()Lcom/alipay/b/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/b/a/a;->onReceiveDataTimeout()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    move v0, v7

    goto/16 :goto_3

    :catch_0
    move-exception v0

    :cond_19
    move v0, v7

    goto/16 :goto_3

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v1

    goto/16 :goto_4

    :catch_3
    move-exception v1

    goto/16 :goto_2

    :catch_4
    move-exception v0

    move v0, v7

    goto/16 :goto_2

    :cond_1a
    move v0, v2

    goto/16 :goto_8
.end method
