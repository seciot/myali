.class final Lcom/alipay/android/app/down/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/down/FileDownloader;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/down/FileDownloader;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/high16 v1, 0x42c8

    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x4248

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v2}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/down/c;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/down/c;->b()J

    move-result-wide v4

    div-long/2addr v2, v4

    long-to-float v0, v2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v2}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/down/c;->c()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v2}, Lcom/alipay/android/app/down/FileDownloader;->j(Lcom/alipay/android/app/down/FileDownloader;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;Z)Z

    cmpl-float v2, v0, v1

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;->d()V

    const-class v1, Lcom/alipay/android/app/down/FileDownloader;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/exception/AppErrorException;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v2}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/app/down/c;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1

    :cond_4
    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->c(Lcom/alipay/android/app/down/FileDownloader;)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;->d()V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/app/down/b;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloader;->i(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;->a(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
