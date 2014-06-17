.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bollywood/BollywoodAssetManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAssetList(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodAssetPageListReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodAssetListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.asset.query.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
