.class public Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;
.super Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/rpc/protocol/AbstractDeserializer;-><init>(Ljava/lang/reflect/Type;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parser()Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "tips"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/rpc/RpcException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/alipay/mobile/common/rpc/RpcException;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "response  ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/rpc/RpcException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/String;

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "result"

    const-class v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/rpc/protocol/json/JsonDeserializer;->mType:Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
