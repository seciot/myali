.class public final Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# static fields
.field private static final a:Ljava/util/List;


# instance fields
.field private final b:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

.field private final c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

.field private d:Ljava/net/Proxy;

.field private e:Ljava/util/List;

.field private f:Ljava/net/ProxySelector;

.field private g:Ljava/net/CookieHandler;

.field private h:Ljava/net/ResponseCache;

.field private i:Ljavax/net/ssl/SSLSocketFactory;

.field private j:Ljavax/net/ssl/HostnameVerifier;

.field private k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

.field private l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

.field private m:Z

.field private n:I

.field private o:I

.field private p:Landroid/content/Context;

.field private q:Ljava/util/concurrent/locks/Lock;

.field private r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "spdy/3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http/1.1"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->q:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->q:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->q:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private a()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 6

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->f:Ljava/net/ProxySelector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->f:Ljava/net/ProxySelector;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->f:Ljava/net/ProxySelector;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->g:Ljava/net/CookieHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->g:Ljava/net/CookieHandler;

    :goto_1
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->g:Ljava/net/CookieHandler;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    :goto_2
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isTrustAll:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    :goto_3
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->j:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->j:Ljavax/net/ssl/HostnameVerifier;

    :goto_5
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->j:Ljavax/net/ssl/HostnameVerifier;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    :goto_6
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    :goto_7
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    iput-boolean v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->e:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->e:Ljava/util/List;

    :goto_8
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->e:Ljava/util/List;

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->n:I

    iput v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->n:I

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->o:I

    iput v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->o:I

    return-object v1

    :cond_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    goto :goto_2

    :cond_3
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    :goto_9
    iget-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_4

    :cond_5
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    :try_start_0
    const-string/jumbo v0, "TLSv1"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$1;

    invoke-direct {v5, p0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_9

    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/alipay/mobile/common/transport/spdy/internal/tls/OkHostnameVerifier;

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpAuthenticator;->SYSTEM_DEFAULT:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    goto :goto_6

    :cond_8
    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->getDefault()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    move-result-object v0

    goto :goto_7

    :cond_9
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->a:Ljava/util/List;

    goto :goto_8
.end method


# virtual methods
.method final cancel(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;->cancel(Ljava/lang/Object;)V

    return-void
.end method

.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    const-string/jumbo v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient$2;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final enqueue(Lcom/alipay/mobile/common/transport/spdy/Request;Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->c:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Request;->url()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;->enqueue(Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transport/spdy/Request;Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;)V

    return-void
.end method

.method public final getAuthenticator()Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    return-object v0
.end method

.method public final getClientLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->q:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->n:I

    return v0
.end method

.method public final getConnectionPool()Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->p:Landroid/content/Context;

    return-object v0
.end method

.method public final getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->g:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public final getFollowProtocolRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    return v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getNetType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->r:Ljava/lang/String;

    return-object v0
.end method

.method public final getOkResponseCache()Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;->okResponseCache:Lcom/alipay/mobile/common/transport/spdy/OkResponseCache;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/OkResponseCacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->f:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->o:I

    return v0
.end method

.method public final getResponseCache()Ljava/net/ResponseCache;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public final getRoutesDatabase()Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getTransports()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->e:Ljava/util/List;

    return-object v0
.end method

.method public final open(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method final open(Ljava/net/URL;Ljava/net/Proxy;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 4

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->a()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-result-object v1

    iput-object p2, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    iput-object p3, v1, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->r:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected protocol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setAuthenticator(Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->k:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    return-object p0
.end method

.method public final setClientLock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->q:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public final setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->n:I

    return-void
.end method

.method public final setConnectionPool(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->l:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->p:Landroid/content/Context;

    return-void
.end method

.method public final setCookieHandler(Ljava/net/CookieHandler;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->g:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public final setFollowProtocolRedirects(Z)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->m:Z

    return-object p0
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->j:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setNetType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->r:Ljava/lang/String;

    return-void
.end method

.method public final setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->d:Ljava/net/Proxy;

    return-object p0
.end method

.method public final setProxySelector(Ljava/net/ProxySelector;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->f:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public final setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->o:I

    return-void
.end method

.method public final setResponseCache(Ljava/net/ResponseCache;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->h:Ljava/net/ResponseCache;

    return-object p0
.end method

.method public final setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->i:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final setTransports(Ljava/util/List;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 4

    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "http/1.1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transports doesn\'t contain http/1.1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports contains an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->e:Ljava/util/List;

    return-object p0
.end method
