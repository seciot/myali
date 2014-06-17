.class Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 8

    const/4 v7, 0x2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->d:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->d:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->c:J
    invoke-static {v5}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$100(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v7, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->d:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->d:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->b:I
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;->access$200(Lcom/alipay/mobile/common/transport/spdy/ConnectionPool;)I

    move-result v0

    if-le v1, v0, :cond_3

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    add-int/lit8 v0, v1, -0x1

    :goto_2
    move v1, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Connection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_6

    add-int/lit8 v0, v1, 0x1

    :goto_3
    move v1, v0

    goto :goto_0

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/Connection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    const/4 v0, 0x0

    return-object v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method
