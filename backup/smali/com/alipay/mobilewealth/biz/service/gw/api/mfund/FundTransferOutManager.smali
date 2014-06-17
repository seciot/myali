.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundTransferOutManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundApplyTransferToBalance(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundApplyTransferOutReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyTransferToBalanceResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.balance.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundApplyTransferToCard(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundApplyTransferOutReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyTransferToCardResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.bankcard.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferOutSendSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutSMSSendReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundSendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transfeout.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferOutValidSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundValidSMSReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.sms.valid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferToBalance(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutToBalanceReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.balance"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundTransferToCard(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutToBankCardReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.transferout.bankcard"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
