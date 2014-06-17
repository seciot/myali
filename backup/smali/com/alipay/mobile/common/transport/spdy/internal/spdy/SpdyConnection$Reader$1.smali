.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;
.super Lcom/alipay/mobile/common/transport/spdy/internal/NamedRunnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;

.field final synthetic val$newStream:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;


# direct methods
.method varargs constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;Ljava/lang/String;[Ljava/lang/Object;Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;->this$1:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;

    iget-object v0, v0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    #getter for: Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->b:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->access$2000(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$Reader$1;->val$newStream:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/IncomingStreamHandler;->receive(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
