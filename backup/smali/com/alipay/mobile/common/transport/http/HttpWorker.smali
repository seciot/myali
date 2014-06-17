.class public Lcom/alipay/mobile/common/transport/http/HttpWorker;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

.field private d:I

.field private e:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/String;

.field protected mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

.field mRedirects:I

.field mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:I

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getInstance()Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/http/HttpManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    .locals 6

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->getSerializable(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Serializable;
    :try_end_0
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :try_start_1
    instance-of v1, v2, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    if-eqz v1, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/security/Des;->decrypt([BLjava/lang/String;)[B

    move-result-object v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    move-object v2, v3

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/cache/disk/CacheException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/cache/disk/CacheException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_1
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->getInstance()Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;

    move-result-object v0

    const-string/jumbo v1, "MonitorPoint_ConnectErr"

    invoke-virtual {v0, p0, v1}, Lcom/alipay/mobile/common/logagent/SystemExceptionHandler;->saveConnInfoToFile(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "operationType"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setApi(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->isUseSpdy(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->remove(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeEtagFromCache\uff0c\u5b8c\u6210,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public call()Lcom/alipay/mobile/common/transport/Response;
    .locals 14

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "HttpWorker start request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getCallback()Lcom/alipay/mobile/common/transport/TransportCallback;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v4, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Android"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v5, v6}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v5, "The network is not available"

    invoke-direct {v0, v2, v5}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "HttpException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->upGrapher2Server(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpWorker finish request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setNetInfo(II)V

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-interface {v3, v0}, Lcom/alipay/mobile/common/transport/TransportCallback;->onPreExecute(Lcom/alipay/mobile/common/transport/Request;)V

    :cond_3
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxy(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v5

    const-string/jumbo v6, "http.route.default-proxy"

    invoke-interface {v0, v6, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v6, Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_4

    invoke-virtual {v6}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_0
    new-instance v7, Lorg/apache/http/HttpHost;

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v0, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPostData()Lorg/apache/http/entity/StringEntity;

    move-result-object v6

    if-eqz v6, :cond_5

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v8

    invoke-direct {v0, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v6, v0, Lcom/alipay/mobile/common/cache/disk/CacheException;

    if-nez v6, :cond_6

    check-cast v0, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    new-instance v6, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v8, "If-None-Match"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getEtag()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v8, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Z

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "URISyntaxException"

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Url parser error!"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getUri()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v1, v0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->f:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "SSLHandshakeException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_8
    :try_start_6
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "cookie"

    invoke-interface {v1, v8, v6}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v6}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string/jumbo v8, "http.cookie-store"

    invoke-interface {v0, v8, v6}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "HttpWorker start execute request: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v10}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    sget-object v8, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v2, v8}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setStartTime(J)V

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->getsHttpClient()Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    move-result-object v2

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setSpdyCall()V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->getClient()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-result-object v10

    sget v11, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_CONNECTION_TIMEOUT:I

    int-to-long v11, v11

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->getClient()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-result-object v10

    sget v11, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_READ_TIMEOUT:I

    int-to-long v11, v11

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v10, v11, v12, v13}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v10

    const-string/jumbo v11, "http.route.default-proxy"

    invoke-interface {v10, v11, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    const-string/jumbo v5, "NET_CALL_GRAPHER"

    invoke-interface {v0, v5, v4}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v7, v1, v0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    sub-long v7, v10, v8

    invoke-virtual {v0, v7, v8}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addConnectTime(J)V

    invoke-virtual {v4, v10, v11}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setEndTime(J)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "HttpWorker finish execute request: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; domain="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_7
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "SSLPeerUnverifiedException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_b
    :try_start_8
    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setHttpsCall()V

    invoke-virtual {v2, v7, v1, v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    move-object v2, v0

    goto/16 :goto_4

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {p0, v2, v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/alipay/mobile/common/transport/http/HttpException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->upGrapher2Server(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpWorker finish request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    :goto_6
    return-object v0

    :catch_4
    move-exception v0

    :try_start_9
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "SSLException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_d

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "ConnectionPoolTimeoutException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_e

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    const-string/jumbo v1, "ConnectTimeoutException"

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    if-eqz v3, :cond_f

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_7
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "SocketTimeoutException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_10

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_8
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "NoHttpResponseException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_11

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_9
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "HttpHostConnectException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_12

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_12
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_a
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "UnknownHostException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_13

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "IOException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_14

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_c
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "NullPointerException"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:I

    if-gtz v1, :cond_15

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->d:I

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b:Landroid/content/Context;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->upGrapher2Server(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "HttpWorker finish request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    :try_start_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :catch_d
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/Exception;)V

    const-string/jumbo v2, "Exception"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setErrorCode(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v3, :cond_16

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    const/4 v2, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v1, v2, v5}, Lcom/alipay/mobile/common/transport/TransportCallback;->onFailed(Lcom/alipay/mobile/common/transport/Request;ILjava/lang/String;)V

    :cond_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpException;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->call()Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v2

    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    const-string/jumbo v0, "charset"

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    invoke-virtual {p1, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method protected getContentType(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v6, v4, v1

    const/16 v0, 0x3d

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v7, "Content-Type"

    aput-object v7, v0, v2

    aput-object v6, v0, v8

    :goto_1
    aget-object v6, v0, v2

    aget-object v0, v0, v8

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "="

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method protected getHeaders()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected getPeriod(Lorg/apache/http/HttpResponse;)J
    .locals 5

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->parserMaxage([Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    :cond_1
    const-string/jumbo v2, "Expires"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method protected getPostData()Lorg/apache/http/entity/StringEntity;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequest()Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    return-object v0
.end method

.method protected getUri()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mUrl:Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;
    .locals 19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5f00\u59cbhandle\uff0chandleResponse-1,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v5, 0xc8

    if-ne v2, v5, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "200\uff0c\u5f00\u59cb\u5904\u7406\uff0chandleResponse-2,threadid = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v4, 0x0

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string/jumbo v2, "ETag"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/http/HttpWorker$DesKey;->get()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/security/Des;->encrypt([BLjava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    aget-object v2, v2, v5

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    new-instance v11, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    invoke-direct {v11}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;-><init>()V

    invoke-virtual {v11, v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setEtag(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setValue([B)V

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->setTypeHeader(Lorg/apache/http/Header;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->e:Lcom/alipay/mobile/common/transport/http/HttpContextExtend;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/HttpContextExtend;->getDiskCache()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;

    move-result-object v7

    const/4 v8, 0x0

    const-string/jumbo v9, "ETag"

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/32 v14, 0x240c8400

    const-string/jumbo v16, "Serializable"

    invoke-virtual/range {v7 .. v16}, Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;->putSerializable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v17

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    array-length v4, v3

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    new-instance v2, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v4

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v2, v4, v0, v1, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->g:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->b(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_1
    throw v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ArrayOutputStream close error!"

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "ArrayOutputStream close error!"

    invoke-virtual {v2}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    if-nez v3, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x130

    if-ne v2, v3, :cond_4

    const/16 v2, 0x130

    move/from16 v0, p2

    if-ne v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->h:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;

    if-eqz v2, :cond_4

    new-instance v4, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    invoke-static/range {p1 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    move-result-object v3

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getValue()[B

    move-result-object v5

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v4, v3, v0, v1, v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-virtual/range {p0 .. p1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getPeriod(Lorg/apache/http/HttpResponse;)J

    move-result-wide v5

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/http/CachedResponseWrapper;->getTypeHeader()Lorg/apache/http/Header;

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getContentType(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    const-string/jumbo v2, "charset"

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v7, "Content-Type"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :cond_3
    invoke-virtual {v4, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v4, v2, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setCreateTime(J)V

    invoke-virtual {v4, v5, v6}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;->setPeriod(J)V

    move-object v2, v4

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    move-object v6, v4

    goto/16 :goto_2

    :cond_4
    move-object v2, v4

    goto/16 :goto_1
.end method

.method protected parserMaxage([Ljava/lang/String;)J
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    const-string/jumbo v2, "max-age"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p1, v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :goto_1
    return-wide v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;
    .locals 3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->willHandleOtherCode(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    return-object v0
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    .locals 9

    if-nez p4, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const/16 v0, 0x800

    :try_start_0
    new-array v0, v0, [B

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->isCanceled()Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {p4, v0, v5, v4}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr p2, v4

    if-eqz p5, :cond_1

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/http/HttpWorker;->c:Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    long-to-double v5, p2

    long-to-double v7, v2

    div-double/2addr v5, v7

    invoke-interface {p5, v4, v5, v6}, Lcom/alipay/mobile/common/transport/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/common/transport/Request;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "HttpWorker Request Error!"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_2
    invoke-virtual {p4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/IOUtil;->closeStream(Ljava/io/Closeable;)V

    return-void
.end method
