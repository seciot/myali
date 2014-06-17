.class public Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;


# direct methods
.method public constructor <init>(Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;Landroid/app/Activity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;I)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;

    invoke-virtual {p0, v0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;

    iput-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;

    invoke-virtual {p0, v1}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->setShowNetworkErrorView(Z)V

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->c:Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    return-object v0
.end method


# virtual methods
.method public synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoReq;

    invoke-direct {v0}, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoReq;-><init>()V

    const-string/jumbo v1, "HOME"

    iput-object v1, v0, Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoReq;->source:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a:Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeInfoManager;->queryWealthHomeInfoV0320(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcException(Lcom/alipay/mobile/common/rpc/RpcException;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/widgets/asset/rpc/a;-><init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7

    const/4 v4, 0x0

    check-cast p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->success:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/android/widgets/asset/rpc/b;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widgets/asset/rpc/b;-><init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;)V

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "\u63d0\u9192"

    iget-object v2, p1, Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;->resultView:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    sget v5, Lcom/alipay/mobile/ui/R$string;->confirm:I

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/framework/AlipayApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
