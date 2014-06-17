.class public Lcom/alipay/mobilesecuritysdk/deviceID/LOG;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static b:Ljava/io/File;

.field private static c:Ljava/io/File;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    sput-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    sput-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->d:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->e:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    const-string/jumbo v0, "logger"

    sput-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    sput-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->g:Landroid/content/Context;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v3, Ljava/io/File;

    sget-object v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-direct {v3, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    new-array v4, v2, [C

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/io/FileReader;->read([C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :goto_1
    :try_start_3
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "id"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "error"

    invoke-static {v4}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v0

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v2, v0

    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_2
    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_5
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_6
    move-exception v1

    sget-object v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()V
    .locals 11

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-class v4, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;

    monitor-enter v4

    :try_start_0
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "logFileDir can not be null! call \'LOG.init\' first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v4

    return-void

    :cond_3
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    array-length v6, v3

    move v0, v2

    :goto_1
    if-lt v0, v6, :cond_4

    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_5

    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    aget-object v7, v3, v0

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v3, v3, -0x1

    move v10, v3

    move-object v3, v0

    move v0, v10

    :goto_2
    invoke-static {v3}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    :cond_6
    move v1, v2

    :goto_3
    if-nez v1, :cond_9

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_4
    if-ge v2, v1, :cond_2

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    sget-object v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-direct {v3, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_7
    sget-boolean v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v6, :cond_8

    sget-object v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    :cond_8
    sget-object v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->g:Landroid/content/Context;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->g:Landroid/content/Context;

    invoke-static {v6}, Lcom/alipay/mobilesecuritysdk/util/CommonUtils;->a(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, LHttpUtils/HttpFetcher;

    invoke-direct {v6}, LHttpUtils/HttpFetcher;-><init>()V

    sget-object v6, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->g:Landroid/content/Context;

    const-string/jumbo v6, "https://seccliprod.alipay.com/api/do.htm"

    const-string/jumbo v7, "bugTrack"

    const-string/jumbo v8, "1"

    const/4 v9, 0x1

    invoke-static {v6, v7, v3, v8, v9}, LHttpUtils/HttpFetcher;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/http/HttpResponse;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v6, 0xc8

    if-ne v3, v6, :cond_6

    goto :goto_3

    :cond_9
    sget-boolean v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v1, :cond_a

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    move v1, v0

    goto :goto_4

    :cond_b
    move v10, v3

    move-object v3, v0

    move v0, v10

    goto :goto_2
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 6

    const-class v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->g:Landroid/content/Context;

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/log/ap"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->d:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->e:Ljava/lang/String;

    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->e:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "<%s> exists but not a Directory!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized a(Ljava/util/List;)V
    .locals 8

    const-class v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "logFileDir can not be null! call \'LOG.init\' first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b()J

    move-result-wide v4

    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "logFileSize="

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    const-wide/32 v6, 0xc800

    cmp-long v0, v4, v6

    if-gtz v0, :cond_5

    new-instance v0, Ljava/io/FileWriter;

    sget-object v4, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    move-object v1, v0

    :goto_1
    const-string/jumbo v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "sb="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_3
    :goto_2
    monitor-exit v2

    return-void

    :cond_4
    :try_start_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ","

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_5
    :try_start_5
    new-instance v0, Ljava/io/FileWriter;

    sget-object v4, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_8
    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_6

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_6
    :goto_3
    :try_start_a
    throw v0

    :catch_2
    move-exception v1

    sget-object v3, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v0

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2
.end method

.method private static declared-synchronized b()J
    .locals 4

    const-class v2, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;

    monitor-enter v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->b:Ljava/io/File;

    invoke-static {}, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    sget-boolean v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "current logfile is:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const-wide/16 v0, 0x0

    :goto_1
    monitor-exit v2

    return-wide v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    :try_start_3
    sget-object v0, Lcom/alipay/mobilesecuritysdk/deviceID/LOG;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v0

    goto :goto_1
.end method

.method private static c()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ".log"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
