.class public Lcom/alipay/mobile/security/authcenter/a/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/mobile/security/authcenter/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->a:Ljava/lang/String;

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

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->d:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->a:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeReq;->setMobileNo(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/f;->b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;->sendSmsRegistCode(Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SendSmsCodeRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;
    .locals 4

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/authcenter/a/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;

    invoke-direct {v2}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->d:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v3

    invoke-virtual {v2, p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setLoginId(Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setTid(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setPwd(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setRegid(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setCellID(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setImei(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setImsi(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setPrisonBreak(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-interface {v0, v2}, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;->setMobilePayPwd(Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;
    .locals 2

    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;->mobileNo:Ljava/lang/String;

    iput-object p2, v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;->checkCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->d:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;->tid:Ljava/lang/String;

    iput-object p3, v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;->smsVerifyType:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/f;->b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;->verifyRegistCode(Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/VerifyCheckRes;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileReq;

    invoke-direct {v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileReq;->setRegId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/f;->b:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;->getMemerProdSyncStatus(Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/RegisterPcToMobileRes;

    move-result-object v0

    return-object v0
.end method
