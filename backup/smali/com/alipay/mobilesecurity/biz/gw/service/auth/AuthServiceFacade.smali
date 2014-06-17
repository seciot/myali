.class public interface abstract Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
.super Ljava/lang/Object;


# virtual methods
.method public abstract completeAuth(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/CompleteAuthRequest;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.completeauth"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getAllValidAuth()Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.manage.list"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeAuth(Ljava/lang/String;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.manage.cancle"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract submitTid(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/SubmitTidResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.submittid"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract upgradeAuth(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobile.security.mobileauth.auth.upgrade"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
