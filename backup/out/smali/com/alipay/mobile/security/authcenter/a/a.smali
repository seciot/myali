.class public final Lcom/alipay/mobile/security/authcenter/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field protected b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private e:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

.field private f:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->e:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->f:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method

.method private static a()Z
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const-string/jumbo v5, "get"

    invoke-virtual {v2, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "ro.secure"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_0

    const-string/jumbo v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->e:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-interface {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;->sendCheckCode(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/a;->e:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0, p3}, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;->verifyCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;
    .locals 3

    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setLoginId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setImsi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setCellID(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/authcenter/a/a;->a()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setPrisonBreak(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setPwd(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/a;->f:Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/register/RegisterService;->setMobilePayPwd(Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdReq;)Lcom/alipay/mobileapp/biz/rpc/register/vo/SetMobilePayPwdRes;

    move-result-object v0

    return-object v0
.end method
