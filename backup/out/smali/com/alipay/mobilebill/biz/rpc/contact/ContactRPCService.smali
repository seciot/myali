.class public interface abstract Lcom/alipay/mobilebill/biz/rpc/contact/ContactRPCService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getBaseContactInfo(Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoReq;)Lcom/alipay/mobilebill/biz/shared/contact/model/BaseContactInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.baseContactInfo"
    .end annotation
.end method

.method public abstract getContactList(Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListReq;)Lcom/alipay/mobilebill/biz/shared/contact/model/ContactListResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.bill.getContactList"
    .end annotation
.end method
