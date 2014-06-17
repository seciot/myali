.class public interface abstract Lcom/alipay/siteprobe/biz/wifi/rpc/AuthProcessorFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract processor(Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorReq;)Lcom/alipay/siteprobe/core/model/rpc/AuthProcessorRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.network.processor"
    .end annotation
.end method

.method public abstract verify(Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyReq;)Lcom/alipay/siteprobe/core/model/rpc/AuthVerifyRsp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.siteprobe.network.verify"
    .end annotation
.end method
