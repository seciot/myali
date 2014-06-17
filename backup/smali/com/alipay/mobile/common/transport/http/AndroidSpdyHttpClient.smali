.class public Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

.field private b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

.field private final c:Lorg/apache/http/params/HttpParams;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->c:Lorg/apache/http/params/HttpParams;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p1, v0, p2}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    invoke-interface {p3, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    invoke-direct {v0, p2, p0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;-><init>(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 11

    const/4 v4, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v1, "NET_CALL_GRAPHER"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    new-instance v3, Ljava/net/URL;

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getCallUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getNetKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->openConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v5

    invoke-interface {v2}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    array-length v6, v3

    move v2, v4

    :goto_0
    if-ge v2, v6, :cond_0

    aget-object v7, v3, v2

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, p2, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_4

    move-object v0, p2

    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    move-object v2, v0

    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_7

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    :cond_4
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v7, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-direct {v2, v7, v6, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    const/16 v3, 0x190

    if-ge v6, v3, :cond_a

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    :goto_2
    const/16 v7, 0x130

    if-ne v6, v7, :cond_5

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v6

    if-eqz v6, :cond_d

    :cond_5
    new-instance v6, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    invoke-direct {v6, v3, v7, v8}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    move v3, v4

    :goto_3
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_c

    new-instance v8, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v7, v9}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    const-string/jumbo v9, "Content-Type"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-virtual {v6, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    const-wide/16 v8, 0x2000

    cmp-long v3, v6, v8

    if-gtz v3, :cond_9

    const-string/jumbo v3, "Content-Length"

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_5
    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->setDownHttpsCall(Ljava/lang/Exception;)V

    instance-of v1, v1, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    if-nez v1, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v2, v4}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->spdyExcuteTimesSave(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;Z)V

    :cond_8
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    :goto_6
    return-object v1

    :cond_9
    :try_start_2
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    long-to-int v3, v6

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v3

    goto :goto_2

    :cond_b
    const-string/jumbo v9, "Content-Encoding"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6, v8}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v2, v6}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    :cond_d
    invoke-virtual {p0, v2, p3, v1}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->getInstance()Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;

    move-result-object v3

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v1, v6}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->spdyExcuteTimesSave(Landroid/content/Context;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5
.end method

.method public getClient()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-object v0
.end method

.method public getDelegate()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->c:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public openConnection(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)V
    .locals 7

    new-instance v1, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v1}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    const-string/jumbo v0, "http.cookie-store"

    invoke-interface {p2, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p3}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->getCookieOrigin()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1bb

    const-string/jumbo v5, "/"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    const-string/jumbo v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    invoke-interface {v1}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v3

    if-lez v3, :cond_0

    const-string/jumbo v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    goto :goto_0
.end method

.method public setDelegate(Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->a:Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;

    return-void
.end method
