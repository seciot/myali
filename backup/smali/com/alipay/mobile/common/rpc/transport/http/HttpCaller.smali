.class public Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;
.super Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/Config;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    const/16 v5, 0x9

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->mReqData:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->setReqData(Ljava/util/ArrayList;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "did"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v2, "clientId"

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->addHeader(Lorg/apache/http/Header;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "threadid = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "Not find this type Transport"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/Config;->getTransport()Lcom/alipay/mobile/common/transport/Transport;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/Transport;->execute(Lcom/alipay/mobile/common/transport/Request;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/Response;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "response is null"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/alipay/mobile/common/transport/http/HttpException;

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/http/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/Response;->getResData()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v0, "HttpCaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "threadid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; rpc response:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    :pswitch_0
    const/4 v1, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x7

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x8

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x5

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_6
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
