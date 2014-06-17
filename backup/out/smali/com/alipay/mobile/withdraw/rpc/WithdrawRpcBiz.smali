.class public Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/mobile/framework/app/ActivityApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->b:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;

    invoke-interface {v0}, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;->getPreWithdrawInfo()Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/rpc/WithdrawRpcBiz;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;

    invoke-interface {v0, p1}, Lcom/alipay/kabaoprod/biz/financial/withdraw/api/WithdrawAssetManager;->doWithdrawInfo(Lcom/alipay/kabaoprod/biz/financial/withdraw/request/WithdrawReq;)Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;

    move-result-object v0

    return-object v0
.end method
