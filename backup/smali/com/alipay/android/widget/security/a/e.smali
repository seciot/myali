.class public final Lcom/alipay/android/widget/security/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/e;->a:Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/e;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-void
.end method

.method private a()Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 3

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/e;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/e;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;->loginId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/a/e;->a()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/e;->a:Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;->sendSms(Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/SendSmsResp;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;
    .locals 2

    new-instance v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;-><init>()V

    iput-object p2, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;->phone:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;->code:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/a/e;->a()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;->tid:Lcom/alipay/mobilesecurity/core/model/Tid;

    iput-object p1, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;->loginId:Ljava/lang/String;

    iput-object p4, v0, Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;->businessMobileValidateStatus:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/e;->a:Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;

    invoke-interface {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/sms/SmsManagerFacade;->verifyAuthCode(Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeReq;)Lcom/alipay/mobilesecurity/core/model/mainpage/password/VerifyAuthCodeResp;

    move-result-object v0

    return-object v0
.end method
