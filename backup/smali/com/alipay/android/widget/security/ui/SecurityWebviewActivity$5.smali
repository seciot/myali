.class Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->isDownloading(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    const-string/jumbo v1, "\u6b63\u5728\u4e0b\u8f7d\u2026\u2026"

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    const-string/jumbo v2, "\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->toast(Ljava/lang/String;I)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;-><init>()V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {p1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setDownloadUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {p1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setTitle(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {p1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setFileName(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;->setShowRunningNotification(Z)V

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;->addDownload(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;)V

    goto :goto_0
.end method
