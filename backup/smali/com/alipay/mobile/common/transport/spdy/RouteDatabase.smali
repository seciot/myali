.class public final Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final declared-synchronized connected(Lcom/alipay/mobile/common/transport/spdy/Route;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized failed(Lcom/alipay/mobile/common/transport/spdy/Route;Ljava/io/IOException;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    instance-of v0, p2, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/spdy/Route;->flipTlsMode()Lcom/alipay/mobile/common/transport/spdy/Route;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized failedRoutesCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized shouldPostpone(Lcom/alipay/mobile/common/transport/spdy/Route;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/RouteDatabase;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
