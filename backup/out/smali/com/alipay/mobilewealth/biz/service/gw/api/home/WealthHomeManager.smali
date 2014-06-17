.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/home/WealthHomeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryWealthHomeInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/home/WealthInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/home/WealthHomeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.home.queryWealthHomeInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
