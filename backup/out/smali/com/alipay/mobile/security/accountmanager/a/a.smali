.class public final Lcom/alipay/mobile/security/accountmanager/a/a;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/framework/service/common/RpcService;

.field protected c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field protected d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

.field e:Lcom/alipay/mobile/security/accountmanager/a/b;

.field protected f:Landroid/content/Context;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Ljava/lang/String;

.field protected m:Lcom/alipay/mobilesecurity/core/model/Tid;

.field private n:Lcom/alipay/mobilesecurity/core/model/Tid;

.field private o:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Lcom/alipay/mobile/security/accountmanager/a/b;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "AccountManagerFacadeBiz"

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->a:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->g:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->h:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->i:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->j:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->k:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->o:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->o:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->f:Landroid/content/Context;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->o:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->o:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->b:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->c:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->o:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-eqz v0, :cond_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;->getAccountList(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;)Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    :cond_3
    throw v0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x2

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v8}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->d:Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->n:Lcom/alipay/mobilesecurity/core/model/Tid;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->m:Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;->clearAccount(Lcom/alipay/mobilesecurity/core/model/Tid;Lcom/alipay/mobilesecurity/core/model/Tid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    invoke-interface {v1, v7, v0}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    invoke-interface {v0, v7, v8}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/a;->e:Lcom/alipay/mobile/security/accountmanager/a/b;

    invoke-interface {v1, v7, v8}, Lcom/alipay/mobile/security/accountmanager/a/b;->a(ILjava/lang/Object;)V

    :cond_2
    throw v0
.end method
