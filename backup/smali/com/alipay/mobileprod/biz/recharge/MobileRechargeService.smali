.class public interface abstract Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract create(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;)Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.createOrder"
    .end annotation
.end method

.method public abstract queryEcard(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.virtual.recharge.mobile.queryEcard"
    .end annotation
.end method
