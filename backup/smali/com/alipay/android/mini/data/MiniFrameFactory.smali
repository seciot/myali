.class public Lcom/alipay/android/mini/data/MiniFrameFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/lib/plusin/protocol/IFrameFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
    .locals 1

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/lib/plusin/protocol/FrameData;)V
    .locals 6

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "form"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->h()Lcom/alipay/android/app/net/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Request;->e()Lcom/alipay/android/app/net/Envelope;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->a()Lcom/alipay/android/app/net/Envelope;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->d()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Envelope;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Envelope;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Envelope;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Envelope;->b()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/alipay/android/app/net/Envelope;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v0, "session"

    const-string/jumbo v1, "reflected_data"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "session = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ""

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/net/Response;->a(Lorg/json/JSONObject;)V

    :cond_5
    :goto_0
    const-string/jumbo v0, "end_code"

    const-string/jumbo v1, "0"

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->b(Ljava/lang/String;)V

    const-string/jumbo v0, "user_id"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->e(Ljava/lang/String;)V

    const-string/jumbo v0, "result"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "result"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "UTF-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->c(Ljava/lang/String;)V

    const-string/jumbo v0, "memo"

    const-string/jumbo v1, ""

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/net/Response;->d(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "tid"

    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->g()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/net/Response;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "can not put reflected values"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final synthetic b(Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/ui/WindowData;
    .locals 7

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->h()Lcom/alipay/android/app/net/Request;

    move-result-object v2

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->i()Lcom/alipay/android/app/net/Response;

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v5, "form"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v0, Lcom/alipay/android/mini/data/MiniWindowFrame;

    invoke-direct {v0, v2, v3}, Lcom/alipay/android/mini/data/MiniWindowFrame;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    invoke-virtual {p1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->k()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/data/MiniWindowFrame;->a(Lorg/json/JSONObject;)V

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "status"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/mini/data/MiniStatus;->a(Ljava/lang/String;)Lcom/alipay/android/mini/data/MiniStatus;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/mini/data/a;->a:[I

    invoke-virtual {v5}, Lcom/alipay/android/mini/data/MiniStatus;->ordinal()I

    move-result v5

    aget v5, v6, v5

    packed-switch v5, :pswitch_data_0

    const-string/jumbo v1, "msg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/alipay/android/mini/data/MiniWindowFrame;

    invoke-direct {v0, v2, v3}, Lcom/alipay/android/mini/data/MiniWindowFrame;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    invoke-virtual {v0, v4}, Lcom/alipay/android/mini/data/MiniWindowFrame;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->h()V

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
