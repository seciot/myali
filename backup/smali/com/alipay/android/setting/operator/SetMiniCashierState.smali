.class public Lcom/alipay/android/setting/operator/SetMiniCashierState;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/setting/request/IRequestOperator;


# instance fields
.field private a:Lcom/alipay/android/setting/request/IRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/android/setting/request/IRequest;Lcom/alipay/android/setting/request/RequestContainer;)V
    .locals 7

    iput-object p1, p0, Lcom/alipay/android/setting/operator/SetMiniCashierState;->a:Lcom/alipay/android/setting/request/IRequest;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v0, "method"

    const-string/jumbo v3, "set"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "type"

    const-string/jumbo v3, "quickpay"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string/jumbo v0, "action"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "client_ip"

    const-string/jumbo v2, ""

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "external_info"

    iget-object v2, p2, Lcom/alipay/android/setting/request/RequestContainer;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-instance v2, Lcom/alipay/android/setting/request/RequestEnvelope;

    iget-object v0, p2, Lcom/alipay/android/setting/request/RequestContainer;->c:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lcom/alipay/android/setting/request/RequestEnvelope;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/setting/operator/SetMiniCashierState;->a:Lcom/alipay/android/setting/request/IRequest;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/alipay/android/setting/request/RequestContainer;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/alipay/android/app/data/InteractionData;

    invoke-direct {v0}, Lcom/alipay/android/app/data/InteractionData;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user_id="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/alipay/android/setting/request/RequestContainer;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/apache/http/Header;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Msp-Param"

    invoke-direct {v5, v6, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/data/InteractionData;->a([Lorg/apache/http/Header;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/setting/operator/SetMiniCashierState;->a:Lcom/alipay/android/setting/request/IRequest;

    invoke-virtual {v2}, Lcom/alipay/android/setting/request/RequestEnvelope;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/android/setting/request/IRequest;->a(Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
