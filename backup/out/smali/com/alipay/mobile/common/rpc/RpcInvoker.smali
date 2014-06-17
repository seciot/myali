.class public Lcom/alipay/mobile/common/rpc/RpcInvoker;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/ThreadLocal;

.field private static final b:Ljava/lang/ThreadLocal;


# instance fields
.field private c:B

.field private d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Lcom/alipay/mobile/common/rpc/RpcFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/rpc/RpcFactory;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:B

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->e:Lcom/alipay/mobile/common/rpc/RpcFactory;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z
    .locals 7

    const/4 v1, 0x1

    array-length v2, p1

    const/4 v0, 0x0

    move v6, v0

    move v0, v1

    move v1, v6

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->e:Lcom/alipay/mobile/common/rpc/RpcFactory;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/common/rpc/RpcFactory;->findRpcInterceptor(Ljava/lang/Class;)Lcom/alipay/mobile/common/rpc/RpcInterceptor;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p2, v4, v3}, Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;->handle(Lcom/alipay/mobile/common/rpc/RpcInterceptor;Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method public static addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public batchBegin()V
    .locals 1

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:B

    return-void
.end method

.method public batchCommit()Ljava/util/concurrent/FutureTask;
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:B

    const/4 v0, 0x0

    return-object v0
.end method

.method public invoke(Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/utils/ThreadUtil;->checkMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "can\'t in main thread call rpc ."

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-class v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/annotation/OperationType;

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v7

    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "OperationType must be set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v0}, Lcom/alipay/mobile/framework/service/annotation/OperationType;->value()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker$3;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, v7, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RPC start: operationTypeValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    :try_start_0
    iget-byte v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->c:B

    if-nez v0, :cond_4

    const-string/jumbo v0, "alipay.user.login"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    invoke-virtual {p1, v9, v8, p5}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getSerializer(ILjava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->setExtParam(Ljava/lang/Object;)V

    :cond_2
    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/protocol/Serializer;->packet()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getTransport(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/transport/RpcCaller;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/rpc/transport/RpcCaller;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/common/rpc/RpcInvoker;->b:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p1, v6, v0}, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->getDeserializer(Ljava/lang/reflect/Type;Ljava/lang/String;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/rpc/protocol/Deserializer;->parser()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v2, :cond_3

    sget-object v2, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v1

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnResponse:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker$1;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    invoke-direct {p0, v7, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/PerformanceLog;->getInstance()Lcom/alipay/mobile/common/logging/PerformanceLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "RPC finish: operationTypeValue="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/PerformanceLog;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v6

    invoke-virtual {v6, v8}, Lcom/alipay/mobile/common/rpc/RpcException;->setOperationType(Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/rpc/RpcInvoker$2;-><init>(Lcom/alipay/mobile/common/rpc/RpcInvoker;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/rpc/RpcException;)V

    invoke-direct {p0, v7, v0}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->a([Ljava/lang/annotation/Annotation;Lcom/alipay/mobile/common/rpc/RpcInvoker$Handle;)Z

    move-result v0

    if-eqz v0, :cond_4

    throw v6
.end method
