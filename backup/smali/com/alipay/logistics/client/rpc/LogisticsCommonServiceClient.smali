.class public interface abstract Lcom/alipay/logistics/client/rpc/LogisticsCommonServiceClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAlipayuidSign(Lcom/alipay/logistics/client/dto/request/LogisticsUidSignRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsUidSignResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.userId.sign.get"
    .end annotation
.end method

.method public abstract makeLogisticsDecision(Lcom/alipay/logistics/client/dto/request/LogisticsDecisionRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsDecisionResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.logistics.decision"
    .end annotation
.end method
