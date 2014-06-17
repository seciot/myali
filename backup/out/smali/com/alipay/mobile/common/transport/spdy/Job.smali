.class final Lcom/alipay/mobile/common/transport/spdy/Job;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final connection:Ljava/net/HttpURLConnection;

.field final dispatcher:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

.field final request:Lcom/alipay/mobile/common/transport/spdy/Request;

.field final responseReceiver:Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/spdy/Dispatcher;Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transport/spdy/Request;Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    iput-object p4, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/Request;->headerCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/common/transport/spdy/Request;->headerName(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-virtual {v4, v1}, Lcom/alipay/mobile/common/transport/spdy/Request;->headerValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Request;->body()Lcom/alipay/mobile/common/transport/spdy/Request$Body;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/spdy/Request$Body;->contentLength()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    const-wide/32 v4, 0x7fffffff

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/spdy/Request$Body;->writeTo(Ljava/io/OutputStream;)V

    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;-><init>(Lcom/alipay/mobile/common/transport/spdy/Request;I)V

    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;

    new-instance v2, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->request:Lcom/alipay/mobile/common/transport/spdy/Request;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->request(Lcom/alipay/mobile/common/transport/spdy/Request;)Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->exception(Ljava/lang/Throwable;)Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/spdy/Failure$Builder;->build()Lcom/alipay/mobile/common/transport/spdy/Failure;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;->onFailure(Lcom/alipay/mobile/common/transport/spdy/Failure;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transport/spdy/Job;)V

    :goto_3
    return-void

    :cond_4
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher$RealResponseBody;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->body(Lcom/alipay/mobile/common/transport/spdy/Response$Body;)Lcom/alipay/mobile/common/transport/spdy/Response$Builder;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/spdy/Response$Builder;->build()Lcom/alipay/mobile/common/transport/spdy/Response;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->responseReceiver:Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transport/spdy/Response$Receiver;->onResponse(Lcom/alipay/mobile/common/transport/spdy/Response;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transport/spdy/Job;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/spdy/Job;->dispatcher:Lcom/alipay/mobile/common/transport/spdy/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/alipay/mobile/common/transport/spdy/Dispatcher;->finished(Lcom/alipay/mobile/common/transport/spdy/Job;)V

    throw v0
.end method
