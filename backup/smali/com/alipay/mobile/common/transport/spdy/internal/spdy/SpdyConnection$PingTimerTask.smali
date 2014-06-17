.class public Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->p:J
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$700(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_PING_INTERVAL:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I

    move-result v0

    sget v1, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->DEFAULT_IDLE_PING_MAX_TIMES:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$808(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->ping()Lcom/alipay/mobile/common/transport/spdy/internal/spdy/Ping;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Spdy ping sent."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->n:I
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$800(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$PingTimerTask;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #calls: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b()V
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$900(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)V

    goto :goto_0
.end method
