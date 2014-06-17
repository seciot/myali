.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bank/BankCardOperationManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryCardBalance(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/BankCardBalanceReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardBalanceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.balance.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeBankCard(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/RemoveBankCardReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.bankcard.remove"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract setCcrRemid(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/CcrRemindSetReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/CcrRemindResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.ccr.remid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
