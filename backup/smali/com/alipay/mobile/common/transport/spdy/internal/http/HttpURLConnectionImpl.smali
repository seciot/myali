.class public Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;
.super Ljava/net/HttpURLConnection;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;


# static fields
.field static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

.field private b:J

.field private c:I

.field final client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

.field private d:Ljava/net/Proxy;

.field protected httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

.field protected httpEngineFailure:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b:J

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;-><init>(Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->doOutput:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "PUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "PATCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " does not support writing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getTransports()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string/jumbo v0, ","

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setTransports(Ljava/util/List;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-void
.end method

.method private static a(Ljava/net/Proxy;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->sendRequest()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->readResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    move-object v4, v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v6, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v6, v0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->connectFailed(Lcom/alipay/mobile/common/transport/spdy/Connection;Ljava/io/IOException;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    if-eqz v1, :cond_6

    :cond_2
    move v5, v2

    :goto_1
    if-nez v6, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    instance-of v1, v4, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_7

    invoke-virtual {v4}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_7

    move v1, v2

    :goto_2
    instance-of v7, v4, Ljava/net/ProtocolException;

    instance-of v8, v4, Lcom/alipay/mobile/common/transport/spdy/mwallet/NoRetrySpdyConnException;

    if-nez v1, :cond_8

    if-nez v7, :cond_8

    if-nez v8, :cond_8

    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    if-nez v5, :cond_9

    :cond_5
    iput-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngineFailure:Ljava/io/IOException;

    move v2, v3

    :goto_4
    if-eqz v2, :cond_a

    move v2, v3

    goto :goto_0

    :cond_6
    move v5, v3

    goto :goto_1

    :cond_7
    move v1, v3

    goto :goto_2

    :cond_8
    move v1, v3

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const/4 v7, 0x0

    invoke-direct {p0, v1, v5, v7, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iput-object v6, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;

    goto :goto_4

    :cond_a
    throw v4
.end method

.method private b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    :goto_0
    return-object v0

    :cond_0
    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getConnection()Lcom/alipay/mobile/common/transport/spdy/Connection;

    move-result-object v4

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/Connection;Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;->removeContentLength()V

    :cond_2
    invoke-direct {p0, v6}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    :goto_2
    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    goto :goto_1

    :sswitch_0
    invoke-virtual {v4}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :sswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getAuthenticator()Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;ILcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->NONE:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getInstanceFollowRedirects()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->c:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_7

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Too many redirects: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v1, 0x133

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    const-string/jumbo v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_8
    const-string/jumbo v0, "Location"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_9
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getFollowProtocolRedirects()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_a
    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    if-ne v0, v1, :cond_b

    move v0, v6

    :goto_3
    if-eqz v3, :cond_c

    if-eqz v0, :cond_c

    if-eqz v2, :cond_c

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->SAME_CONNECTION:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto :goto_3

    :cond_c
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;->DIFFERENT_CONNECTION:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl$Retry;

    goto/16 :goto_2

    :cond_d
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v3

    const/16 v4, 0x12c

    if-eq v3, v4, :cond_e

    const/16 v4, 0x12d

    if-eq v3, v4, :cond_e

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_e

    const/16 v4, 0x12f

    if-ne v3, v4, :cond_f

    :cond_e
    const-string/jumbo v2, "GET"

    const/4 v1, 0x0

    :cond_f
    if-eqz v1, :cond_0

    instance-of v3, v1, Lcom/alipay/mobile/common/transport/spdy/internal/http/RetryableOutputStream;

    if-nez v3, :cond_0

    new-instance v0, Ljava/net/HttpRetryException;

    const-string/jumbo v1, "Cannot retry streamed HTTP body"

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_2
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_2
        0x133 -> :sswitch_2
        0x191 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot add request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring header "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final connect()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public final disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->release(Z)V

    :cond_1
    return-void
.end method

.method public final getChunkLength()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->chunkLength:I

    return v0
.end method

.method public getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v2

    const/16 v3, 0x190

    if-lt v2, v3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getFixedContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b:J

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getStatusLine()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 0

    return-object p0
.end method

.method public getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->doInput:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "This protocol does not support input"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_1

    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseBody()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "No response body exists; responseCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->connect()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "method does not support a request body: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "cannot write request body after response has been read"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->usingProxy()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    :cond_0
    new-instance v2, Ljava/net/SocketPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "connect, resolve"

    invoke-direct {v2, v0, v1}, Ljava/net/SocketPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access request header fields after connection is set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getResponseCode()I
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public setFixedLengthStreamingMode(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->setFixedLengthStreamingMode(J)V

    return-void
.end method

.method public setFixedLengthStreamingMode(J)V
    .locals 2

    iget-boolean v0, p0, Ljava/net/HttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->chunkLength:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already in chunked mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "contentLength < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->b:J

    const-wide/32 v0, 0x7fffffff

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Ljava/net/HttpURLConnection;->fixedContentLength:I

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->connected:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot set request property after connection is made"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "field == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Ignoring header "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " because its value was null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "X-Android-Transports"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setSelectedProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->d:Ljava/net/Proxy;

    return-void
.end method

.method public final usingProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->d:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->d:Ljava/net/Proxy;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/net/Proxy;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpURLConnectionImpl;->a(Ljava/net/Proxy;)Z

    move-result v0

    goto :goto_0
.end method
