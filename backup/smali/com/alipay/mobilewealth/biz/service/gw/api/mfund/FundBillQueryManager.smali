.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundBillQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryFundBill(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundBillQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundBillQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.trade.record.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundFreezeDetails(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundFreezeDetailQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundFreezeDetailQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.query.fundfreeze.details"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
