.class public Lcom/alipay/mobile/security/accountmanager/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private f:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/accountmanager/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/accountmanager/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->f:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->e:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    return-void
.end method

.method private a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

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

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->e:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setCellID(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    invoke-virtual {p1, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setLoginId(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/security/accountmanager/a/c;->a()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setPrisonBreak(Z)V

    invoke-virtual {p1, p4}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setCode(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->setPwd(Ljava/lang/String;)V

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
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 6

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/accountmanager/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loginId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sceneCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "smsType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->openSimplePwdNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setSessionId(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setImageCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->preCheckAndSendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setSessionId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;->setImageCode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->preCheckAndSendSmsNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/PreCheckAndSendSmsResp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .locals 3

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setSmsPwd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iput-boolean p4, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->policyCenter:Z

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->verifySmsAndUserStatusNotLogin(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;-><init>()V

    invoke-virtual {v0, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setCertNo(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;->setLoginId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->f:Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/PasswordManagerFacade;->checkIdentification(Lcom/alipay/mobilesecurity/core/model/mainpage/password/CheckUserCertRequest;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;
    .locals 3

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setLoginId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setSmsPwd(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setBusinessMobileValidateStatus(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v1, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->verifySmsAndUserStatus(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifySmsAndUserStatusResp;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 6

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;-><init>()V

    const-string/jumbo v4, "5310"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/security/accountmanager/a/c;->a(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/accountmanager/a/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loginId: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " sceneCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/c;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/account/WirelessPasswordManagerFacade;->openSimplePwd(Lcom/alipay/mobilesecurity/core/model/mainpage/password/OpenSimplePwdReq;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    move-result-object v0

    return-object v0
.end method
