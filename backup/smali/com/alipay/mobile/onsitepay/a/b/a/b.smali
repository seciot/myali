.class final Lcom/alipay/mobile/onsitepay/a/b/a/b;
.super Ljava/lang/Object;
.source "OnsitePayLBSServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/a/b/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a/a;Ljava/lang/String;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->c:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 71
    :try_start_0
    new-instance v1, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;

    invoke-direct {v1}, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;-><init>()V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;->userId:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->b:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    iput-object v0, v1, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;->location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->c:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    new-instance v0, Lcom/alipay/mobile/security/tid/TidGetter;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/security/tid/TidGetter;-><init>(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/tid/TidGetter;->getClientTid()Lcom/alipay/mobilesecurity/core/model/Tid;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;->tid:Ljava/lang/String;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->c:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v2, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-interface {v0, v1}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->bindLbsUser(Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserReq;)Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserRes;

    move-result-object v0

    .line 77
    iget-boolean v0, v0, Lcom/alipay/livetradeprod/core/model/rpc/BindLbsUserRes;->success:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->c:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/a/b/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/b;->c:Lcom/alipay/mobile/onsitepay/a/b/a/a;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/a/b/a/a;->a:Lcom/alipay/mobile/onsitepay/a/b/a/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->removeUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :cond_0
    :goto_1
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
