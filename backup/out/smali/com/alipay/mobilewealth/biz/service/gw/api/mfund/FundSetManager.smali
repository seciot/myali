.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundSetManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundAssetChangeNoticeSet(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAmoutChangeNoticeSetReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.fundAssetChangeNoticeSet"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyFundTotalAmoutHiddenSet(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTotalAmoutHiddenSetReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.modifyFundTotalAmoutHiddenSet"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundSetInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundSetQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.query.fundset"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
