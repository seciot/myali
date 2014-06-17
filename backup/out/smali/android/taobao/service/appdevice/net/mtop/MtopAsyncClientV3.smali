.class public Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;
.super Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;

# interfaces
.implements Landroid/taobao/service/appdevice/net/mtop/IMtopAsynClient;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getV3(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Landroid/taobao/service/appdevice/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;)Landroid/taobao/service/appdevice/net/async/RequestParams;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0, p3}, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/RequestParams;Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p3, v0}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->c:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->b:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopAsyncClientV3;->a:Ljava/lang/String;

    return-void
.end method
