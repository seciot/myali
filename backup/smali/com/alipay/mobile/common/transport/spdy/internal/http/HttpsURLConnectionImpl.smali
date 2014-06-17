.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;
.super Ljavax/net/ssl/HttpsURLConnection;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;


# direct methods
.method public constructor <init>(Ljava/net/URL;Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;)V
    .locals 2

    invoke-direct {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;-><init>(Ljava/net/URL;)V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    return-void
.end method

.method private a()Ljavax/net/ssl/SSLSocket;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;->connected:Z

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Connection has not yet been established"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    instance-of v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsEngine;->getSslSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final connect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->connected:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->connect()V

    return-void
.end method

.method public final disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->disconnect()V

    return-void
.end method

.method public final getAllowUserInteraction()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getAllowUserInteraction()Z

    move-result v0

    return v0
.end method

.method public final getCipherSuite()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getConnectTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getConnectTimeout()I

    move-result v0

    return v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getContentEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContentLength()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentLength()I

    move-result v0

    return v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getDate()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDefaultUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDefaultUseCaches()Z

    move-result v0

    return v0
.end method

.method public final getDoInput()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoInput()Z

    move-result v0

    return v0
.end method

.method public final getDoOutput()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getDoOutput()Z

    move-result v0

    return v0
.end method

.method public final getErrorStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getExpiration()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getExpiration()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getHeaderFieldInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderFields()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method

.method public final getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getHttpEngine()Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;

    move-result-object v0

    return-object v0
.end method

.method public final getIfModifiedSince()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getIfModifiedSince()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getInstanceFollowRedirects()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getInstanceFollowRedirects()Z

    move-result v0

    return v0
.end method

.method public final getLastModified()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getLastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final getPeerPrincipal()Ljava/security/Principal;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a()Ljavax/net/ssl/SSLSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getPermission()Ljava/security/Permission;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getPermission()Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getReadTimeout()I

    move-result v0

    return v0
.end method

.method public final getRequestMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperties()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getServerCertificates()[Ljava/security/cert/Certificate;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getSecureCacheResponse()Ljava/net/SecureCacheResponse;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/security/cert/Certificate;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/Certificate;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a()Ljavax/net/ssl/SSLSocket;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method public final getURL()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public final getUseCaches()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->getUseCaches()Z

    move-result v0

    return v0
.end method

.method public final setAllowUserInteraction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setAllowUserInteraction(Z)V

    return-void
.end method

.method public final setChunkedStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setChunkedStreamingMode(I)V

    return-void
.end method

.method public final setConnectTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setConnectTimeout(I)V

    return-void
.end method

.method public final setDefaultUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDefaultUseCaches(Z)V

    return-void
.end method

.method public final setDoInput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoInput(Z)V

    return-void
.end method

.method public final setDoOutput(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setDoOutput(Z)V

    return-void
.end method

.method public final setFixedLengthStreamingMode(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setFixedLengthStreamingMode(I)V

    return-void
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-void
.end method

.method public final setIfModifiedSince(J)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setIfModifiedSince(J)V

    return-void
.end method

.method public final setInstanceFollowRedirects(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setInstanceFollowRedirects(Z)V

    return-void
.end method

.method public final setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setReadTimeout(I)V

    return-void
.end method

.method public final setRequestMethod(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestMethod(Ljava/lang/String;)V

    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->client:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-void
.end method

.method public final setUseCaches(Z)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->setUseCaches(Z)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final usingProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl;->a:Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->usingProxy()Z

    move-result v0

    return v0
.end method
