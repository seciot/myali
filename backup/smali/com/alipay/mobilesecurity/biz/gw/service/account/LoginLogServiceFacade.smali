.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/account/LoginLogServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryLoginLogByPage(Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogReq;)Lcom/alipay/mobilesecurity/core/model/account/loginLog/LoginLogRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.loginLog.queryLog"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
