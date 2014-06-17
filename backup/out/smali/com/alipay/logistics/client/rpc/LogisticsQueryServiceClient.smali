.class public interface abstract Lcom/alipay/logistics/client/rpc/LogisticsQueryServiceClient;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBillPayLogisticsDetail(Lcom/alipay/logistics/client/dto/request/LogisticsPayBillQueryRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsPayBillQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.bill.queryPayInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getHistoryLogisticsDetail(Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.historyLogistics.get"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getLogisticsLtds()Lcom/alipay/logistics/client/dto/response/LogisticsLtdQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.logisticsLtds.get"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getLogisticsToDoList(Ljava/lang/String;)Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.toDoListLogistics.get"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getRealTimeLogisticsDetail(Lcom/alipay/logistics/client/dto/request/LogisticsDetailQueryRequest;)Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.realTimeLogistics.get"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPayRecords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/logistics/client/dto/response/LogisticsDetailQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.logisticsapp.bill.queryPayRecords"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
