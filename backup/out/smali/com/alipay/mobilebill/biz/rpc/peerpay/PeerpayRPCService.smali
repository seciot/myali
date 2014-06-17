.class public interface abstract Lcom/alipay/mobilebill/biz/rpc/peerpay/PeerpayRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract cancelPeerPay(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/BizResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.cancelPeerPay"
    .end annotation
.end method

.method public abstract getPeerPayDetail(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/mobilebill/biz/shared/bill/model/BillDetail;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getPeerPayDetail"
    .end annotation
.end method
