.class public final Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;
.super Ljava/net/ResponseCache;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field final okResponseCache:Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->okResponseCache:Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    return-void
.end method

.method private static a(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 1

    instance-of v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->f:I

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$3;->$SwitchMap$com$alipay$mobile$common$transport$spdy$ResponseSource:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    .locals 1

    if-eqz p0, :cond_0

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

.method private a(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 2

    const-string/jumbo v0, "POST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DELETE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Ljava/lang/String;Ljava/net/URI;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 3

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

    invoke-direct {v2, v1, v0, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    instance-of v0, p1, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->b:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;->access$500(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->edit()Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->writeTo(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    check-cast p1, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;->b:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;->access$600(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$2;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$2;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V

    return-void
.end method

.method static synthetic access$808(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->b:I

    return v0
.end method

.method static synthetic access$908(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->c:I

    return v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->close()V

    return-void
.end method

.method public final delete()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->delete()V

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->flush()V

    return-void
.end method

.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    :cond_1
    #calls: Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->a()Z
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->access$400(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntrySecureCacheResponse;-><init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$EntryCacheResponse;-><init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Snapshot;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getHitCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getMaxSize()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getNetworkCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSize()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getWriteAbortCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getWriteSuccessCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 4

    const/4 v0, 0x0

    instance-of v1, p2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    check-cast p2, Ljava/net/HttpURLConnection;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "GET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->hasVaryAll()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v1

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;

    invoke-direct {v3, p1, v1, p2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a:Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry;->writeTo(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->a(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
