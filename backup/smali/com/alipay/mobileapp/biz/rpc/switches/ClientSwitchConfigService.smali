.class public interface abstract Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAllSwitches(Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;)Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.switches.all.get"
    .end annotation
.end method

.method public abstract getSwitchesAfterLogin(Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;)Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.switches.all.get.afterlogin"
    .end annotation
.end method

.method public abstract getSwitchesByBusiness(Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;)Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.client.switches.business.get"
    .end annotation
.end method
