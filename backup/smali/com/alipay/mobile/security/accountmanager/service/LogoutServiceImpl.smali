.class public Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/LogoutService;


# instance fields
.field final a:Ljava/lang/String;

.field b:Landroid/support/v4/content/LocalBroadcastManager;

.field c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/LogoutService;-><init>()V

    const-string/jumbo v0, "LogoutServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    new-instance v2, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;

    invoke-direct {v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;-><init>()V

    invoke-virtual {v2, p1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setLogonId(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletTid(Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u83b7\u53d6\u8bbe\u5907\u4fe1\u606f\u6210\u529f walletTid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setWalletClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setClientId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setMspImsi(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-interface {v0, v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;->logout(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "logoutUserId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected goMain()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "20000002"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000001"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public logout()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/security/accountmanager/service/e;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/accountmanager/service/e;-><init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setSessionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLoginToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setTaobaoSid(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setExtern_token(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->clearLoginUserInfo()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/service/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/service/b;-><init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/service/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/accountmanager/service/c;-><init>(Lcom/alipay/mobile/security/accountmanager/service/LogoutServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
