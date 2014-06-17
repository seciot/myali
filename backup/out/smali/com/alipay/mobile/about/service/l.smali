.class final Lcom/alipay/mobile/about/service/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field final synthetic c:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/l;->c:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-boolean p2, p0, Lcom/alipay/mobile/about/service/l;->a:Z

    iput-object p3, p0, Lcom/alipay/mobile/about/service/l;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    :try_start_0
    invoke-interface {p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    iget-boolean v0, p0, Lcom/alipay/mobile/about/service/l;->a:Z

    iget-object v1, p0, Lcom/alipay/mobile/about/service/l;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/l;->a(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public final onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    iget-object v0, p0, Lcom/alipay/mobile/about/service/l;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/l;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public final onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    if-eqz p2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/about/service/l;->a:Z

    iget-object v1, p0, Lcom/alipay/mobile/about/service/l;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0, v1}, Lcom/alipay/mobile/about/service/l;->a(ZLcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/l;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/l;->a(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    return-void
.end method

.method public final onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 0

    return-void
.end method

.method public final onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/about/service/a;->a:Z

    return-void
.end method
