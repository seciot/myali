.class public Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoService;-><init>()V

    const-string/jumbo v0, "UserInfoServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public queryUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->findUserInfo(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->setUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/security/SecurityCache;->userExtInfo:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserMode;->setUserExtInfo(Ljava/lang/String;)V

    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public queryphoneBindingState(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/UserInfoServiceCallBack;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/UserInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;->setLogonId(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/mobilebind/MobileBindManagerFacade;->queryBindMobile(Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryReq;)Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/mobilebind/MobileBindQueryRes;->getBindMobile()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8fd4\u56de\u67e5\u8be2\u624b\u673a\u7684\u7ed1\u5b9a bindMobile="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/service/ext/security/UserInfoServiceCallBack;->getBindMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
