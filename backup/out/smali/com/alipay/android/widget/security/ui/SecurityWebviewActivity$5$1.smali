.class Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    const-string/jumbo v1, "\u5df2\u53d6\u6d88\u4e0b\u8f7d"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    const-string/jumbo v1, "\u4e0b\u8f7d\u5931\u8d25"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->toast(Ljava/lang/String;I)V

    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u4e0b\u8f7d\u6210\u529f"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->toast(Ljava/lang/String;I)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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
    return-void
.end method

.method public onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 0

    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 0

    return-void
.end method
