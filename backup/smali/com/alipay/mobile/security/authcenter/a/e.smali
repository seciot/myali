.class public final Lcom/alipay/mobile/security/authcenter/a/e;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

.field private e:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "LoginBiz"

    sput-object v0, Lcom/alipay/mobile/security/authcenter/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/e;->d:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    const-class v1, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->e:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/LoginService;->loginWithPWD(Lcom/alipay/mobile/framework/service/ext/security/bean/LoginInputParam;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->d:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-interface {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;->sendCheckCode(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;
    .locals 3

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/e;->d:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_0

    const-string/jumbo v0, "down_auto"

    :goto_0
    invoke-interface {v1, p2, p1, v2, v0}, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;->verifyCheckCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeRes;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "down_input"

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->e:Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;

    invoke-interface {v0, p1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserServiceFacade;->getMobileUserStatus(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/a/e;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;

    invoke-direct {v1}, Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;-><init>()V

    iput-object p1, v1, Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;->longonId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;->tid:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/a/e;->d:Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;

    invoke-interface {v0, v1}, Lcom/alipay/mobileapp/biz/rpc/smscode/SmsCodeManageService;->verifySmsAndDevice(Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceReq;)Lcom/alipay/mobileapp/biz/rpc/smscode/vo/VerifySmsAndDeviceRes;

    move-result-object v0

    return-object v0
.end method
