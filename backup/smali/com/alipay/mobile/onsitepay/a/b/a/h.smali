.class final Lcom/alipay/mobile/onsitepay/a/b/a/h;
.super Ljava/lang/Object;
.source "OnsitePayRegisterLongLinkServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/a/b/a/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/a/b/a/f;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/h;->b:Lcom/alipay/mobile/onsitepay/a/b/a/f;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/a/b/a/h;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "longlink payLoadData = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/h;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string/jumbo v2, "payerAccount"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string/jumbo v3, "memo"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string/jumbo v4, "userId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    const-string/jumbo v5, "payerName"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    const-string/jumbo v6, "headImageUrl"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;

    invoke-direct {v6}, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;-><init>()V

    .line 79
    iput-object v1, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->action:Ljava/lang/String;

    .line 80
    iput-object v2, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->payerAccount:Ljava/lang/String;

    .line 81
    iput-object v3, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->memo:Ljava/lang/String;

    .line 82
    iput-object v4, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->userId:Ljava/lang/String;

    .line 83
    iput-object v5, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->payerName:Ljava/lang/String;

    .line 84
    iput-object v0, v6, Lcom/alipay/livetradeprod/core/model/base/OnsiteTradeInfo;->headImageUrl:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/a/b/a/h;->b:Lcom/alipay/mobile/onsitepay/a/b/a/f;

    iget-object v1, v1, Lcom/alipay/mobile/onsitepay/a/b/a/f;->c:Lcom/alipay/mobile/onsitepay/a/b/a;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/onsitepay/a/b/a;->a(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
