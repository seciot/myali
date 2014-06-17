.class public Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EReceiver;
.end annotation


# instance fields
.field private a:Lcom/alipay/mobile/framework/AlipayApplication;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 9
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a:Lcom/alipay/mobile/framework/AlipayApplication;

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/CreateTaobaoSsoTokenFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/CreateTaobaoSsoTokenFacade;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->obtainTaobaoDeviceId(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->a()Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string/jumbo v6, "\u7533\u8bf7sso token\u53c2\u6570,imei:%s,imsi:%s,did:%s,taobaoDeviceId:%s,userId:%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    aput-object v3, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v4, 0x3

    aput-object v5, v7, v4

    const/4 v4, 0x4

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v5}, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/CreateTaobaoSsoTokenFacade;->createTaobaoSsoToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->isSuccess()Z

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->getNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/taobao/ssotoken/model/CreateTaobaoSsoTokenResult;->getSsoToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v2, v0, p1}, Lcom/alipay/mobilesecurity/taobao/sso/util/TaobaoSsoLoginUtils;->writeSsoToken(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "\u56de\u5199sso token\u5931\u8d25,nickName:%s,ssoToken:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "com.alipay.security.login"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/msgreceiver/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/msgreceiver/a;-><init>(Lcom/alipay/android/widget/security/msgreceiver/TaobaoSsoTokenWriteBackTrigger;Landroid/content/Context;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
