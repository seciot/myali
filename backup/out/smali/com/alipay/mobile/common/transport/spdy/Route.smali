.class public Lcom/alipay/mobile/common/transport/spdy/Route;
.super Ljava/lang/Object;


# instance fields
.field final address:Lcom/alipay/mobile/common/transport/spdy/Address;

.field final inetSocketAddress:Ljava/net/InetSocketAddress;

.field final modernTls:Z

.field final proxy:Ljava/net/Proxy;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "address == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "proxy == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "inetSocketAddress == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iput-boolean p4, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/alipay/mobile/common/transport/spdy/Route;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-object v2, p1, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1, v2}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    iget-boolean v2, p1, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method flipTlsMode()Lcom/alipay/mobile/common/transport/spdy/Route;
    .locals 5

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/common/transport/spdy/Route;-><init>(Lcom/alipay/mobile/common/transport/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddress()Lcom/alipay/mobile/common/transport/spdy/Address;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    return-object v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->address:Lcom/alipay/mobile/common/transport/spdy/Address;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Address;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    if-eqz v0, :cond_0

    mul-int/lit8 v0, v1, 0x1f

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModernTls()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/Route;->modernTls:Z

    return v0
.end method
