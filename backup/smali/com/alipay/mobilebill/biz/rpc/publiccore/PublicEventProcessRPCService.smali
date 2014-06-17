.class public interface abstract Lcom/alipay/mobilebill/biz/rpc/publiccore/PublicEventProcessRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBaseContactInfo(Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoReq;)Lcom/alipay/mobilebill/common/service/facade/model/BaseContactInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.publicBaseContactInfo"
    .end annotation
.end method

.method public abstract getPublicContactList(Lcom/alipay/mobilebill/common/service/facade/model/ContactListReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicEventMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getPublicContactList"
    .end annotation
.end method

.method public abstract getPublicEventProcess(Lcom/alipay/publiccore/common/service/facade/model/request/PublicEventProcessReq;)Lcom/alipay/publiccore/common/service/facade/model/result/PublicEventMessageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getPublicEventProcess"
    .end annotation
.end method
