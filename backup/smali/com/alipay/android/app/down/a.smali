.class final Lcom/alipay/android/app/down/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/down/FileDownloader;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/down/FileDownloader;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    new-instance v2, Lcom/alipay/android/app/down/b;

    iget-object v0, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-direct {v2, v0}, Lcom/alipay/android/app/down/b;-><init>(Lcom/alipay/android/app/down/FileDownloader;)V

    const-wide/16 v0, -0x1

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->b(Lcom/alipay/android/app/down/FileDownloader;)J

    move-result-wide v0

    cmp-long v3, v0, v9

    if-gtz v3, :cond_1

    invoke-virtual {v2, v8}, Lcom/alipay/android/app/down/b;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->c(Lcom/alipay/android/app/down/FileDownloader;)V

    :cond_1
    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    new-instance v4, Lcom/alipay/android/app/down/c;

    iget-object v5, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v5}, Lcom/alipay/android/app/down/FileDownloader;->d(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v6}, Lcom/alipay/android/app/down/FileDownloader;->e(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-direct {v4, v5, v6, v7}, Lcom/alipay/android/app/down/c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/down/FileDownloader;)V

    invoke-static {v3, v4}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;Lcom/alipay/android/app/down/c;)Lcom/alipay/android/app/down/c;

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->e(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/down/a;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->f(Lcom/alipay/android/app/down/FileDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/down/a;->a(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->g(Lcom/alipay/android/app/down/FileDownloader;)V

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/app/down/c;->b()J

    move-result-wide v3

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->c(Lcom/alipay/android/app/down/FileDownloader;)V

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Lcom/alipay/android/app/down/c;->a(J)V

    iget-object v3, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v3}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/alipay/android/app/down/c;->b(J)V

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v1}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0, v8}, Lcom/alipay/android/app/down/FileDownloader;->a(Lcom/alipay/android/app/down/FileDownloader;Z)Z

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/down/a;->a:Lcom/alipay/android/app/down/FileDownloader;

    invoke-static {v0}, Lcom/alipay/android/app/down/FileDownloader;->h(Lcom/alipay/android/app/down/FileDownloader;)Lcom/alipay/android/app/down/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/down/c;->c()Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 v0, 0x5dc

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v2, v8}, Lcom/alipay/android/app/down/b;->sendEmptyMessage(I)Z

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v8}, Lcom/alipay/android/app/down/b;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
