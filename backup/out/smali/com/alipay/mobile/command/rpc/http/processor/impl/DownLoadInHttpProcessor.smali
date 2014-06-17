.class public Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;
.super Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;


# static fields
.field private static b:Ljava/text/SimpleDateFormat;


# instance fields
.field private a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/command/model/DownloadInHttpRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;-><init>(Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    iput-object p1, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/command/model/Response;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b()Ljava/net/URI;

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

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V

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
    new-instance v1, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, p2, p3, v3}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-static {v1, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
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

    invoke-static {v0}, Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;->parseDate(Ljava/lang/String;)J

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
.method protected final a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    .locals 9

    const/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v6, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1a0

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1, p2, p3, v6}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/command/model/Response;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p2, v4, :cond_2

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v6, v3}, Lcom/alipay/mobile/command/util/CommandUtil;->delFile(Ljava/io/File;Z)V

    :cond_2
    if-eq p2, v4, :cond_3

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

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addSocketTime(J)V

    invoke-static {}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->getInstance()Lcom/alipay/mobile/command/rpc/http/HttpManager;

    move-result-object v0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/command/rpc/http/HttpManager;->addDataSize(J)V

    new-instance v0, Lcom/alipay/mobile/command/model/HttpUrlResponse;

    new-instance v1, Lcom/alipay/mobile/command/model/HttpUrlHeader;

    invoke-direct {v1}, Lcom/alipay/mobile/command/model/HttpUrlHeader;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/alipay/mobile/command/model/HttpUrlResponse;-><init>(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V

    invoke-static {v0, p1}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    invoke-static {p1, v6}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

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
    invoke-static {p1, v6}, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a(Lorg/apache/http/HttpResponse;Ljava/io/File;)V

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

.method protected final a()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation

    const-wide/16 v6, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor;->a()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->a:Lcom/alipay/mobile/command/model/DownloadInHttpRequest;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/DownloadInHttpRequest;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

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

    sget-object v1, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    sget-object v1, Lcom/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor;->b:Ljava/text/SimpleDateFormat;

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

.method protected final a(I)Z
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
