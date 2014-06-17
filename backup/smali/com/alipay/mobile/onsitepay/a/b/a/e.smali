.class final Lcom/alipay/mobile/onsitepay/a/b/a/e;
.super Ljava/lang/Object;
.source "OnsitePayPollingQueryServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/a/b/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPollingQuery loopNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    move-result v0

    if-lez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->b(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startPollingQuery loopNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isLoopFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " sonicHashMap.size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->c(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "loopQueryPayThread loopNum="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    :try_start_0
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

    .line 92
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    .line 94
    new-instance v3, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerReq;

    invoke-direct {v3}, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerReq;-><init>()V

    .line 95
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/a/b/a/d;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 98
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 100
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    new-instance v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteQueryInfo;

    invoke-direct {v6}, Lcom/alipay/livetradeprod/core/model/base/OnsiteQueryInfo;-><init>()V

    .line 103
    iput-object v1, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteQueryInfo;->dynamicId:Ljava/lang/String;

    .line 104
    iput-object v2, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteQueryInfo;->userId:Ljava/lang/String;

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sonicId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v7, " userId="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 109
    :cond_0
    :try_start_1
    iput-object v4, v3, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerReq;->queryList:Ljava/util/List;

    .line 110
    invoke-interface {v0, v3}, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;->querySellerSoundWavePayRes(Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerReq;)Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;->success:Z

    if-eqz v1, :cond_1

    .line 113
    iget-object v0, v0, Lcom/alipay/livetradeprod/core/model/rpc/QuerySellerRes;->tradeInfo:Ljava/util/List;

    .line 114
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->d(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Lcom/alipay/mobile/onsitepay/a/b/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobile/onsitepay/a/b/a;->a(Ljava/util/List;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->e(Lcom/alipay/mobile/onsitepay/a/b/a/d;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/a/b/a/e;->a:Lcom/alipay/mobile/onsitepay/a/b/a/d;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/a/b/a/d;->f(Lcom/alipay/mobile/onsitepay/a/b/a/d;)Z

    .line 132
    return-void
.end method
