.class public final Lcom/aps/ax;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/RandomAccessFile;

.field private b:Lcom/aps/z;

.field private c:Ljava/lang/String;

.field private d:Ljava/io/File;


# direct methods
.method protected constructor <init>(Lcom/aps/z;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/aps/ax;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;

    iput-object p1, p0, Lcom/aps/ax;->b:Lcom/aps/z;

    return-void
.end method


# virtual methods
.method protected final declared-synchronized a(J[B)V
    .locals 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/aps/ax;->b:Lcom/aps/z;

    invoke-virtual {v1, p1, p2}, Lcom/aps/z;->a(J)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/aps/ax;->d:Ljava/io/File;

    iget-object v1, p0, Lcom/aps/ax;->d:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/aps/ax;->d:Ljava/io/File;

    const-string/jumbo v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/aps/ax;->b:Lcom/aps/z;

    invoke-virtual {v1}, Lcom/aps/z;->a()I

    move-result v1

    new-array v2, v1, [B

    iget-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    iget-object v3, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move v1, v0

    :goto_1
    invoke-static {v2}, Lcom/aps/z;->b([B)Ljava/util/BitSet;

    move-result-object v2

    iget-object v3, p0, Lcom/aps/ax;->b:Lcom/aps/z;

    invoke-virtual {v3}, Lcom/aps/z;->a()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    mul-int/lit16 v4, v1, 0x5dc

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-static {p3}, Lcom/aps/z;->a([B)[B

    move-result-object v3

    iget-object v4, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v4, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, p1, p2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    iget-object v4, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v4, v3}, Ljava/io/RandomAccessFile;->write([B)V

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/BitSet;->set(IZ)V

    iget-object v3, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v3, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-static {v2}, Lcom/aps/z;->a(Ljava/util/BitSet;)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/aps/ax;->b:Lcom/aps/z;

    invoke-virtual {v2}, Lcom/aps/z;->a()I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    if-ne v1, v2, :cond_5

    :goto_2
    iget-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->writeInt(I)V

    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    iget-object v0, p0, Lcom/aps/ax;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/aps/ax;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/aps/ax;->c:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    :try_start_3
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    :goto_3
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_5
    iget-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v0, :cond_2

    :try_start_9
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    :catch_3
    move-exception v0

    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_2

    :try_start_d
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_3

    :catch_4
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v1, :cond_4

    :try_start_f
    iget-object v1, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_4
    :goto_4
    :try_start_10
    throw v0

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_4

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aps/ax;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/aps/ax;->a:Ljava/io/RandomAccessFile;

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
