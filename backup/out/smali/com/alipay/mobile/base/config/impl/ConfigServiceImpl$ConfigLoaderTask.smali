.class Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;-><init>(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;

    new-instance v3, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;

    invoke-direct {v3}, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLastLoginedUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    :cond_0
    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    :goto_0
    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;->clientVersion:Ljava/lang/String;

    iput-object v2, v3, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;->userId:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;->channelId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getDefImei()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;->imei:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/alipay/mobileapp/biz/rpc/switches/ClientSwitchConfigService;->getSwitchesAfterLogin(Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoReq;)Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;

    move-result-object v0

    iget-boolean v1, v0, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;->success:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/alipay/mobileapp/biz/rpc/switches/vo/SwitchInfoResp;->switches:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->refreshSharedSwitch(Landroid/content/Context;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->a(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    iget-object v2, p0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigLoaderTask;->a:Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Alipay"

    const-string/jumbo v4, "CommonConfig.json"

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->a(Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl;->loadTime:J

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
