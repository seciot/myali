.class final Lcom/alipay/android/widgets/asset/rpc/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

.field final synthetic b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    iput-object p2, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widgets/asset/rpc/b;->b:Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;

    invoke-static {v0}, Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;->a(Lcom/alipay/android/widgets/asset/rpc/WealthHomeRpcExcutor;)Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widgets/asset/rpc/b;->a:Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;->a(Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeInfoResult;Z)V

    return-void
.end method
