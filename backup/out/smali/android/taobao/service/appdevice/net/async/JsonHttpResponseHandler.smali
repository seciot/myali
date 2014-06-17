.class public Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;
.super Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleFailureMessage(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1, v0}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0, p1, v0}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;->handleSuccessMessage(Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onSuccess(Lcom/alibaba/fastjson/JSONObject;)V

    :goto_0
    return-void

    :cond_0
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onSuccess(Lcom/alibaba/fastjson/JSONArray;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, p1}, Landroid/taobao/service/appdevice/net/async/JsonHttpResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public onFailure(Ljava/lang/Throwable;Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    return-void
.end method
