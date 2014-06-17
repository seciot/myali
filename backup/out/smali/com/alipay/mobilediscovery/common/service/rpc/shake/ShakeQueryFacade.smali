.class public interface abstract Lcom/alipay/mobilediscovery/common/service/rpc/shake/ShakeQueryFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getSingleShakeThemeAndTriggerCount(Lcom/alipay/mobilediscovery/common/service/rpc/shake/req/TriggerCountReq;)Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/ThemeQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilediscovery.shake.getSingleShakeThemeAndTriggerCount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryShareContent(Lcom/alipay/mobilediscovery/common/service/rpc/shake/req/ShareContentReq;)Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/ShareContentResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilediscovery.shake.queryShareContent"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySingleTriggerCount(Lcom/alipay/mobilediscovery/common/service/rpc/shake/req/TriggerCountReq;)Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/SingleShakeTriggerResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilediscovery.shake.querySingleTriggerCount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryWinPrize()Lcom/alipay/mobilediscovery/common/service/rpc/shake/result/WinPrizeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilediscovery.shake.queryWinPrize"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
