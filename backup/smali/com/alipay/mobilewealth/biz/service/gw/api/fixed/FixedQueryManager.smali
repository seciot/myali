.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryMyFixedAssetInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/MyFixedAssetInfoPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/MyFixedAssetInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.myfixedasset"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
