.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bollywood/BollywoodTradeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryOrderDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodTradeOrderReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodTradeOrderResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.trade.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract tradeBuy(Lcom/alipay/mobilewealth/biz/service/gw/request/bollywood/BollywoodTradeReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bollywood/BollywoodTradeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fund.bollywood.trade.create"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
