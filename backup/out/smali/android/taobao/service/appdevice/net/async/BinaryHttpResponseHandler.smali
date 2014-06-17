.class public Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;
.super Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;


# static fields
.field private static a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "image/png"

    aput-object v2, v0, v1

    sput-object v0, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;-><init>()V

    sput-object p1, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method handleFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;[B)V

    return-void
.end method

.method handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->handleSuccessMessage([B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, [B

    invoke-virtual {p0, v1, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->handleFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method handleSuccessMessage([B)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->onSuccess([B)V

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;[B)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess([B)V
    .locals 0

    return-void
.end method

.method public sendFailureMessage(Ljava/lang/Throwable;[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 10

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    const-string/jumbo v3, "Content-Type"

    invoke-interface {p1, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    array-length v5, v3

    if-eq v5, v1, :cond_0

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string/jumbo v3, "None, or more than one, Content-Type Header found!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    :goto_0
    return-void

    :cond_0
    aget-object v5, v3, v0

    sget-object v6, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->a:[Ljava/lang/String;

    array-length v7, v6

    move v3, v0

    :goto_1
    if-ge v3, v7, :cond_2

    aget-object v8, v6, v3

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v0, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const-string/jumbo v3, "Content-Type not allowed!"

    invoke-direct {v0, v1, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    :cond_3
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v0, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v0, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    :goto_2
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_4

    new-instance v1, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, v2}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendFailureMessage(Ljava/lang/Throwable;[B)V

    move-object v0, v2

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendSuccessMessage([B)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_2
.end method

.method public sendSuccessMessage([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/BinaryHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
