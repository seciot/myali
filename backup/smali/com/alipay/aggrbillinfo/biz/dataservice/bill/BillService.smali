.class public interface abstract Lcom/alipay/aggrbillinfo/biz/dataservice/bill/BillService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract findAllAuthBankCard()Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BankBillInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.bill.findAllAuthBankCard"
    .end annotation
.end method

.method public abstract findBillByBank(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.bill.findBillByBank"
    .end annotation
.end method

.method public abstract findBillDetailByBillId(Ljava/lang/String;)Lcom/alipay/aggrbillinfo/biz/mgnt/bill/info/BillDetailInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.aggrbillinfo.bill.findBillDetailByBillId"
    .end annotation
.end method
