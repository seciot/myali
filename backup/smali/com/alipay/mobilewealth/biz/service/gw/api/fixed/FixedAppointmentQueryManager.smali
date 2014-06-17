.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/fixed/FixedAppointmentQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAppointDealListForPage(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedAppointDealListPageReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAppointDealListPageResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.appoint.deallist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryAppointmentInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/fixed/FixedAppointmentInfoQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/fixed/FixedAppointmentInfoQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.fixed.query.appointmentinfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
