.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedTradeQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryApplyAppointInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyAppointInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.query.apply.appoint"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryApplyBuyInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedApplyBuyInfoQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyBuyInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.query.apply.buy"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryApplyPledgeInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedApplyPledgeInfoQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyPledgeInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.query.apply.pledge"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBuyResult(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedBuyResultQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedBuyQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.query.buy.result"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPledgeChargeInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedPledgeChargeInfoQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedPledgeChargeInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.query.pledge.charge"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
