.class public interface abstract Lcom/alipay/logistics/client/rpc/LogisticsBillServiceClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract orderCreate(Lcom/alipay/logistics/client/dto/request/LogisticsCreateOrderRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsCreateOrderResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.bill.orderCreate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
