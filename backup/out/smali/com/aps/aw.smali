.class public final Lcom/aps/aw;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lcom/aps/z;

.field private c:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/aps/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    iput-object p1, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    return-void
.end method

.method private static a(III)I
    .locals 1

    add-int/lit8 v0, p2, -0x1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/2addr v0, p0

    :goto_0
    if-lt v0, p1, :cond_0

    add-int/lit16 v0, v0, -0x5dc

    goto :goto_0

    :cond_0
    return v0
.end method

.method private a(Ljava/util/BitSet;)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit16 v0, v0, 0x5dc

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v1}, Lcom/aps/z;->a()I

    move-result v1

    add-int/2addr v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(II)Ljava/util/ArrayList;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    iget-object v2, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    if-gtz v0, :cond_0

    const v0, 0x7fffffff

    :cond_0
    new-array v0, v0, [B

    iget-object v2, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit16 p1, p1, 0x5dc

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a()Ljava/util/BitSet;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v1}, Lcom/aps/z;->a()I

    move-result v1

    new-array v1, v1, [B

    :try_start_0
    iget-object v2, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v1}, Lcom/aps/z;->b([B)Ljava/util/BitSet;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected final declared-synchronized a(I)Lcom/aps/y;
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v1, Lcom/aps/s;->a:Z

    if-nez v1, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v1}, Lcom/aps/z;->b()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/aw;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/aps/aw;->c:Ljava/io/File;

    if-nez v1, :cond_1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_4
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/aps/aw;->c:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-direct {p0}, Lcom/aps/aw;->a()Ljava/util/BitSet;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    :try_start_6
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :cond_2
    :goto_1
    :try_start_7
    monitor-exit p0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_8
    invoke-direct {p0, v1}, Lcom/aps/aw;->a(Ljava/util/BitSet;)I

    move-result v1

    iget-object v2, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v1, v2, p1}, Lcom/aps/aw;->a(III)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/aps/aw;->a(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v6}, Lcom/aps/z;->a()I

    move-result v6

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, -0x4

    div-int/lit16 v1, v1, 0x5dc

    aput v1, v4, v5

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v5}, Lcom/aps/z;->a()I

    move-result v5

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x4

    div-int/lit16 v2, v2, 0x5dc

    aput v2, v4, v1

    new-instance v1, Lcom/aps/y;

    iget-object v2, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-direct {v1, v2, v3, v4}, Lcom/aps/y;-><init>(Ljava/io/File;Ljava/util/ArrayList;[I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_4

    :try_start_9
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_5

    :try_start_a
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    move-object v0, v1

    :cond_4
    :goto_2
    :try_start_b
    monitor-exit p0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_5
    move-object v0, v1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v1, :cond_4

    :try_start_e
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_2

    :catch_3
    move-exception v1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    :catch_4
    move-exception v1

    :try_start_10
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    if-eqz v1, :cond_6

    :try_start_12
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    :cond_6
    :goto_3
    :try_start_13
    iget-object v1, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/aps/aw;->c:Ljava/io/File;

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    if-eqz v1, :cond_7

    :try_start_14
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6

    :cond_7
    :goto_4
    :try_start_15
    throw v0

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_4
.end method

.method protected final declared-synchronized a(Lcom/aps/y;)V
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p1, Lcom/aps/y;->a:Ljava/io/File;

    iput-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    iget-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    if-nez v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/aps/aw;->c:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v0, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/aps/aw;->b:Lcom/aps/z;

    invoke-virtual {v0}, Lcom/aps/z;->a()I

    move-result v0

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-static {v0}, Lcom/aps/z;->b([B)Ljava/util/BitSet;

    move-result-object v1

    invoke-virtual {p1}, Lcom/aps/y;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/aps/y;->b:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    :goto_1
    iget-object v2, p1, Lcom/aps/y;->b:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v0, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-static {v1}, Lcom/aps/z;->a(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit p0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v0, :cond_3

    :try_start_a
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v0

    :try_start_c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v0, :cond_3

    :try_start_e
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_2

    :catch_4
    move-exception v0

    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_5

    :try_start_10
    iget-object v1, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_5
    :goto_3
    :try_start_11
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_3
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/aw;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aps/aw;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
