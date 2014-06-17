.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedTradeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyAppoint(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedApplyAppointReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyAppointResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.apply.appoint"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyBuy(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedApplyBuyReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyBuyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.apply.buy"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyPledge(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedApplyPledgeReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyPledgeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.apply.pledges"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract cancelAppoint(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedCancelAppointReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedCancelAppointResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.cancel.appoint"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract cancelPledge(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedCancelPledgeReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedCancelPledgeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.cancel.pledge"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyDisplayMode(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedModifyDisplayModeReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedModifyDisplayModeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.modify.display.mode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyExpire(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedModifyExpireReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedModifyExpireResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.trade.modify.expire"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
