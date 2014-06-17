.class public Lcom/aps/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/aps/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/aps/j;->a:Lcom/aps/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/net/NetworkInfo;)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/aps/j;
    .locals 2

    const-class v1, Lcom/aps/j;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/aps/j;->a:Lcom/aps/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aps/j;

    invoke-direct {v0}, Lcom/aps/j;-><init>()V

    sput-object v0, Lcom/aps/j;->a:Lcom/aps/j;

    :cond_0
    sget-object v0, Lcom/aps/j;->a:Lcom/aps/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/aps/f;->l:Landroid/util/SparseArray;

    const-string/jumbo v2, "UNKNOWN"

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    .locals 12

    const/4 v8, -0x1

    const/16 v7, 0x50

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    new-instance v11, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v11}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-eqz v1, :cond_11

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "apn"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "nm|found apn:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/aps/n;->a([Ljava/lang/Object;)V

    :cond_0
    if-eqz v0, :cond_4

    const-string/jumbo v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v2

    if-nez v2, :cond_12

    move v2, v9

    :goto_0
    if-nez v2, :cond_1

    :try_start_2
    const-string/jumbo v0, "10.0.0.200"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    move-object v6, v0

    move v0, v7

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    if-eq v1, v8, :cond_c

    move v0, v9

    :goto_3
    if-eqz v0, :cond_3

    const-string/jumbo v0, "http"

    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-direct {v2, v6, v1, v0}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v0, "http.route.default-proxy"

    invoke-interface {v11, v0, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_3
    const/16 v0, 0x7530

    invoke-static {v11, v0}, Lcom/aps/n;->a(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v11, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v1

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v3, "http"

    invoke-direct {v2, v3, v1, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v1, Lorg/apache/http/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v11, v0}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v0

    :cond_4
    if-eqz v0, :cond_11

    :try_start_3
    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-nez v2, :cond_10

    move v2, v9

    :goto_4
    if-nez v2, :cond_5

    :try_start_4
    const-string/jumbo v0, "10.0.0.172"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_5
    move-object v6, v0

    move v0, v7

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v6

    :goto_5
    :try_start_5
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/aps/j;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ctwap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    move v2, v9

    :goto_6
    if-nez v2, :cond_6

    const-string/jumbo v0, "10.0.0.200"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_6
    move-object v6, v0

    move v0, v7

    :goto_7
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    move v1, v0

    goto/16 :goto_2

    :cond_8
    :try_start_6
    const-string/jumbo v3, "wap"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v8, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "null"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v2, v9

    :goto_8
    if-nez v2, :cond_9

    const-string/jumbo v0, "10.0.0.200"

    :cond_9
    move-object v6, v0

    move v0, v7

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v6

    :goto_9
    invoke-static {v0}, Lcom/aps/n;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    move v1, v8

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_a
    if-eqz v1, :cond_b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    move v0, v10

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v2

    move-object v6, v0

    move-object v0, v2

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v6, v0

    goto :goto_5

    :cond_d
    move v2, v10

    move-object v0, v6

    goto :goto_8

    :cond_e
    move v0, v8

    goto :goto_7

    :cond_f
    move v2, v10

    move-object v0, v6

    goto :goto_6

    :cond_10
    move v2, v10

    move-object v0, v6

    goto/16 :goto_4

    :cond_11
    move v0, v8

    goto/16 :goto_1

    :cond_12
    move v2, v10

    move-object v0, v6

    goto/16 :goto_0

    :cond_13
    move v1, v8

    goto/16 :goto_2
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Z
    .locals 2

    const-string/jumbo v0, "Content-Encoding"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 8

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v7

    aput-object v2, v0, v1

    aput-object v2, v0, v3

    aput-object v2, v0, v4

    const/4 v1, 0x4

    aput-object v2, v0, v1

    if-nez p0, :cond_1

    const-string/jumbo v1, "false"

    aput-object v1, v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    const-string/jumbo v1, "key"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "X-INFO"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "X-BIZ"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "User-Agent"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x0

    const-string/jumbo v6, "true"

    aput-object v6, v0, v5

    const/4 v5, 0x1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v4, v0, v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    aget-object v1, v0, v7

    if-eqz v1, :cond_3

    aget-object v1, v0, v7

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const-string/jumbo v1, "false"

    aput-object v1, v0, v7

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v0, "android.net.Proxy"

    const-string/jumbo v2, "getDefaultHost"

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v0, v2, v3, v4}, Lcom/aps/l;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 11

    const/4 v10, -0x1

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v1

    if-nez v1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/aps/n;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/aps/j;->a(Landroid/net/NetworkInfo;)I

    move-result v1

    if-eq v1, v10, :cond_0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {p1, v2}, Lcom/aps/j;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_35
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12

    move-result-object v7

    :try_start_3
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_36
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_29
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1d

    :try_start_4
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v3, "Content-Type"

    const-string/jumbo v4, "application/x-www-form-urlencoded"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "User-Agent"

    sget-object v4, Lcom/amap/api/location/core/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Accept-Encoding"

    const-string/jumbo v4, "gzip"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "Connection"

    const-string/jumbo v4, "Keep-Alive"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "X-INFO"

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/amap/api/location/core/b;->a(Landroid/content/Context;)Lcom/amap/api/location/core/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amap/api/location/core/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "ia"

    const-string/jumbo v4, "1"

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "key"

    sget-object v4, Lcom/amap/api/location/core/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v7, v6}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_2c

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_37
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_30
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_2a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1e

    move-result-object v5

    :try_start_5
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v2, ""

    const-string/jumbo v9, "charset="

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v10, :cond_2

    add-int/lit8 v2, v9, 0x8

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v2, "UTF-8"

    :cond_3
    invoke-static {v3}, Lcom/aps/j;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v3

    if-eqz v3, :cond_2b

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_38
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_31
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1f

    :goto_1
    if-eqz v4, :cond_a

    :try_start_6
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_26
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_20

    :goto_2
    :try_start_7
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v9, 0x800

    invoke-direct {v2, v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_39
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_33
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_2d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_21

    :goto_3
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_2e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_22

    goto :goto_3

    :catch_0
    move-exception v8

    :goto_4
    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_5
    if-eqz v4, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :cond_6
    :goto_5
    if-eqz v5, :cond_7

    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :cond_9
    :goto_8
    :try_start_e
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto/16 :goto_0

    :cond_a
    :try_start_f
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_32
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_2c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_26
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_20

    goto :goto_2

    :catch_1
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto :goto_4

    :cond_b
    :try_start_10
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_34
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_2e
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_22

    :goto_9
    if-eqz v6, :cond_c

    :try_start_11
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_c
    if-eqz v7, :cond_d

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :cond_d
    if-eqz v4, :cond_e

    :try_start_12
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1a

    :cond_e
    :goto_a
    if-eqz v5, :cond_f

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1b

    :cond_f
    :goto_b
    if-eqz v3, :cond_10

    :try_start_14
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1c

    :cond_10
    :goto_c
    if-eqz v2, :cond_9

    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_8

    :catch_2
    move-exception v2

    goto :goto_8

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v0, v1

    :goto_d
    if-eqz v6, :cond_11

    :try_start_16
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_11
    if-eqz v7, :cond_12

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :cond_12
    if-eqz v4, :cond_13

    :try_start_17
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_16

    :cond_13
    :goto_e
    if-eqz v5, :cond_14

    :try_start_18
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_17

    :cond_14
    :goto_f
    if-eqz v3, :cond_15

    :try_start_19
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    :cond_15
    :goto_10
    if-eqz v2, :cond_16

    :try_start_1a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_19

    :cond_16
    :goto_11
    :try_start_1b
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_3
    move-exception v4

    goto/16 :goto_5

    :catch_4
    move-exception v4

    goto :goto_6

    :catch_5
    move-exception v3

    goto :goto_7

    :catch_6
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    :goto_12
    if-eqz v6, :cond_17

    :try_start_1c
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_17
    if-eqz v7, :cond_18

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :cond_18
    if-eqz v4, :cond_19

    :try_start_1d
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7

    :cond_19
    :goto_13
    if-eqz v5, :cond_1a

    :try_start_1e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_8

    :cond_1a
    :goto_14
    if-eqz v3, :cond_1b

    :try_start_1f
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_9

    :cond_1b
    :goto_15
    if-eqz v2, :cond_9

    :try_start_20
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    goto/16 :goto_8

    :catch_7
    move-exception v4

    goto :goto_13

    :catch_8
    move-exception v4

    goto :goto_14

    :catch_9
    move-exception v3

    goto :goto_15

    :catch_a
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    :goto_16
    if-eqz v6, :cond_1c

    :try_start_21
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_1c
    if-eqz v7, :cond_1d

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    :cond_1d
    if-eqz v4, :cond_1e

    :try_start_22
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b

    :cond_1e
    :goto_17
    if-eqz v5, :cond_1f

    :try_start_23
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_c

    :cond_1f
    :goto_18
    if-eqz v3, :cond_20

    :try_start_24
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_d

    :cond_20
    :goto_19
    if-eqz v2, :cond_9

    :try_start_25
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_2

    goto/16 :goto_8

    :catch_b
    move-exception v4

    goto :goto_17

    :catch_c
    move-exception v4

    goto :goto_18

    :catch_d
    move-exception v3

    goto :goto_19

    :catch_e
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    :goto_1a
    if-eqz v6, :cond_21

    :try_start_26
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_21
    if-eqz v7, :cond_22

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    :cond_22
    if-eqz v4, :cond_23

    :try_start_27
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_f

    :cond_23
    :goto_1b
    if-eqz v5, :cond_24

    :try_start_28
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_10

    :cond_24
    :goto_1c
    if-eqz v3, :cond_25

    :try_start_29
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_11

    :cond_25
    :goto_1d
    if-eqz v2, :cond_9

    :try_start_2a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2

    goto/16 :goto_8

    :catch_f
    move-exception v4

    goto :goto_1b

    :catch_10
    move-exception v4

    goto :goto_1c

    :catch_11
    move-exception v3

    goto :goto_1d

    :catch_12
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    :goto_1e
    if-eqz v6, :cond_26

    :try_start_2b
    invoke-virtual {v6}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_26
    if-eqz v7, :cond_27

    invoke-interface {v7}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    :cond_27
    if-eqz v4, :cond_28

    :try_start_2c
    invoke-virtual {v4}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13

    :cond_28
    :goto_1f
    if-eqz v5, :cond_29

    :try_start_2d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_14

    :cond_29
    :goto_20
    if-eqz v3, :cond_2a

    :try_start_2e
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_15

    :cond_2a
    :goto_21
    if-eqz v2, :cond_9

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_2f} :catch_2

    goto/16 :goto_8

    :catch_13
    move-exception v4

    goto :goto_1f

    :catch_14
    move-exception v4

    goto :goto_20

    :catch_15
    move-exception v3

    goto :goto_21

    :catch_16
    move-exception v1

    goto/16 :goto_e

    :catch_17
    move-exception v1

    goto/16 :goto_f

    :catch_18
    move-exception v1

    goto/16 :goto_10

    :catch_19
    move-exception v1

    goto/16 :goto_11

    :catch_1a
    move-exception v4

    goto/16 :goto_a

    :catch_1b
    move-exception v4

    goto/16 :goto_b

    :catch_1c
    move-exception v3

    goto/16 :goto_c

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_3
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_5
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_6
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_d

    :catchall_7
    move-exception v0

    goto/16 :goto_d

    :catch_1d
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto :goto_1e

    :catch_1e
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto :goto_1e

    :catch_1f
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto :goto_1e

    :catch_20
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto :goto_1e

    :catch_21
    move-exception v2

    move-object v2, v0

    goto :goto_1e

    :catch_22
    move-exception v8

    goto :goto_1e

    :catch_23
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_1a

    :catch_24
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_1a

    :catch_25
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_1a

    :catch_26
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_1a

    :catch_27
    move-exception v2

    move-object v2, v0

    goto/16 :goto_1a

    :catch_28
    move-exception v8

    goto/16 :goto_1a

    :catch_29
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_16

    :catch_2a
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_16

    :catch_2b
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_16

    :catch_2c
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_16

    :catch_2d
    move-exception v2

    move-object v2, v0

    goto/16 :goto_16

    :catch_2e
    move-exception v8

    goto/16 :goto_16

    :catch_2f
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_12

    :catch_30
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_12

    :catch_31
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_12

    :catch_32
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_12

    :catch_33
    move-exception v2

    move-object v2, v0

    goto/16 :goto_12

    :catch_34
    move-exception v8

    goto/16 :goto_12

    :catch_35
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    goto/16 :goto_4

    :catch_36
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    goto/16 :goto_4

    :catch_37
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_4

    :catch_38
    move-exception v2

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_4

    :catch_39
    move-exception v2

    move-object v2, v0

    goto/16 :goto_4

    :cond_2b
    move-object v4, v0

    goto/16 :goto_1

    :cond_2c
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    goto/16 :goto_9
.end method

.method public declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 21

    monitor-enter p0

    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/aps/n;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/aps/j;->a(Landroid/net/NetworkInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :try_start_1
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v15, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, p1

    :goto_1
    const/4 v12, 0x2

    if-ge v15, v12, :cond_16

    if-nez v2, :cond_16

    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/aps/j;->a(Landroid/content/Context;Landroid/net/NetworkInfo;)Lorg/apache/http/client/HttpClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_24
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1e
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_18
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_12

    move-result-object v12

    :try_start_3
    invoke-static/range {p3 .. p3}, Lcom/aps/j;->a(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object v17

    const/4 v10, 0x0

    aget-object v10, v17, v10

    const-string/jumbo v13, "true"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    move v14, v10

    :goto_2
    if-eqz v14, :cond_b

    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string/jumbo v13, "http://apilocate.amap.com/mobile"

    invoke-direct {v10, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_13

    :goto_3
    if-eqz v14, :cond_c

    :try_start_4
    const-string/jumbo v13, "UTF-8"

    :goto_4
    if-eqz v14, :cond_1

    const-string/jumbo v9, "key=%s&loc=%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aget-object v20, v17, v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    move-object/from16 v0, v18

    invoke-static {v9, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :cond_1
    invoke-virtual {v11, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-static {v9}, Lcom/aps/n;->a([B)[B

    move-result-object v9

    new-instance v18, Lorg/apache/http/entity/ByteArrayEntity;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    const-string/jumbo v9, "application/octet-stream"

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    const-string/jumbo v9, "Accept-Encoding"

    const-string/jumbo v19, "gzip"

    move-object/from16 v0, v19

    invoke-virtual {v10, v9, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "gzipped"

    const-string/jumbo v19, "1"

    move-object/from16 v0, v19

    invoke-virtual {v10, v9, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v14, :cond_2

    const-string/jumbo v9, "X-INFO"

    const/4 v14, 0x2

    aget-object v14, v17, v14

    invoke-virtual {v10, v9, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "X-BIZ"

    const/4 v14, 0x3

    aget-object v14, v17, v14

    invoke-virtual {v10, v9, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x4

    aget-object v9, v17, v9

    if-eqz v9, :cond_2

    const/4 v9, 0x4

    aget-object v9, v17, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    const-string/jumbo v9, "User-Agent"

    const/4 v14, 0x4

    aget-object v14, v17, v14

    invoke-virtual {v10, v9, v14}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v14

    invoke-virtual {v4, v9, v14}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v12, v10}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v17, 0xc8

    move/from16 v0, v17

    if-ne v9, v0, :cond_2d

    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_25
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_1a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_14

    move-result-object v9

    :try_start_5
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v8, ""

    const-string/jumbo v18, "charset="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    add-int/lit8 v8, v18, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    :cond_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2c

    :goto_5
    invoke-static {v14}, Lcom/aps/j;->a(Lorg/apache/http/HttpResponse;)Z

    move-result v8

    if-eqz v8, :cond_2b

    new-instance v8, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v8, v9}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_26
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_21
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_15

    :goto_6
    if-eqz v8, :cond_d

    :try_start_6
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v8, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_16

    :goto_7
    :try_start_7
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v13, 0x800

    invoke-direct {v6, v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_27
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_23
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1d
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_7 .. :try_end_7} :catch_17

    :goto_8
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_8

    :catch_0
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    :goto_9
    if-eqz v9, :cond_4

    :try_start_9
    invoke-virtual {v9}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    :cond_4
    if-eqz v10, :cond_5

    invoke-interface {v10}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v10, 0x0

    :cond_5
    if-eqz v7, :cond_6

    :try_start_a
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    :goto_a
    const/4 v7, 0x0

    :cond_6
    if-eqz v8, :cond_7

    :try_start_b
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_b
    const/4 v8, 0x0

    :cond_7
    if-eqz v6, :cond_8

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_c
    const/4 v5, 0x0

    :cond_9
    add-int/lit8 v12, v15, 0x1

    move v15, v12

    goto/16 :goto_1

    :cond_a
    const/4 v10, 0x0

    move v14, v10

    goto/16 :goto_2

    :cond_b
    :try_start_d
    new-instance v10, Lorg/apache/http/client/methods/HttpPost;

    const-string/jumbo v13, "http://aps.amap.com/APS/r"

    invoke-direct {v10, v13}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_1f
    .catch Ljava/net/SocketTimeoutException; {:try_start_d .. :try_end_d} :catch_19
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_d .. :try_end_d} :catch_13

    goto/16 :goto_3

    :catch_1
    move-exception v10

    move-object v10, v12

    goto :goto_9

    :cond_c
    :try_start_e
    const-string/jumbo v13, "GBK"
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4
    .catch Ljava/net/UnknownHostException; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/net/SocketException; {:try_start_e .. :try_end_e} :catch_20
    .catch Ljava/net/SocketTimeoutException; {:try_start_e .. :try_end_e} :catch_1a
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_4

    :cond_d
    :try_start_f
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v9, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_22
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_1c
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_f .. :try_end_f} :catch_16

    goto :goto_7

    :catch_2
    move-exception v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    goto :goto_9

    :cond_e
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v4, v5, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_10 .. :try_end_10} :catch_b

    const/4 v4, 0x0

    const/4 v2, 0x1

    move-object v5, v6

    move-object v13, v9

    move-object v6, v7

    :goto_d
    if-eqz v10, :cond_24

    :try_start_11
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    :goto_e
    if-eqz v12, :cond_23

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v10, 0x0

    :goto_f
    if-eqz v8, :cond_22

    :try_start_12
    invoke-virtual {v8}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    :goto_10
    const/4 v7, 0x0

    :goto_11
    if-eqz v13, :cond_21

    :try_start_13
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_11

    :goto_12
    const/4 v8, 0x0

    :goto_13
    if-eqz v6, :cond_f

    :try_start_14
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :cond_f
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catchall_1
    move-exception v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_14
    if-eqz v10, :cond_10

    :try_start_15
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_10
    if-eqz v12, :cond_11

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    :cond_11
    if-eqz v7, :cond_12

    :try_start_16
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    :cond_12
    :goto_15
    if-eqz v8, :cond_13

    :try_start_17
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_f

    :cond_13
    :goto_16
    if-eqz v6, :cond_14

    :try_start_18
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    :cond_15
    throw v2

    :cond_16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_17
    move-object v2, v3

    goto/16 :goto_0

    :catch_3
    move-exception v7

    goto/16 :goto_a

    :catch_4
    move-exception v8

    goto/16 :goto_b

    :catch_5
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_17
    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    :goto_18
    if-eqz v12, :cond_29

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v10, 0x0

    :goto_19
    if-eqz v7, :cond_18

    :try_start_19
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    :goto_1a
    const/4 v7, 0x0

    :cond_18
    if-eqz v8, :cond_19

    :try_start_1a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    :goto_1b
    const/4 v8, 0x0

    :cond_19
    if-eqz v6, :cond_1a

    :try_start_1b
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :cond_1a
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_c

    :catch_6
    move-exception v7

    goto :goto_1a

    :catch_7
    move-exception v8

    goto :goto_1b

    :catch_8
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_1c
    if-eqz v10, :cond_28

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    :goto_1d
    if-eqz v12, :cond_27

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v10, 0x0

    :goto_1e
    if-eqz v7, :cond_1b

    :try_start_1c
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    :goto_1f
    const/4 v7, 0x0

    :cond_1b
    if-eqz v8, :cond_1c

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_a

    :goto_20
    const/4 v8, 0x0

    :cond_1c
    if-eqz v6, :cond_1d

    :try_start_1e
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :cond_1d
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto/16 :goto_c

    :catch_9
    move-exception v7

    goto :goto_1f

    :catch_a
    move-exception v8

    goto :goto_20

    :catch_b
    move-exception v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    :goto_21
    if-eqz v10, :cond_26

    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    const/4 v9, 0x0

    :goto_22
    if-eqz v12, :cond_25

    invoke-interface {v12}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    const/4 v10, 0x0

    :goto_23
    if-eqz v7, :cond_1e

    :try_start_1f
    invoke-virtual {v7}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    :goto_24
    const/4 v7, 0x0

    :cond_1e
    if-eqz v8, :cond_1f

    :try_start_20
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    :goto_25
    const/4 v8, 0x0

    :cond_1f
    if-eqz v6, :cond_20

    :try_start_21
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    const/4 v6, 0x0

    :cond_20
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    goto/16 :goto_c

    :catch_c
    move-exception v7

    goto :goto_24

    :catch_d
    move-exception v8

    goto :goto_25

    :catch_e
    move-exception v3

    goto/16 :goto_15

    :catch_f
    move-exception v3

    goto/16 :goto_16

    :catch_10
    move-exception v7

    goto/16 :goto_10

    :catch_11
    move-exception v8

    goto/16 :goto_12

    :catchall_2
    move-exception v2

    move-object v12, v10

    move-object v10, v9

    goto/16 :goto_14

    :catchall_3
    move-exception v2

    move-object v10, v9

    goto/16 :goto_14

    :catchall_4
    move-exception v2

    goto/16 :goto_14

    :catchall_5
    move-exception v2

    move-object v8, v9

    goto/16 :goto_14

    :catchall_6
    move-exception v2

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_14

    :catchall_7
    move-exception v2

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_14

    :catch_12
    move-exception v12

    move-object v12, v10

    move-object v10, v9

    goto :goto_21

    :catch_13
    move-exception v10

    move-object v10, v9

    goto :goto_21

    :catch_14
    move-exception v9

    goto :goto_21

    :catch_15
    move-exception v8

    move-object v8, v9

    goto :goto_21

    :catch_16
    move-exception v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_21

    :catch_17
    move-exception v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_21

    :catch_18
    move-exception v12

    move-object v12, v10

    move-object v10, v9

    goto/16 :goto_1c

    :catch_19
    move-exception v10

    move-object v10, v9

    goto/16 :goto_1c

    :catch_1a
    move-exception v9

    goto/16 :goto_1c

    :catch_1b
    move-exception v8

    move-object v8, v9

    goto/16 :goto_1c

    :catch_1c
    move-exception v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_1c

    :catch_1d
    move-exception v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_1c

    :catch_1e
    move-exception v12

    move-object v12, v10

    move-object v10, v9

    goto/16 :goto_17

    :catch_1f
    move-exception v10

    move-object v10, v9

    goto/16 :goto_17

    :catch_20
    move-exception v9

    goto/16 :goto_17

    :catch_21
    move-exception v8

    move-object v8, v9

    goto/16 :goto_17

    :catch_22
    move-exception v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_17

    :catch_23
    move-exception v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto/16 :goto_17

    :catch_24
    move-exception v12

    goto/16 :goto_9

    :catch_25
    move-exception v9

    move-object v9, v10

    move-object v10, v12

    goto/16 :goto_9

    :catch_26
    move-exception v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    goto/16 :goto_9

    :catch_27
    move-exception v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    goto/16 :goto_9

    :cond_21
    move-object v8, v13

    goto/16 :goto_13

    :cond_22
    move-object v7, v8

    goto/16 :goto_11

    :cond_23
    move-object v10, v12

    goto/16 :goto_f

    :cond_24
    move-object v9, v10

    goto/16 :goto_e

    :cond_25
    move-object v10, v12

    goto/16 :goto_23

    :cond_26
    move-object v9, v10

    goto/16 :goto_22

    :cond_27
    move-object v10, v12

    goto/16 :goto_1e

    :cond_28
    move-object v9, v10

    goto/16 :goto_1d

    :cond_29
    move-object v10, v12

    goto/16 :goto_19

    :cond_2a
    move-object v9, v10

    goto/16 :goto_18

    :cond_2b
    move-object v8, v7

    goto/16 :goto_6

    :cond_2c
    move-object v13, v8

    goto/16 :goto_5

    :cond_2d
    move-object v13, v8

    move-object v8, v7

    goto/16 :goto_d
.end method
