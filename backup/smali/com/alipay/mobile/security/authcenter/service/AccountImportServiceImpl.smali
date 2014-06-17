.class public Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;-><init>()V

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 2

    sget-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobilesecurity/core/model/Tid;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->c:Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "walletTid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->c:Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;->genTid(Ljava/lang/String;)Z

    :cond_1
    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V
    .locals 2

    sget-object v1, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V
    .locals 2

    const-string/jumbo v1, "ssoTag"

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "ssoTag"

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/account/AccountManagerFacade;

    return-object v0
.end method

.method static synthetic access$802(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->e:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public getUserListFromResult(Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/core/model/account/GetAccountResult;->getUserIds()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;

    new-instance v6, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->isLoginWithoutPwd()Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setAutoLogin(Z)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getLogonId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setLogonId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getHeadImgUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setUserAvatar(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/UserFlagEntity;->getUserType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "wirelessUser"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setWirelessUser(Z)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginUserId(Ljava/lang/String;)V

    :cond_2
    move-object v0, v4

    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public importMspAccount()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/service/a;-><init>(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->a:Ljava/lang/String;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->d:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public importSSOAccount()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/service/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/service/b;-><init>(Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :try_start_0
    const-string/jumbo v1, "ssoTag"

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v0, "ssoTag"

    const-wide/16 v2, 0x1f40

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->e:Ljava/util/List;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->c:Lcom/alipay/mobile/security/authcenter/service/DeviceServiceImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/service/AccountImportServiceImpl;->f:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
