.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedProductQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryProductDetailInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedProductDetailInfoQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedProductDetailInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.productdetailinfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryProductListForPage(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedProductListPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedProductListPageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.productlist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
