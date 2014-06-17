.class public abstract Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/rpc/protocol/Deserializer;


# instance fields
.field protected mData:Ljava/lang/String;

.field protected mType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mType:Ljava/lang/reflect/Type;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;->mData:Ljava/lang/String;

    return-void
.end method
