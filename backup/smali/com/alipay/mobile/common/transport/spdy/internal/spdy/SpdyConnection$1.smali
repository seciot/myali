.class Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;
.super Lcom/alipay/mobile/common/transport/spdy/internal/NamedRunnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

.field final synthetic val$errorCode:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

.field final synthetic val$streamId:I


# direct methods
.method varargs constructor <init>(Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;Ljava/lang/String;[Ljava/lang/Object;ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iput p4, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->val$streamId:I

    iput-object p5, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transport/spdy/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->this$0:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;

    iget v1, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->val$streamId:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection$1;->val$errorCode:Lcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/spdy/internal/spdy/SpdyConnection;->writeSynReset(ILcom/alipay/mobile/common/transport/spdy/internal/spdy/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
