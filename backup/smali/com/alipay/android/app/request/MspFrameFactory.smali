.class public Lcom/alipay/android/app/request/MspFrameFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\""

    const-string/jumbo v4, "\\\""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "^@"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "@^"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static c(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/app/data/WindowFrameData;
    .locals 11

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->h()Lcom/alipay/android/app/net/Request;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v8

    const-string/jumbo v0, "reflected_data"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "session = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "session"

    const-string/jumbo v5, ""

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    invoke-virtual {p0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/app/net/Response;->a(Lorg/json/JSONObject;)V

    :cond_0
    const-string/jumbo v0, "end_code"

    const-string/jumbo v3, "0"

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "user_id"

    const-string/jumbo v3, ""

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "memo"

    const-string/jumbo v3, ""

    invoke-virtual {v8, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string/jumbo v3, "win"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, "data"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v0, "win_name"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "win_version"

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v0, "dynamic_script"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->b()Lcom/alipay/android/app/empty/WindowTemplateProvider;

    move-result-object v7

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Request;->b()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v9

    invoke-virtual {v7, v0, v3, v4, v9}, Lcom/alipay/android/app/empty/WindowTemplateProvider;->a(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "window template:"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    invoke-static {v0, v5}, Lcom/alipay/android/app/request/MspFrameFactory;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lcom/alipay/android/app/data/WindowFrameData;

    invoke-direct/range {v0 .. v6}, Lcom/alipay/android/app/data/WindowFrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v7}, Lcom/alipay/android/app/data/WindowFrameData;->a(Lorg/json/JSONObject;)V

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    move-object v1, v8

    :goto_1
    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v2, "server data error"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    invoke-virtual {v0, v10}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    throw v0

    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, "on creat windowFrameData"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    invoke-virtual {v0, v10}, Lcom/alipay/android/app/exception/NetErrorException;->a(I)V

    throw v0

    :catch_2
    move-exception v0

    move-object v1, v7

    goto :goto_1

    :cond_2
    move-object v7, v8

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 2

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "dismiss_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/ui/WindowData;
    .locals 1

    invoke-static {p1}, Lcom/alipay/android/app/request/MspFrameFactory;->c(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/app/data/WindowFrameData;

    move-result-object v0

    return-object v0
.end method
