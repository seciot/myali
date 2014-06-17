.class final Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    #getter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$100(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    const-class v2, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    #setter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    invoke-static {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$102(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    #getter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$200(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    invoke-virtual {v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    #setter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    invoke-static {v1, v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$202(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;Lcom/alipay/mobile/framework/service/ext/security/DeviceService;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    :cond_1
    new-instance v0, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    #getter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->b:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    invoke-static {v1}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$200(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->tid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->imei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->imsi:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->vimei:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->vimsi:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilesecurity/core/model/Tid;->clientKey:Ljava/lang/String;

    :cond_2
    new-instance v1, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;-><init>()V

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->setAuthId(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;->setTid(Lcom/alipay/mobilesecurity/core/model/Tid;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp$a;->a:Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;

    #getter for: Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->a:Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;
    invoke-static {v0}, Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;->access$100(Lcom/alipay/mobile/deviceAuthorization/app/AuthorizationApp;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/AuthServiceFacade;->upgradeAuth(Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/req/SubmitTidReq;)Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " authServiceFacade.upgradeAuth\u7ed3\u679csuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/biz/gw/service/auth/model/result/AuthBaseResult;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    return-object v0
.end method
