.class public Landroid/taobao/service/appdevice/net/mtop/MtopResponseHelper;
.super Ljava/lang/Object;


# static fields
.field public static final FAIL:Ljava/lang/String; = "FAIL"

.field public static final SUCCESS:Ljava/lang/String; = "SUCCESS"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Landroid/taobao/service/appdevice/net/mtop/Result;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Landroid/taobao/service/appdevice/net/mtop/Result;

    invoke-direct {v1}, Landroid/taobao/service/appdevice/net/mtop/Result;-><init>()V

    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "ret"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    const-string/jumbo v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_0
    const-string/jumbo v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const/4 v6, 0x2

    array-length v7, v5

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v1, v6}, Landroid/taobao/service/appdevice/net/mtop/Result;->setRetCode(Ljava/lang/String;)V

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v1, v6}, Landroid/taobao/service/appdevice/net/mtop/Result;->setRetDesc(Ljava/lang/String;)V

    const-string/jumbo v6, "SUCCESS"

    const/4 v7, 0x0

    aget-object v5, v5, v7

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->setData(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/taobao/service/appdevice/net/mtop/Result;->setSuccess(Z)V

    :cond_1
    return-object v1

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/taobao/service/appdevice/net/mtop/Result;->setSuccess(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0
.end method
