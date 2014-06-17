.class public Lcom/alipay/mobile/common/transport/download/DownloadWorker;
.super Lcom/alipay/mobile/common/transport/http/HttpWorker;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transport/http/HttpWorker;-><init>(Lcom/alipay/mobile/common/transport/http/HttpManager;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;)V

    check-cast p2, Lcom/alipay/mobile/common/transport/download/DownloadRequest;

    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/download/DownloadRequest;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->getUri()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v1

    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v1

    invoke-virtual {p4}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v1

    :goto_0
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p4}, Ljava/io/File;->delete()Z

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed! code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    :try_start_3
    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object v1

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    .locals 2

    :try_start_0
    const-string/jumbo v0, "Last-Modified"

    invoke-interface {p0, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getHeaders()Ljava/util/ArrayList;
    .locals 9

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/common/transport/http/HttpWorker;->getHeaders()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v1, v6, :cond_0

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/http/message/BasicHeader;

    const-string/jumbo v3, "If-Range"

    invoke-direct {v2, v3, v1}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method protected handleResponse(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;
    .locals 9

    const/16 v3, 0xc8

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a:Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1a0

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p2, v3, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "file delete fail or create fail"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eq p2, v3, :cond_3

    const/16 v2, 0xce

    if-eq p2, v2, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "download failed! code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    const/4 v5, 0x1

    invoke-direct {v4, v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->writeData(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/common/transport/TransportCallback;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addSocketTime(J)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->mHttpManager:Lcom/alipay/mobile/common/transport/http/HttpManager;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/http/HttpManager;->addDataSize(J)V

    new-instance v0, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;

    new-instance v1, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;-><init>(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->fillResponse(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {p1, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download failed!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {p1, v6}, Lcom/alipay/mobile/common/transport/download/DownloadWorker;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

    if-eqz v4, :cond_4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "ArrayOutputStream close error!"

    invoke-virtual {v0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method protected willHandleOtherCode(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0xce

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1a0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
