.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bollywood/BollywoodProductManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract productOrderDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodProductDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodProductDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.product.order.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodProductDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodProductDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.product.query.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryList(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodProductPageListReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodProductListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.product.query.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
