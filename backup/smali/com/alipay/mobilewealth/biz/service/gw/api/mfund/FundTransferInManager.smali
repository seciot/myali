.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundTransferInManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundApplyTransferIn(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundApplyTransferInReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.once.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundAutoTransferInSet(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInSetReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.auto.set"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferInSuccess(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferInSuccessReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundTransferInSuccessResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.success"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundAutoTransferIn(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferin.auto.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
