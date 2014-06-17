.class public final Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

.field private final b:[Z

.field private c:Z

.field private d:Z

.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->b:[Z

    return-void

    :cond_0
    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->g:I
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)[Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->b:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V

    return-void
.end method

.method public final abortUnlessCommitted()V
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->d:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final commit()V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    const/4 v1, 0x0

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->a:Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$1100(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    :goto_0
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->d:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Z)V

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newInputStream(I)Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v1

    if-eq v1, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-object v0

    :cond_1
    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    invoke-virtual {v3, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    monitor-exit v2

    goto :goto_0
.end method

.method public final newOutputStream(I)Ljava/io/OutputStream;
    .locals 4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->d:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;

    move-result-object v0

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->c:Z
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->access$600(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->b:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :try_start_2
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v0

    :goto_0
    :try_start_3
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$1;)V

    monitor-exit v2

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->a:Ljava/io/File;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$1900(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public final set(ILjava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method
