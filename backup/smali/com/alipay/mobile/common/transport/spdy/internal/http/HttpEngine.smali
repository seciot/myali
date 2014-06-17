.class public Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
.super Ljava/lang/Object;


# static fields
.field public static final HTTP_CONTINUE:I = 0x64

.field private static final a:Ljava/net/CacheResponse;


# instance fields
.field private b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

.field private c:Ljava/io/OutputStream;

.field protected final client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

.field connected:Z

.field protected connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

.field private d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/net/CacheResponse;

.field private h:Ljava/net/CacheRequest;

.field private i:Z

.field private j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

.field private k:Ljava/io/InputStream;

.field private l:Z

.field private m:Z

.field protected final method:Ljava/lang/String;

.field protected final policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

.field final requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

.field responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

.field protected routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

.field sentRequestMillis:J

.field final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    iput-object p5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    iput-object p6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->toUriLenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v2, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a(Ljava/io/InputStream;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->e:Ljava/io/InputStream;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->stripContentEncoding()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->stripContentLength()V

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Java"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static requestPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->l:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    :cond_0
    return-void
.end method

.method protected final connect()V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v2

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getAuthenticator()Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getTransports()Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/Address;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v5

    sget-object v6, Lcom/alipay/mobile/common/transport/spdy/internal/Dns;->DEFAULT:Lcom/alipay/mobile/common/transport/spdy/internal/Dns;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getRoutesDatabase()Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    move-result-object v7

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;-><init>(Lcom/alipay/mobile/common/transport/spdy/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;Lcom/alipay/mobile/common/transport/spdy/internal/Dns;Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_CONNECTION_TIMEOUT:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/locks/Lock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    const-string/jumbo v1, "SPDY_ERROR_CONN_WAIT"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    const-string/jumbo v1, "SPDY_ERROR_CONN_WAIT"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->next(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isConnected()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_7

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getNetType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->getSelectorID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->isNetTypeSpdyConnError(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    const-string/jumbo v1, "SPDY_ERROR_CONN_MSG"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    :try_start_3
    instance-of v1, v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getNetType()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->getSelectorID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->setNetTypeSpdyConnError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectTimeout()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getReadTimeout()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getTunnelConfig()Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/Connection;->connect(IILcom/alipay/mobile/common/transport/spdy/TunnelRequest;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->maybeShare(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getRoutesDatabase()Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->connected(Lcom/alipay/mobile/common/transport/spdy/Route;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->cancelNetTypeSpdyConnError(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_2
    :try_start_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connected(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->updateReadTimeout(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :cond_8
    move-object v3, v4

    goto/16 :goto_1
.end method

.method protected connected(Lcom/alipay/mobile/common/transport/spdy/Connection;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->setSelectedProxy(Ljava/net/Proxy;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connected:Z

    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Lcom/alipay/mobile/common/transport/spdy/Connection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    return-object v0
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    return-object v0
.end method

.method getRequestLine()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getHttpMinorVersion()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HTTP/1.1"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "HTTP/1.0"

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    return-object v0
.end method

.method protected getTunnelConfig()Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    return-object v0
.end method

.method hasRequestBody()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponse()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v4, "HEAD"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->usingProxy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readResponse()V
    .locals 5

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->setResponseSource(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "readResponse() without sendRequest()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;->contentLength()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setContentLength(J)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->writeRequestHeaders()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->writeRequestBody(Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->flushRequest()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->readResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->setResponseSource(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->validate(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->combine(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;)Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->trackConditionalCacheHit()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->isCacheable(Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->maybeRemove(Ljava/lang/String;Ljava/net/URI;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->h:Ljava/net/CacheRequest;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a(Ljava/io/InputStream;)V

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->h:Ljava/net/CacheRequest;

    goto :goto_1
.end method

.method public receiveHeaders(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final release(Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->f:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->m:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->m:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->e:Ljava/io/InputStream;

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    iput-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    goto :goto_0
.end method

.method public final sendRequest()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getHttpMinorVersion()I

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iput-boolean v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getIfModifiedSince()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    :cond_a
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    if-nez v2, :cond_11

    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_c
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;->trackResponse(Lcom/alipay/mobile/common/transport/spdy/ResponseSource;)V

    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_e
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a:Ljava/net/CacheResponse;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    :cond_f
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connect()V

    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_11
    invoke-static {v1, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->chooseResponseSource(JLcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;)Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne v1, v2, :cond_12

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->j:Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->a(Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto/16 :goto_1

    :cond_12
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne v1, v2, :cond_13

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->g:Ljava/net/CacheResponse;

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->b:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transport/spdy/ResponseSource;

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->k:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_1

    :cond_14
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_15
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->newTransport(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->d:Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/Transport;->createRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->c:Ljava/io/OutputStream;

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transport/spdy/Connection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    goto/16 :goto_0
.end method

.method public writingRequestHeaders()V
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    return-void
.end method
