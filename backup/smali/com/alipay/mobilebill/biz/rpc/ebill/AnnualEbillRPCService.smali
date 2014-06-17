.class public interface abstract Lcom/alipay/mobilebill/biz/rpc/ebill/AnnualEbillRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract bundingUserLocation(Lcom/alipay/mobilebill/biz/rpc/ebill/request/PositionRequest;)Ljava/lang/Boolean;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.bundingUserLocation"
    .end annotation
.end method

.method public abstract canEnterAnnualEbill(Lcom/alipay/mobilebill/biz/rpc/ebill/request/CanEnterAnnualEbillRequest;)Ljava/lang/Boolean;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.canEnterAnnualEbill"
    .end annotation
.end method

.method public abstract pkWithNearby(Lcom/alipay/mobilebill/biz/rpc/ebill/request/PositionRequest;)Lcom/alipay/mobilebill/biz/rpc/ebill/result/ShakingResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.pkWithNearby"
    .end annotation
.end method

.method public abstract queryAnnualEbill(Lcom/alipay/mobilebill/biz/rpc/ebill/request/AnnualEbillRequest;)Lcom/alipay/mobilebill/biz/rpc/ebill/result/AnnualEbillResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.queryAnnualEbill"
    .end annotation
.end method

.method public abstract queryRankingWithNearby(Lcom/alipay/mobilebill/biz/rpc/ebill/request/PositionRequest;)Lcom/alipay/mobilebill/biz/rpc/ebill/result/RankingResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.queryRankingWithNearby"
    .end annotation
.end method
