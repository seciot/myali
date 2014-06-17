.class public interface abstract Lcom/alipay/mobilebill/biz/rpc/bill/QueryBillInfoRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteBillInfo(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/mobile/framework/service/ext/BizResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.deleteBillInfo"
    .end annotation
.end method

.method public abstract getBillDetail(Ljava/lang/String;Ljava/lang/String;J)Lcom/alipay/mobilebill/biz/shared/bill/model/BillDetail;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getBillDetail"
    .end annotation
.end method

.method public abstract getBillDetailInfo(Lcom/alipay/mobilebill/biz/bill/model/billdetail/GetBillDetailRequest;)Lcom/alipay/mobilebill/biz/bill/model/billdetail/BillDetailInfo;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getBillDetailInfo"
    .end annotation
.end method

.method public abstract getBillList(Lcom/alipay/mobilebill/biz/shared/bill/GetBillInfoListReq;)Lcom/alipay/mobilebill/biz/shared/bill/model/BillList;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getBillList"
    .end annotation
.end method
