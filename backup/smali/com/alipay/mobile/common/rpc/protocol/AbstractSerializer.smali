.class public abstract Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Serializer;


# instance fields
.field protected mOperationType:Ljava/lang/String;

.field protected mParams:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->mOperationType:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractSerializer;->mParams:Ljava/lang/Object;

    return-void
.end method
