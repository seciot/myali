.class public Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildTask(Lcom/alipay/mobile/command/model/Request;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/Request;",
            "Lcom/alipay/mobile/command/rpc/http/TransportCallback;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Lcom/alipay/mobile/command/model/Response;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$2;->a:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/Request;->rpcTypeEnum()Lcom/alipay/mobile/command/model/RpcTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/model/RpcTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t find RpcType"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;

    check-cast p0, Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;-><init>(Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    :goto_0
    new-instance v1, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;

    invoke-direct {v1, v0, v0}, Lcom/alipay/mobile/command/rpc/http/RpcTaskFactory$1;-><init>(Ljava/util/concurrent/Callable;Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;)V

    return-object v1

    :pswitch_1
    new-instance v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;

    check-cast p0, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;-><init>(Lcom/alipay/mobile/command/model/DownloadInHttpRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
