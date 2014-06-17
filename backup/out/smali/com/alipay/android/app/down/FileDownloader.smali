.class public final Lcom/alipay/android/app/down/FileDownloader;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

.field private e:Lcom/alipay/android/app/down/c;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloader;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/down/FileDownloader;Lcom/alipay/android/app/down/c;)Lcom/alipay/android/app/down/c;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/app/down/FileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloader;->f:Z

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/app/down/FileDownloader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/app/down/FileDownloader;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/alipay/android/app/down/FileDownloader;)J
    .locals 2

    invoke-direct {p0}, Lcom/alipay/android/app/down/FileDownloader;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic c(Lcom/alipay/android/app/down/FileDownloader;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloader;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloader;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private d()J
    .locals 5

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/down/FileDownloader;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/app/down/HttpClientUtil;->a(Ljava/lang/String;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "can not get file length"

    invoke-static {v3, v4, v2}, Lcom/alipay/android/app/exception/AppErrorException;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/android/app/down/FileDownloader;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->c:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/down/c;->a(J)V

    iget-object v1, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/alipay/android/app/down/c;->b(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :goto_5
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    :goto_6
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_2

    :catch_8
    move-exception v1

    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->d:Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    return-object v0
.end method

.method static synthetic j(Lcom/alipay/android/app/down/FileDownloader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloader;->g:Z

    return v0
.end method


# virtual methods
.method protected final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/android/app/down/FileDownloader;->f:Z

    return v0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/app/down/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/down/a;-><init>(Lcom/alipay/android/app/down/FileDownloader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected final c()V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->c:Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    invoke-virtual {v0}, Lcom/alipay/android/app/down/c;->a()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    iget-object v0, p0, Lcom/alipay/android/app/down/FileDownloader;->e:Lcom/alipay/android/app/down/c;

    invoke-virtual {v0}, Lcom/alipay/android/app/down/c;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_4
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :goto_6
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_2

    :catch_8
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method
