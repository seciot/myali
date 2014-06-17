.class public Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;
.super Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;
.source "PhoneBlackListImpl.java"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field c:Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;

.field d:Landroid/content/Context;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackList;-><init>()V

    .line 18
    const-string/jumbo v0, "PhoneBlackListImpl"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->a:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "phoneBlackList"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->b:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->c:Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;

    .line 21
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->d:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 51
    new-instance v2, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;

    invoke-direct {v2}, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;-><init>()V

    .line 52
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;->manufacturer:Ljava/lang/String;

    .line 53
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;->phoneModel:Ljava/lang/String;

    .line 54
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;->osVersion:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v3, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-interface {v0, v2}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->checkPhoneModel(Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelReq;)Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;

    move-result-object v1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4ece\u670d\u52a1\u5668\u83b7\u53d6\u9ed1\u540d\u53552 ="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;->resultStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->checkPhoneBlackUI(Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;)V

    .line 65
    :cond_0
    return-void

    .line 59
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public checkPhoneBlackUI(Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;)V
    .locals 3
    .parameter

    .prologue
    .line 68
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;->success:Z

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p1, Lcom/alipay/livetradeprod/core/model/rpc/CheckPhoneModelRes;->resultStr:Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->d:Landroid/content/Context;

    const-string/jumbo v2, "phoneBlackList"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->storeBlacksInLocal(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->c:Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;->callBack(Ljava/lang/String;)V

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CheckPhoneBlack blacks="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 97
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method

.method public queryPhoneBlackList(Landroid/content/Context;Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u7f13\u5b58 PhoneBlackListImpl blackList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;->callBack(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->c:Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->d:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u83b7\u53d6\u672c\u5730 PhoneBlackListImpl blackList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "phoneBlackList"

    invoke-static {p1, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;->callBack(Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/onsitepay/phoneblacklist/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/onsitepay/phoneblacklist/a;-><init>(Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public storeBlacksInLocal(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/phoneblacklist/PhoneBlackListImpl;->e:Ljava/lang/String;

    .line 92
    return-void
.end method
