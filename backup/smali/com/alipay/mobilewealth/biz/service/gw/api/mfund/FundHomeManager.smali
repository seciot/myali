.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundHomeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryFundHomeInfoV0320(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundHomeInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoV0320Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.query.queryFundHomeInfoV0320"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundHomeInfoV0815(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.account.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundHomeInfoV0915(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundHomeInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.account.detail.getFundAssetAccountInfoV0912"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundHomeInfoV1029(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundHomeInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.getFundAssetAccountInfoV1024"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundHomeInfoV1226(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundHomeInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundHomeInfoV1226Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.getFundAssetAccountInfoForV8"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
