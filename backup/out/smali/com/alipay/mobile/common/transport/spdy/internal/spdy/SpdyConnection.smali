.class public final Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

.field private final c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

.field final client:Z

.field private final d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:J

.field private k:Ljava/util/Map;

.field private l:I

.field private m:Ljava/util/Timer;

.field private n:I

.field private o:Z

.field private p:J

.field settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

.field final variant:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v1, 0x0

    const-class v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string/jumbo v7, "OkHttp SpdyConnection"

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->daemonThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->j:J

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    iput v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I

    iput-boolean v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->p:J

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->e:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->f:Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->client:Z

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->b:Ljava/io/InputStream;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;->newReader(Ljava/io/InputStream;Z)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->variant:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->c:Ljava/io/OutputStream;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;

    move-result-object v3

    iget-boolean v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->client:Z

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Variant;->newWriter(Ljava/io/OutputStream;Z)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->f:Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->f:Z
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$100(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->l:I

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->a:Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;->access$500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Spdy Reader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Builder;)V

    return-void
.end method

.method private declared-synchronized a(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a()V
    .locals 7

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    if-eq v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_IDLE_PING_MAX_TIMES:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    sget-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x1b58

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v5, 0x3

    mul-long/2addr v2, v5

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    sget-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->shutdown(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :goto_0
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Z)V

    move-object v5, v0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    move-object v4, v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_3

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_3
    if-ge v2, v6, :cond_2

    aget-object v1, v5, v2

    :try_start_2
    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->close(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_1
    move-exception v1

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_4

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz v4, :cond_4

    array-length v2, v4

    move v0, v3

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_6
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    :cond_5
    :goto_7
    if-eqz v0, :cond_6

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :catch_3
    move-exception v0

    if-eqz v1, :cond_5

    move-object v0, v1

    goto :goto_7

    :cond_6
    return-void

    :cond_7
    move-object v4, v2

    goto :goto_2

    :cond_8
    move-object v5, v2

    goto :goto_1
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    monitor-enter v1

    if-eqz p4, :cond_0

    :try_start_0
    invoke-virtual {p4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->send()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->ping(ZII)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->g:I

    return v0
.end method

.method static synthetic access$1602(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)I
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->g:I

    return p1
.end method

.method static synthetic access$1700(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I

    return v0
.end method

.method static synthetic access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$2100()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    .locals 1

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V
    .locals 9

    sget-object v8, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$3;

    const-string/jumbo v2, "OkHttp SPDY Writer %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$3;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->p:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I

    return v0
.end method

.method static synthetic access$808(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I

    return v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b()V

    return-void
.end method

.method private declared-synchronized b(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private b()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->NO_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public final declared-synchronized closePingTask()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final flush()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->flush()V

    return-void
.end method

.method public final declared-synchronized getIdleStartTimeNs()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isIdle()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newStream(Ljava/util/List;ZZ)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    .locals 11

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v3, v4

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    iget-object v10, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    monitor-enter v10

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v10

    throw v0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_1

    :cond_2
    :try_start_3
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;-><init>(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->setLastStreamTime()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->resetPingTimes()V

    :cond_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v1

    move-object v9, p1

    invoke-interface/range {v2 .. v9}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->synStream(ZZIIIILjava/util/List;)V

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0
.end method

.method public final noop()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->noop()V

    return-void
.end method

.method public final declared-synchronized openStreamCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
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

.method public final ping()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    .locals 4

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->l:I

    iget v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->l:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->l:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->k:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const v3, 0x4f4b6f6b

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V

    return-object v0
.end method

.method public final readConnectionHeader()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;->readConnectionHeader()V

    return-void
.end method

.method final declared-synchronized removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final resetPingTimes()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_IDLE_PING_MAX_TIMES:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->o:Z

    sget-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    const-wide/16 v0, 0x1b58

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->m:Ljava/util/Timer;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    :cond_2
    sget-wide v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    goto :goto_1
.end method

.method public final sendConnectionHeader()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->connectionHeader()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    new-instance v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->settings(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    return-void
.end method

.method public final setLastStreamTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->p:J

    return-void
.end method

.method public final shutdown(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 3

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    monitor-enter v1

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    if-eqz v0, :cond_0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->g:I

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v2, v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final writeData(IZ[BII)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    move v1, p2

    move v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->data(ZI[BII)V

    return-void
.end method

.method final writeSynReply(IZLjava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p2, p1, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->synReply(ZILjava/util/List;)V

    return-void
.end method

.method final writeSynReset(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    return-void
.end method

.method final writeSynResetLater(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 7

    sget-object v6, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final writeWindowUpdate(II)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->d:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameWriter;->windowUpdate(II)V

    return-void
.end method

.method final writeWindowUpdateLater(II)V
    .locals 7

    sget-object v6, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$2;

    const-string/jumbo v2, "OkHttp SPDY Writer %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$2;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
