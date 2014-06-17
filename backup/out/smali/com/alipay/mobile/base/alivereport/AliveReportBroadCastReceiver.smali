.class public Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

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

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;

    iget-object v1, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;

    invoke-direct {v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmAwid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAwid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getAccessPoint()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAccessPoint(Ljava/lang/String;)V

    const-string/jumbo v4, "client"

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setAppType(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmChannels()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setChannels(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getCellInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setClientPostion(Ljava/lang/String;)V

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setClientType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileBrand()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setMobileBrand(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmMobileModel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setMobileModel(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setProductID(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setProductVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmScreenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenHigh(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getScreenWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenWidth(Ljava/lang/String;)V

    const-string/jumbo v2, "android"

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSystemType(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSystemVersion(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setUserAgent(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setCarrier(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setScreenSize(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->b:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setSourceId(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "isPrisonBreak"

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v4, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Lcom/alipay/android/app/helper/PayHelperServcie;->getPaySysInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v4, "apdid"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "lbsInfo"

    iget-object v4, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->a:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getLastKnownLBSInfo()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;->setExtInfos(Ljava/util/Map;)V

    :try_start_0
    invoke-interface {v0, v3}, Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveService;->report(Lcom/alipay/mobilegw/biz/shared/processer/reportActive/ReportActiveReq;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object p1, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->a:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    iput-object v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->b:Lcom/alipay/mobile/framework/service/common/SchemeService;

    const-string/jumbo v0, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->initClient(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/alivereport/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/alivereport/a;-><init>(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->c:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/base/alivereport/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/base/alivereport/b;-><init>(Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->stopPingSent()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/base/alivereport/AliveReportBroadCastReceiver;->c:Z

    goto :goto_0
.end method
