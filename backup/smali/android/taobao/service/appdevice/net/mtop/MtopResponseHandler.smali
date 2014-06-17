.class public abstract Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;
.super Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;


# static fields
.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/taobao/service/appdevice/net/async/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected handleSuccessMessage(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHelper;->parse(Ljava/lang/String;)Landroid/taobao/service/appdevice/net/mtop/Result;

    move-result-object v0

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;->onSuccess(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->getRetCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->getRetDesc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v0, p1}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "ERROR_NETWORK"

    invoke-virtual {p0, v0, p2}, Landroid/taobao/service/appdevice/net/mtop/MtopResponseHandler;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
