.class public interface abstract Lcom/alipay/kabaoprod/biz/mwallet/pass/manager/ThirdEvoucherCreateManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addAlipass(Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.addAlipass"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract asynCreateAlipass(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassAddResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.pass.asynCreateAlipass"
    .end annotation
.end method
