.class public Lcom/alipay/android/app/util/FrameUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/alipay/android/app/data/InteractionData;Ljava/lang/String;Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;
    .locals 12

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-static {v1, p2}, Lcom/alipay/android/app/util/JsonUtils;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "tid"

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string/jumbo v4, "user_agent"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "has_alipay"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/android/app/sys/DeviceInfo;->c(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v0, "external_info"

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "utdid"

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "protocol"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    :goto_2
    if-nez v0, :cond_0

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->s()Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    move-result-object v0

    :cond_0
    sget-object v2, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    if-ne v0, v2, :cond_7

    invoke-static {v3, p3}, Lcom/alipay/android/app/util/FrameUtils;->a(Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;

    move-result-object v0

    move-object v7, v0

    :goto_3
    if-eqz v7, :cond_12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v0, v8

    if-eqz v0, :cond_12

    array-length v9, v8

    move v5, v6

    move-object v0, v1

    move-object v4, v1

    move-object v3, v1

    move-object v2, v1

    :goto_4
    if-ge v5, v9, :cond_c

    aget-object v10, v8, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v2, "biz_type"

    invoke-virtual {v10, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object v2, v1

    :cond_1
    :goto_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v3, "biz_no"

    invoke-virtual {v10, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    move-object v3, v1

    :cond_2
    :goto_6
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "trade_no"

    invoke-static {v10, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_3
    move-object v4, v1

    :cond_4
    :goto_7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string/jumbo v0, "app_userid"

    invoke-virtual {v10, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    move-object v0, v1

    :cond_5
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->d()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    if-eqz v3, :cond_13

    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v4, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lorg/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/lib/plusin/protocol/ProtocolType;)V

    :goto_9
    move-object v7, v0

    goto/16 :goto_3

    :cond_8
    invoke-static {v10}, Lcom/alipay/android/app/util/FrameUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_9
    invoke-static {v10}, Lcom/alipay/android/app/util/FrameUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_a
    invoke-static {v10}, Lcom/alipay/android/app/util/FrameUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    invoke-static {v10}, Lcom/alipay/android/app/util/FrameUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "biz_type="

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "biz_no="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "trade_no="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "app_userid="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_11
    const/4 v1, 0x1

    new-array v1, v1, [Lorg/apache/http/Header;

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "Msp-Param"

    invoke-direct {v2, v3, v0}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/data/InteractionData;->a([Lorg/apache/http/Header;)V

    invoke-virtual {v7, p0}, Lcom/alipay/android/app/net/Request;->a(Lcom/alipay/android/app/data/InteractionData;)V

    :cond_12
    return-object v7

    :cond_13
    move-object v0, v1

    goto/16 :goto_9

    :cond_14
    move-object v0, v1

    goto/16 :goto_2
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/alipay/android/app/net/Request;
    .locals 4

    new-instance v0, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v0}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/IAppConfig;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.mobilecashier"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "gen.tid"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    const-string/jumbo v1, "1.0.0"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/app/net/Request;

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lorg/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/lib/plusin/protocol/ProtocolType;)V

    return-object v1
.end method

.method private static a(Lorg/json/JSONObject;Z)Lcom/alipay/android/app/net/Request;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    new-instance v2, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v2}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.mobilecashier"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "/cashier/main"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    const-string/jumbo v0, "4.0.0"

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    const-string/jumbo v0, "new_client_key"

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/alipay/android/app/net/Request;

    sget-object v3, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    invoke-direct {v0, v2, p0, v1, v3}, Lcom/alipay/android/app/net/Request;-><init>(Lcom/alipay/android/app/net/Envelope;Lorg/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/lib/plusin/protocol/ProtocolType;)V

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/net/Request;->a(Z)V

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "="

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    array-length v2, v1

    if-le v2, v3, :cond_0

    aget-object v0, v1, v3

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/alipay/android/app/data/InteractionData;Lorg/apache/http/HttpResponse;)V
    .locals 2

    const-string/jumbo v0, "Msp-Param"

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    if-eqz p0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/data/InteractionData;->a([Lorg/apache/http/Header;)V

    :cond_0
    return-void
.end method

.method public static a(Z)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.android.app.after.remove.current.payTask"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "isClear"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static a([B)[B
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x1000

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "UnsupportedEncodingException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "IOException"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;)V
    .locals 4

    const-string/jumbo v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tid"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "client_key"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/tid/TidInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
