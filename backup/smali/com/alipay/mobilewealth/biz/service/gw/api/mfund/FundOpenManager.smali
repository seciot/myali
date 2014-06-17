.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundOpenManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundOpenAccount(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenAccountReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundIntroduction()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundIntroductionResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.operation.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundOpenInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundOpenInfoV0()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoV0Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract userRealNameAndOpenAccount(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/UserRealNameAndOpenAccountReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.realname.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
