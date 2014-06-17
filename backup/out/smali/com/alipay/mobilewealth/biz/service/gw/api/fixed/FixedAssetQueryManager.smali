.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedAssetQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAssetInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedAssetDetailInfoQueryRequest;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAssetDetailInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.assetinfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAssetListForPage(Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAssetListPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAssetListPageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.assetlist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPledgeDealListForPage(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedPledgeDealListPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedPledgeDealListPageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.pledge.dealList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryRenewalListForPage(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedRenewalListPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedRenewalListPageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.asset.renewalList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
