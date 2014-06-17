.class public Lcom/alipay/mobile/common/rpc/RpcFactory;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/Config;

.field private b:Lcom/alipay/mobile/common/rpc/RpcInvoker;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Lcom/alipay/mobile/common/rpc/Config;

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;-><init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public batchBegin()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchBegin()V

    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->batchCommit()Ljava/util/concurrent/FutureTask;

    move-result-object v0

    return-object v0
.end method

.method public findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    return-object v0
.end method

.method public getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance v2, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->a:Lcom/alipay/mobile/common/rpc/Config;

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/RpcFactory;->b:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    invoke-direct {v2, v3, p1, v4}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
