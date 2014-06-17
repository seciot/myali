.class final Lcom/alipay/android/app/display/windows/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/down/FileDownloader$IDownloadProgress;


# static fields
.field private static a:Lcom/alipay/android/app/display/windows/i;


# instance fields
.field private b:Lcom/alipay/android/app/down/FileDownloader;

.field private c:Ljava/lang/String;

.field private d:Landroid/os/Handler;

.field private e:Ljava/lang/ref/WeakReference;

.field private f:Ljava/lang/ref/WeakReference;

.field private g:Ljava/lang/String;


# direct methods
.method static synthetic a(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static a()Z
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iget-object v0, v0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iget-object v0, v0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    new-instance v3, Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iget-object v0, v0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/script/IWindowScriptable;->loading(I)Lcom/alipay/android/app/script/ILoadingScriptable;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    :cond_0
    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iget-object v0, v0, Lcom/alipay/android/app/display/windows/i;->b:Lcom/alipay/android/app/down/FileDownloader;

    invoke-virtual {v0}, Lcom/alipay/android/app/down/FileDownloader;->b()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/app/display/windows/i;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static b()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->b:Lcom/alipay/android/app/down/FileDownloader;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->d:Landroid/os/Handler;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->c:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->g:Ljava/lang/String;

    sget-object v0, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    iput-object v1, v0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    sput-object v1, Lcom/alipay/android/app/display/windows/i;->a:Lcom/alipay/android/app/display/windows/i;

    goto :goto_0
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/ILoadingScriptable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/script/ILoadingScriptable;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/ILoadingScriptable;

    invoke-interface {v0}, Lcom/alipay/android/app/script/ILoadingScriptable;->dismiss()V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "chmod 777 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/app/display/windows/i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/FileUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/alipay/android/app/display/windows/i;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->d:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/app/display/windows/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/windows/j;-><init>(Lcom/alipay/android/app/display/windows/i;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/android/app/monitor/MonitorThread;->a()Lcom/alipay/android/app/monitor/MonitorThread;

    move-result-object v1

    const-string/jumbo v2, "install apk"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/app/monitor/MonitorThread;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 8

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/alipay/android/app/R$string;->r:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->g:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/alipay/android/app/R$string;->o:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v2, 0x104000a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v2, "must"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->t:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v2

    const/high16 v0, 0x104

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/windows/i;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/script/IWindowScriptable;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->q:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v1}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alipay/android/app/script/IWindowScriptable;->confirm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/android/app/display/event/EventType;->s:Lcom/alipay/android/app/display/event/EventType;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/event/EventType;->a()Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/alipay/android/app/R$string;->t:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method
