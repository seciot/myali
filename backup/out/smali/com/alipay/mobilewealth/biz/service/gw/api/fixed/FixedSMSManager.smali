.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedSMSManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyAppointSendSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/SMSSendReq;)Lcom/alipay/mobilewealth/common/service/facade/result/SendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.apply.appoint.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyAppointValidSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/ValidSMSReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyAppointResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.apply.appoint.sms.valid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyPledgeSendSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/SMSSendReq;)Lcom/alipay/mobilewealth/common/service/facade/result/SendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.apply.pledge.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyPledgeValidSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/ValidSMSReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedApplyPledgeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.apply.pledge.sms.valid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
