.class public Lcom/alipay/android/app/net/MspClient;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/app/net/MspClient;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/net/URL;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mUrl : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private c()Landroid/net/NetworkInfo;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/net/MspClient;->a:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;
    .locals 7

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/alipay/android/app/net/MspClient;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Lcom/alipay/android/app/sys/NetConnectionType;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/app/sys/NetConnectionType;->p:Lcom/alipay/android/app/sys/NetConnectionType;

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/net/MspHttpClient;->a()Lcom/alipay/android/app/net/MspHttpClient;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Lcom/alipay/android/app/net/MspHttpClient;->d()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v1, v5, :cond_2

    invoke-direct {p0}, Lcom/alipay/android/app/net/MspClient;->b()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "https"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    const-string/jumbo v1, "https.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "https.proxyPort"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    :goto_0
    if-eqz v1, :cond_1

    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestUrl : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->i()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestData : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->g()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v1, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Lcom/alipay/android/app/data/InteractionData;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicHeader;

    invoke-interface {v2, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_2

    :catch_0
    move-exception v1

    throw v1

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/app/net/MspClient;->c()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-eqz v5, :cond_c

    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, v5, v6}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    :catch_1
    move-exception v1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/alipay/android/app/net/MspHttpClient;->c()V

    :cond_3
    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v2

    const-string/jumbo v3, "connction time out"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :cond_4
    :try_start_2
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    iget-object v1, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/alipay/android/app/data/InteractionData;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/alipay/android/app/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/alipay/android/app/data/InteractionData;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v1, "application/octet-stream;binary/octet-stream"

    :cond_6
    const-string/jumbo v3, "utf-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v1}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    const-string/jumbo v1, "Accept-Charset"

    const-string/jumbo v3, "UTF-8"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Accept-Encoding"

    const-string/jumbo v3, "gzip"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Connection"

    const-string/jumbo v3, "Keep-Alive"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Keep-Alive"

    const-string/jumbo v3, "timeout=180, max=100"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v2

    const-string/jumbo v3, "connect reset"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :cond_7
    :try_start_3
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->d()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "OS"

    const-string/jumbo v3, "Android"

    invoke-interface {v2, v1, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v4, v2}, Lcom/alipay/android/app/net/MspHttpClient;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    const-string/jumbo v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    if-lez v3, :cond_9

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_9

    const-string/jumbo v2, "X-Hostname"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    :cond_9
    const-string/jumbo v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_a

    array-length v3, v2

    if-lez v3, :cond_a

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    const-string/jumbo v2, "X-ExecuteTime"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V
    :try_end_3
    .catch Lcom/alipay/android/app/exception/NetErrorException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_a
    return-object v1

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v2

    const-string/jumbo v3, "socket time out"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :catch_4
    move-exception v1

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v2

    const-string/jumbo v3, "connction net error"

    invoke-virtual {v2, v1, v3}, Lcom/alipay/android/app/monitor/MonitorThread;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    new-instance v1, Lcom/alipay/android/app/exception/NetErrorException;

    invoke-direct {v1}, Lcom/alipay/android/app/exception/NetErrorException;-><init>()V

    throw v1

    :cond_b
    move-object v1, v3

    goto/16 :goto_3

    :cond_c
    move-object v1, v3

    goto/16 :goto_0

    :cond_d
    move-object v1, v3

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/net/MspClient;->b:Ljava/lang/String;

    return-void
.end method

.method public final b(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/net/MspClient;->a(Ljava/lang/String;Lcom/alipay/android/app/data/InteractionData;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
