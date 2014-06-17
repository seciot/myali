.class public final Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alipay/mobile/common/transport/spdy/Address;

.field private final b:Ljava/net/URI;

.field private final c:Ljava/net/ProxySelector;

.field private final d:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

.field private final e:Lcom/alipay/mobile/common/transport/spdy/internal/Dns;

.field private final f:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

.field private g:Ljava/net/Proxy;

.field private h:Ljava/net/InetSocketAddress;

.field private i:Z

.field private j:Ljava/net/Proxy;

.field private k:Ljava/util/Iterator;

.field private l:[Ljava/net/InetAddress;

.field private m:I

.field private n:I

.field private o:I

.field private final p:Ljava/util/List;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;Lcom/alipay/mobile/common/transport/spdy/internal/Dns;Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->a:Lcom/alipay/mobile/common/transport/spdy/Address;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b:Ljava/net/URI;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c:Ljava/net/ProxySelector;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->d:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    iput-object p5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->e:Lcom/alipay/mobile/common/transport/spdy/internal/Dns;

    iput-object p6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->f:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->p:Ljava/util/List;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->q:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Address;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->i:Z

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->j:Ljava/net/Proxy;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c:Ljava/net/ProxySelector;

    invoke-virtual {v0, p2}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->k:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private a()Ljava/net/Proxy;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->j:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->i:Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->j:Ljava/net/Proxy;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->k:Ljava/util/Iterator;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->k:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->i:Z

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Z
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final connectFailed(Lcom/alipay/mobile/common/transport/spdy/Connection;Ljava/io/IOException;)V
    .locals 4

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c:Ljava/net/ProxySelector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c:Ljava/net/ProxySelector;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b:Ljava/net/URI;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Ljava/net/ProxySelector;->connectFailed(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->f:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    invoke-virtual {v1, v0, p2}, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->failed(Lcom/alipay/mobile/common/transport/spdy/Route;Ljava/io/IOException;)V

    return-void
.end method

.method public final getSelectorID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final hasNext()Z
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->i:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->d()Z

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

.method public final next(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Connection;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524dpool\u4e2d\u7684\u8fde\u63a5\u6570\u91cf\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->d:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->getConnectionCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->d:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->a:Lcom/alipay/mobile/common/transport/spdy/Address;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->get(Lcom/alipay/mobile/common/transport/spdy/Address;)Lcom/alipay/mobile/common/transport/spdy/Connection;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->close()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->c()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->i:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->d()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3
    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/Connection;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->p:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/Route;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;-><init>(Lcom/alipay/mobile/common/transport/spdy/Route;)V

    move-object v0, v1

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->a()Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->g:Ljava/net/Proxy;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->g:Ljava/net/Proxy;

    iput-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v4, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-ne v1, v4, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->b:Ljava/net/URI;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->n:I

    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->e:Lcom/alipay/mobile/common/transport/spdy/internal/Dns;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Dns;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    iput v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->m:I

    :cond_5
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    iget v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->m:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->m:I

    aget-object v1, v1, v4

    iget v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->n:I

    invoke-direct {v0, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->m:I

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    array-length v4, v4

    if-ne v1, v4, :cond_6

    iput-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->l:[Ljava/net/InetAddress;

    iput v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->m:I

    :cond_6
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->h:Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->a:Lcom/alipay/mobile/common/transport/spdy/Address;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_4
    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    :cond_7
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    if-ne v0, v2, :cond_b

    iput v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    move v0, v2

    :goto_5
    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_6
    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/Route;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->a:Lcom/alipay/mobile/common/transport/spdy/Address;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->g:Ljava/net/Proxy;

    iget-object v6, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->h:Ljava/net/InetSocketAddress;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/alipay/mobile/common/transport/spdy/Route;-><init>(Lcom/alipay/mobile/common/transport/spdy/Address;Ljava/net/Proxy;Ljava/net/InetSocketAddress;Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->f:Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->shouldPostpone(Lcom/alipay/mobile/common/transport/spdy/Route;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    instance-of v1, v0, Ljava/net/InetSocketAddress;

    if-nez v1, :cond_9

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Proxy.address() is not an InetSocketAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->n:I

    move-object v0, v1

    goto/16 :goto_3

    :cond_a
    move v0, v3

    goto :goto_4

    :cond_b
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    if-nez v0, :cond_c

    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/http/RouteSelector;->o:I

    move v0, v3

    goto :goto_5

    :cond_c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    move v0, v3

    goto :goto_6

    :cond_e
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/Connection;-><init>(Lcom/alipay/mobile/common/transport/spdy/Route;)V

    goto/16 :goto_2
.end method
