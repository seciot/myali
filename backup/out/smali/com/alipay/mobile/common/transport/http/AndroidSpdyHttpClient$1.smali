.class Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;
.super Lorg/apache/http/params/AbstractHttpParams;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    invoke-direct {p0}, Lorg/apache/http/params/AbstractHttpParams;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lorg/apache/http/params/HttpParams;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    #getter for: Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->access$000(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParameter(Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;
    .locals 5

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lorg/apache/http/HttpHost;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient$1;->this$0:Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;

    #getter for: Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->b:Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;->access$000(Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
