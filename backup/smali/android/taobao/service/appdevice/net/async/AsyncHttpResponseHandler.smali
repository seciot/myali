.class public Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;
.super Ljava/lang/Object;


# static fields
.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler$1;

    invoke-direct {v0, p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler$1;-><init>(Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleSuccessMessage(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendFinishMessage()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    const-string/jumbo v0, "UTF-8"

    invoke-static {v3, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0x12c

    if-lt v3, v4, :cond_0

    new-instance v3, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendSuccessMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method sendStartMessage()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendSuccessMessage(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
