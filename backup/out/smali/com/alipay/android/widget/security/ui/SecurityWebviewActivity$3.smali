.class Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;
.super Landroid/webkit/WebChromeClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->dismissProgressDialog()V

    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method
