.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    return-void
.end method


# virtual methods
.method public data(ZILjava/io/InputStream;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    int-to-long v0, p4

    invoke-static {p3, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3, p4}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveData(Ljava/io/InputStream;I)V

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveFin()V

    goto :goto_0
.end method

.method public goAway(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 4

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1502(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Z)Z

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->isLocallyInitiated()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveRstStream(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V
    .locals 11

    iget-object v10, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    monitor-enter v10

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->i:Z
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1500(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v10

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    invoke-static {v2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v2

    if-nez v2, :cond_5

    invoke-virtual/range {p7 .. p7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->failIfStreamAbsent()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->INVALID_STREAM:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v2, p3, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynResetLater(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->g:I
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1600(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I

    move-result v2

    if-gt p3, v2, :cond_3

    monitor-exit v10

    goto :goto_0

    :cond_3
    rem-int/lit8 v2, p3, 0x2

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->h:I
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1700(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_4

    monitor-exit v10

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v9, v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    move v3, p3

    move v5, p1

    move v6, p2

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;-><init>(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZZILjava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #setter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->g:I
    invoke-static {v3, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1602(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)I

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;
    invoke-static {v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$2100()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;

    const-string/jumbo v5, "OkHttp Callback %s stream %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->f:Ljava/lang/String;
    invoke-static {v8}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-direct {v4, p0, v5, v6, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;-><init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_5
    monitor-exit v10

    invoke-virtual/range {p7 .. p7}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;->failIfStreamPresent()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    invoke-virtual {v2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveHeaders(Ljava/util/List;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/HeadersMode;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveFin()V

    goto/16 :goto_0
.end method

.method public noop()V
    .locals 0

    return-void
.end method

.method public ping(ZII)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;
    invoke-static {v0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$2200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;->receive()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$2300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;ZIILcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;)V

    goto :goto_0
.end method

.method public priority(II)V
    .locals 0

    return-void
.end method

.method public rstStream(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->removeStream(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveRstStream(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->INTERNAL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->c:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1200(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader;->nextFrame(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/FrameReader$Handler;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->NO_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->CANCEL:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;->PROTOCOL_ERROR:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    invoke-static {v2, v1, v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    invoke-static {v3, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1300(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public settings(ZLcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iput-object p2, v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->e:Ljava/util/Map;
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-object v1, v0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v5, v5, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveSettings(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->settings:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;->merge(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Settings;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v4

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    return-void

    :cond_3
    move-object v1, v0

    goto :goto_1
.end method

.method public windowUpdate(IIZ)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->a(I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;
    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$1400(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;I)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;->receiveWindowUpdate(I)V

    goto :goto_0
.end method
