.class public abstract Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/transport/RpcCaller;


# instance fields
.field protected mMethod:Ljava/lang/reflect/Method;

.field protected mReqData:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;->mMethod:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/transport/AbstractRpcCaller;->mReqData:Ljava/lang/Object;

    return-void
.end method
