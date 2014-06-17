.class public final Lcom/alipay/mobile/common/transport/spdy/Connection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final a:[B

.field private static final b:[B

.field private static final c:[B


# instance fields
.field private final d:Lcom/alipay/mobile/common/transport/spdy/Route;

.field private e:Ljava/net/Socket;

.field private f:Ljava/io/InputStream;

.field private g:Ljava/io/OutputStream;

.field private h:Z

.field private i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

.field private j:I

.field private k:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/Connection;->a:[B

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/Connection;->b:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/Connection;->c:[B

    return-void

    nop

    :array_0
    .array-data 0x1
        0x6t
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
        0x8t
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data

    :array_1
    .array-data 0x1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    nop

    :array_2
    .array-data 0x1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Route;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->j:I

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    return-void
.end method

.method private a()V
    .locals 4

    const/16 v0, 0x2000

    const/16 v1, 0x400

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v2

    if-ge v2, v1, :cond_1

    :goto_0
    if-le v1, v0, :cond_0

    :goto_1
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;)V
    .locals 7

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->getRequestHeaders()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v3

    move-object v0, v3

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->toBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;)V

    new-instance v5, Ljava/net/URL;

    const-string/jumbo v0, "https"

    iget-object v1, p1, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->host:Ljava/lang/String;

    iget v4, p1, Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;->port:I

    const-string/jumbo v6, "/"

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;

    const/16 v1, 0x197

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v4, v4, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/alipay/mobile/common/transport/spdy/OkAuthenticator;ILcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1
    return-void

    :cond_0
    move-object v0, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    return-void
.end method

.method public final connect(IILcom/alipay/mobile/common/transport/spdy/TunnelRequest;)V
    .locals 6

    const/4 v5, 0x1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->h:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v5, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->h:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0, v5}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transport/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3}, Lcom/alipay/mobile/common/transport/spdy/Connection;->a(Lcom/alipay/mobile/common/transport/spdy/TunnelRequest;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v4, v4, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget v4, v4, Lcom/alipay/mobile/common/transport/spdy/Address;->uriPort:I

    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-boolean v2, v2, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Hostname \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' was not verified"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Platform;->supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->a()V

    sget-boolean v1, Lcom/alipay/mobile/common/transport/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->build()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->sendConnectionHeader()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->a()V

    goto :goto_2
.end method

.method public final getHttpMinorVersion()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->j:I

    return v0
.end method

.method public final getIdleStartTimeNs()J
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->k:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    return-object v0
.end method

.method public final getSpdyConnection()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public final isAlive()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->h:Z

    return v0
.end method

.method public final isExpired(J)Z
    .locals 4

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getIdleStartTimeNs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdle()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->isIdle()Z

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

.method public final isReadable()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    check-cast v0, Ljava/io/BufferedInputStream;

    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public final isSpdy()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newTransport(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/http/SpdyTransport;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->g:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->f:Ljava/io/InputStream;

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpTransport;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final requiresTunnel()Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->d:Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resetIdleStartTime()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->i:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->k:J

    return-void
.end method

.method public final setHttpMinorVersion(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->j:I

    return-void
.end method

.method public final updateReadTimeout(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->h:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "updateReadTimeout - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Connection;->e:Ljava/net/Socket;

    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method
