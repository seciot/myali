.class public final Lcom/alipay/android/widget/security/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field protected c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field protected d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

.field e:Lcom/alipay/android/widget/security/a/b;

.field protected f:Landroid/content/Context;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field protected m:Lcom/alipay/mobilesecurity/core/model/Tid;

.field private n:Lcom/alipay/mobilesecurity/core/model/Tid;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AccountManagerFacadeBiz"

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    iput-object v2, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->f:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v2, p0, Lcom/alipay/android/widget/security/a/a;->e:Lcom/alipay/android/widget/security/a/b;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iput-object v0, p0, Lcom/alipay/android/widget/security/a/a;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;Ljava/util/List;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;"
        }
    .end annotation

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/widget/security/a/a;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-interface {v2, v1, p2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;->updateWalletLoginAuth(Lcom/alipay/mobilesecurity/core/model/Tid;Ljava/util/List;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
