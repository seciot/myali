.class public final Lcom/alipay/android/widget/security/a/d;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private e:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/d;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/d;->c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/d;->d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/d;->e:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

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
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;->setPwd(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->closeSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CloseSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->d:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setCellID(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    invoke-virtual {v2, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setLoginId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/widget/security/a/d;->a()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setPrisonBreak(Z)V

    invoke-virtual {v2, p3}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setResetPwd(Z)V

    const/4 v0, 0x1

    iput-boolean v0, v2, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->smsAuth:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setPwd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-interface {v0, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->openSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;->setUserId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/d;->c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->querySimplePwdStatus(Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/QuerySimplePwdStatusResp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V
    .locals 3

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    const-string/jumbo v0, "prepay_initial"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3

    new-instance v1, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setPassword(Ljava/lang/String;)V

    const-string/jumbo v0, "simple"

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;->setPasswordType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->e:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->validateSimplePassword(Lcom/alipay/mobilesecurity/common/service/model/req/ValidatePasswordRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;->loginId:Ljava/lang/String;

    new-instance v2, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v2}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;->smsAuth:Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/d;->c:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->preOpenSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SimplePwdPreCheckResp;

    move-result-object v0

    return-object v0
.end method
