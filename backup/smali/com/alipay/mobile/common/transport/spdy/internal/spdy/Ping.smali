.class public final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/concurrent/CountDownLatch;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->a:Ljava/util/concurrent/CountDownLatch;

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    iput-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    return-void
.end method


# virtual methods
.method final cancel()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method final receive()V
    .locals 4

    const-wide/16 v2, -0x1

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final roundTripTime()J
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final roundTripTime(JLjava/util/concurrent/TimeUnit;)J
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->c:J

    iget-wide v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method final send()V
    .locals 4

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->b:J

    return-void
.end method
