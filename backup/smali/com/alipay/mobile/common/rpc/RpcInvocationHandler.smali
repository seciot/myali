.class public Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field private a:Lcom/alipay/mobile/common/rpc/Config;

.field private b:Ljava/lang/Class;

.field private c:Lcom/alipay/mobile/common/rpc/RpcInvoker;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/Class;Lcom/alipay/mobile/common/rpc/RpcInvoker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a:Lcom/alipay/mobile/common/rpc/Config;

    iput-object p2, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    return-void
.end method


# virtual methods
.method public getDeserializer(Ljava/lang/reflect/Type;Ljava/lang/String;)Lcom/alipay/mobile/common/rpc/protocol/Deserializer;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSerializer(ILjava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/protocol/Serializer;
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;

    invoke-direct {v0, p1, p2, p3}, Lcom/alipay/mobile/common/rpc/protocol/json/JsonSerializer;-><init>(ILjava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public getTransport(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/alipay/mobile/common/rpc/transport/RpcCaller;
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->a:Lcom/alipay/mobile/common/rpc/Config;

    invoke-direct {v0, v1, p1, p2}, Lcom/alipay/mobile/common/rpc/transport/http/HttpCaller;-><init>(Lcom/alipay/mobile/common/rpc/Config;Ljava/lang/reflect/Method;Ljava/lang/Object;)V

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->c:Lcom/alipay/mobile/common/rpc/RpcInvoker;

    iget-object v3, p0, Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;->b:Ljava/lang/Class;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/rpc/RpcInvoker;->invoke(Lcom/alipay/mobile/common/rpc/RpcInvocationHandler;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
