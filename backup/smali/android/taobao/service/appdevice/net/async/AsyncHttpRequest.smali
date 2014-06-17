.class public Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final b:Lorg/apache/http/protocol/HttpContext;

.field private final c:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

.field private e:Z

.field private f:I

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iput-object p3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->g:Landroid/content/Context;

    iput-object p4, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iput-object p5, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    instance-of v0, p5, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->e:Z

    :cond_0
    return-void
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v2

    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v1, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    const-string/jumbo v1, "AsyncHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "makeRequest request:["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]===response[:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncHttpRequest"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v0, v1, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "AsyncHttpRequest"

    const-string/jumbo v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NPE in HttpClient"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->f:I

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->b:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v2, v1, v0, v3}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_1
    new-instance v1, Ljava/net/ConnectException;

    invoke-direct {v1}, Ljava/net/ConnectException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendStartMessage()V

    :cond_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/taobao/service/appdevice/net/async/NetworkHelper;->checkNetWork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "network connection error["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->c:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    :goto_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AsyncHttpRequest"

    const-string/jumbo v2, "[run]"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFinishMessage()V

    iget-boolean v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->e:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v1, v0, v4}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpRequest;->d:Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
