.class public abstract Lcom/alipay/mobile/framework/service/common/RpcService;
.super Lcom/alipay/mobile/framework/service/CommonService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addProtocolArgs(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract addRpcInterceptor(Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInterceptor;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/alipay/mobile/common/rpc/RpcInterceptor;",
            ")V"
        }
    .end annotation
.end method

.method public abstract batchBegin()V
.end method

.method public abstract batchCommit()Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/FutureTask",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
