.class public Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;
.super Landroid/taobao/service/appdevice/net/async/SyncHttpClient;

# interfaces
.implements Landroid/taobao/service/appdevice/net/mtop/IMtopSynClient;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/SyncHttpClient;-><init>()V

    return-void
.end method


# virtual methods
.method public getV3(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;)Landroid/taobao/service/appdevice/net/mtop/Result;
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->a:Ljava/lang/String;

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->b:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->checkAppKeyAndAppSecret(Landroid/taobao/service/appdevice/net/mtop/MtopRequest;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroid/taobao/service/appdevice/net/mtop/MtopRequestHelper;->getUrlWithRequestParams(Landroid/content/Context;Landroid/taobao/service/appdevice/net/mtop/MtopRequest;)Landroid/taobao/service/appdevice/net/async/RequestParams;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->get(Landroid/content/Context;Ljava/lang/String;Landroid/taobao/service/appdevice/net/async/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/taobao/service/appdevice/net/mtop/Result;

    invoke-direct {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/taobao/service/appdevice/net/mtop/Result;->setSuccess(Z)V

    const-string/jumbo v1, "request result is null"

    invoke-virtual {v0, v1}, Landroid/taobao/service/appdevice/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Landroid/taobao/service/appdevice/net/mtop/Result;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Landroid/taobao/service/appdevice/net/mtop/Result;

    invoke-direct {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;-><init>()V

    invoke-virtual {v0, v2}, Landroid/taobao/service/appdevice/net/mtop/Result;->setSuccess(Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/taobao/service/appdevice/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->c:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAppSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->b:Ljava/lang/String;

    return-void
.end method

.method public setDefaultAppkey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/taobao/service/appdevice/net/mtop/MtopSyncClientV3;->a:Ljava/lang/String;

    return-void
.end method
