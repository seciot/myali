.class public Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;
.super Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;


# static fields
.field private static final a:Lorg/apache/http/client/HttpRequestRetryHandler;


# instance fields
.field private b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/command/rpc/http/ZHttpRequestRetryHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/command/rpc/http/ZHttpRequestRetryHandler;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/command/rpc/http/processor/RpcProcessor;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->setCallback(Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    return-void
.end method

.method private static a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;
    .locals 6

    new-instance v1, Lcom/alipay/mobile/command/model/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/command/model/HttpUrlHeader;-><init>()V

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/alipay/mobile/command/model/HttpUrlHeader;->setHead(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected static a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b(Lorg/apache/http/HttpResponse;)J

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v1, v2

    :goto_0
    if-ge v1, v7, :cond_1

    aget-object v8, v6, v1

    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v9, -0x1

    if-ne v0, v9, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v9, "Content-Type"

    aput-object v9, v0, v2

    aput-object v8, v0, v10

    :goto_1
    aget-object v8, v0, v2

    aget-object v0, v0, v10

    invoke-virtual {v5, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "="

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "charset"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setContentType(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setCharset(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setCreateTime(J)V

    invoke-virtual {p0, v3, v4}, Lcom/alipay/mobile/command/model/HttpUrlResponse;->setPeriod(J)V

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method private static b(Lorg/apache/http/HttpResponse;)J
    .locals 6

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "Cache-Control"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v2, v3

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v4, v3, v2

    const-string/jumbo v5, "max-age"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    aget-object v2, v3, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    :goto_1
    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_2
    const-string/jumbo v2, "Expires"

    invoke-interface {p0, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 8

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v2, 0x0

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addSocketTime(J)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    array-length v2, v1

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addDataSize(J)V

    new-instance v0, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;

    move-result-object v2

    invoke-direct {v0, v2, p2, p3, v1}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-static {v0, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0x130

    if-eq v1, v2, :cond_0

    :cond_3
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "begin parse response,UNKONW, step6"

    aput-object v3, v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method protected a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 12

    if-nez p4, :cond_0

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Output stream may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const/16 v1, 0x800

    :try_start_0
    new-array v6, v1, [B

    move-wide v1, p2

    :cond_1
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v8}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->isCanceled()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v7, v7

    add-long/2addr v1, v7

    if-eqz p5, :cond_1

    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    long-to-double v8, v1

    add-long v10, v4, p2

    long-to-double v10, v10

    div-double/2addr v8, v10

    move-object/from16 v0, p5

    invoke-virtual {v0, v7, v8, v9}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onProgressUpdate(Lcom/alipay/mobile/command/model/Request;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "read ResponseData Error."

    aput-object v5, v2, v4

    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "HttpWorker Request Error!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->closeStream(Ljava/io/Closeable;)V

    throw v1

    :cond_2
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {v3}, Lcom/alipay/mobile/command/util/CommandUtil;->closeStream(Ljava/io/Closeable;)V

    return-void
.end method

.method protected a(I)Z
    .locals 1

    const/16 v0, 0x130

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final b()Ljava/net/URI;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "url should not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public call()Lcom/alipay/mobile/command/model/Response;
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getHttpClient()Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->getCallback()Lcom/alipay/mobile/command/rpc/http/TransportCallback;

    move-result-object v4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->isNetConnected()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v3, "The network is not available"

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    :catch_0
    move-exception v0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/exception/HttpException;->getMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Rpc process httpException error."

    aput-object v3, v1, v2

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "HttpWorker finish request: "

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    throw v0

    :cond_2
    if-eqz v4, :cond_3

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onPreExecute(Lcom/alipay/mobile/command/model/Request;)V

    :cond_3
    invoke-virtual {v3}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v2

    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v0, v5, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    new-instance v2, Ljava/net/URL;

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    invoke-virtual {v2}, Ljava/net/URL;->getDefaultPort()I

    move-result v0

    :goto_0
    new-instance v5, Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v0, v2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getReqData()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v6, "utf-8"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_6

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b()Ljava/net/URI;

    move-result-object v6

    invoke-direct {v0, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v1, v0

    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/Header;

    invoke-interface {v1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Lorg/apache/http/Header;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Url parser error!"

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :try_start_4
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    move-object v1, v0

    goto :goto_2

    :cond_7
    invoke-static {v1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-static {v1}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->modifyRequestToKeepAlive(Lorg/apache/http/HttpRequest;)V

    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "cookie"

    invoke-interface {v1, v6, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    const-string/jumbo v6, "http.cookie-store"

    invoke-interface {v0, v6, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a:Lorg/apache/http/client/HttpRequestRetryHandler;

    invoke-virtual {v3, v6}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v5, v1, v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    sub-long v5, v8, v6

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addConnectTime(J)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "HttpWorker finish execute request: "

    aput-object v6, v0, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v6}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-interface {v2}, Lorg/apache/http/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "alipay.com"

    :goto_5
    const-string/jumbo v7, "alipay.com"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_b

    const-string/jumbo v2, "alipay.com"

    :cond_8
    :goto_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, "; domain="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_d

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_9

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----SSLHandshakeException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "sslHandshake"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_a
    :try_start_6
    invoke-interface {v0}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_5

    :cond_b
    const-string/jumbo v7, "alipay.net"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_8

    const-string/jumbo v2, "alipay.net"

    goto/16 :goto_6

    :cond_c
    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {p0, v3, v0, v4}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/alipay/mobile/command/util/exception/HttpException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lorg/apache/http/conn/HttpHostConnectException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "HttpWorker finish request: "

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    :goto_7
    return-object v0

    :catch_3
    move-exception v0

    :try_start_7
    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_d

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "-----SSLPeerUnverifiedException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_d
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "sslPeer"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_4
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_e

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----SSLException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "sslEx"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_5
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_f

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----ConnectionPoolTimeoutException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_f
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "ConnectionPoolTimeoutException"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_6
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_10

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----ConnectTimeoutException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "ConnectTimeoutException"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_7
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_11

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----SocketTimeoutException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "SocketTimeoutException"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_8
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_12

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----NoHttpResponseException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "NoHttpResponseException"

    aput-object v2, v0, v1

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_9
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_13

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----HttpHostConnectException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_13
    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_a
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_14

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----UnknownHostException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_14
    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_b
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_15

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "----IOException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v2, v0}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_15
    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_c
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->c:I

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->call()Lcom/alipay/mobile/command/model/Response;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    new-array v1, v12, [Ljava/lang/Object;

    const-string/jumbo v2, "HttpWorker finish request: "

    aput-object v2, v1, v11

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/HttpUrlRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    goto/16 :goto_7

    :cond_16
    :try_start_8
    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0

    :catch_d
    move-exception v0

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    if-eqz v4, :cond_17

    iget-object v1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v2, v3}, Lcom/alipay/mobile/command/rpc/http/TransportCallback;->onFailed(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V

    :cond_17
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->call()Lcom/alipay/mobile/command/model/Response;

    move-result-object v0

    return-object v0
.end method

.method public getRequest()Lcom/alipay/mobile/command/model/HttpUrlRequest;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->b:Lcom/alipay/mobile/command/model/HttpUrlRequest;

    return-object v0
.end method

.method public bridge synthetic getRequest()Lcom/alipay/mobile/command/model/Request;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->getRequest()Lcom/alipay/mobile/command/model/HttpUrlRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponse(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 4

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "begin parse Response check status,"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "status:"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/alipay/mobile/command/util/exception/HttpException;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/exception/HttpException;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;

    move-result-object v0

    return-object v0
.end method
