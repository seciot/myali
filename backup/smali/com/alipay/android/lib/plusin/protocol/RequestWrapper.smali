.class public Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:Lcom/alipay/android/app/data/InteractionData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "/sdcard/mspjson/qudaoxuanzhe.json"

    sput-object v0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/alipay/android/app/data/InteractionData;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    iput-object p1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Lcom/alipay/android/app/data/InteractionData;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1, p2, p3, p4}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-virtual {p5, v2}, Lcom/alipay/android/app/net/Response;->a(I)V

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->c:Lcom/alipay/android/app/data/InteractionData;

    invoke-static {v1, v0}, Lcom/alipay/android/app/util/FrameUtils;->a(Lcom/alipay/android/app/data/InteractionData;Lorg/apache/http/HttpResponse;)V

    invoke-static {v0}, Lcom/alipay/android/lib/plusin/protocol/RequestUtils;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;
    .locals 4

    const/16 v3, 0x3e8

    const/16 v2, 0x1f7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "code"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(I)V

    const-string/jumbo v1, "error_msg"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "params"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/alipay/android/app/net/Response;->j()I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "public_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/alipay/android/app/IAppConfig;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Lcom/alipay/android/app/net/Envelope;

    invoke-direct {v1}, Lcom/alipay/android/app/net/Envelope;-><init>()V

    const-string/jumbo v2, "next_api_name"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->d(Ljava/lang/String;)V

    const-string/jumbo v2, "next_api_version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->e(Ljava/lang/String;)V

    const-string/jumbo v2, "next_namespace"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->c(Ljava/lang/String;)V

    const-string/jumbo v2, "next_request_url"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/net/Envelope;->b(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/net/Response;->a(Lcom/alipay/android/app/net/Envelope;)V

    :goto_1
    return-object v0

    :cond_1
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, "update rsa key"

    const-string/jumbo v3, "rsponse data is no key"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/alipay/android/app/net/Response;->j()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "update rsa key"

    const-string/jumbo v2, "rsponse data is no key"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Lcom/alipay/android/app/net/Response;->a(I)V

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/net/Response;->a(Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;)Lcom/alipay/android/lib/plusin/protocol/FrameData;
    .locals 6

    new-instance v1, Lcom/alipay/android/app/net/Response;

    invoke-direct {v1}, Lcom/alipay/android/app/net/Response;-><init>()V

    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v0, "reflected_data"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->d()Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    move-result-object v0

    if-eqz v3, :cond_0

    const-string/jumbo v0, "minipay"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "true"

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->b:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    :cond_0
    :goto_0
    sget-object v3, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    if-ne v0, v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/net/Response;->a(Z)V

    :cond_1
    const-string/jumbo v3, "gzip"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "form"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v4, "quickpay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "quickpay"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/encrypt/Base64;->a(Ljava/lang/String;)[B

    move-result-object v3

    :try_start_0
    invoke-static {v3}, Lcom/alipay/android/app/util/FrameUtils;->a([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/encrypt/MD5;->a([B)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "md5"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/String;

    const-string/jumbo v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v3, "form"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "responsestring decoded "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->a()V

    new-instance v3, Lcom/alipay/android/lib/plusin/protocol/FrameData;

    invoke-direct {v3, p2, v1}, Lcom/alipay/android/lib/plusin/protocol/FrameData;-><init>(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)V

    invoke-virtual {v3, v2}, Lcom/alipay/android/lib/plusin/protocol/FrameData;->a(Lorg/json/JSONObject;)V

    invoke-static {v0, v3}, Lcom/alipay/android/lib/plusin/protocol/FrameFactoryManager;->a(Lcom/alipay/android/lib/plusin/protocol/ProtocolType;Lcom/alipay/android/lib/plusin/protocol/FrameData;)Lcom/alipay/android/lib/plusin/protocol/FrameData;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lcom/alipay/android/lib/plusin/protocol/ProtocolType;->a:Lcom/alipay/android/lib/plusin/protocol/ProtocolType;

    goto :goto_0

    :cond_4
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "client md5  not equal server md5"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/UnZipException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :catch_0
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "unzip byte array unsupport encoding"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v0, Lcom/alipay/android/app/exception/UnZipException;

    const-string/jumbo v1, "unzip string not jsonObject"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/UnZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v1}, Lcom/alipay/android/app/net/Response;->b()V

    goto :goto_1
.end method

.method public final a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;
    .locals 7

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->g()Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v6}, Lcom/alipay/android/app/net/Request;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->b()Lcom/alipay/android/app/data/InteractionData;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/app/net/Response;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "responseString:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Lcom/alipay/android/app/net/Response;->a(J)V

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->j()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Landroid/content/Context;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->j()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v0

    const-string/jumbo v1, "server cann\'t respone data"

    invoke-virtual {p2}, Lcom/alipay/android/app/net/Request;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/exception/FailOperatingException;

    invoke-virtual {p3}, Lcom/alipay/android/app/net/Response;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/FailOperatingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :catch_0
    move-exception v0

    throw v0

    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->b:I

    const-string/jumbo v1, "res_data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "response data is empty"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :catch_1
    move-exception v0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {v6, v0}, Lcom/alipay/android/app/encrypt/TriDes;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "respData:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_2
    move-exception v0

    throw v0

    :cond_3
    :try_start_3
    invoke-static {v0, p3}, Lcom/alipay/android/lib/plusin/protocol/RequestWrapper;->a(Ljava/lang/String;Lcom/alipay/android/app/net/Response;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "respData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->e()V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/alipay/android/app/exception/FailOperatingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v0}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v0
.end method
