.class Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)Ljava/lang/String;

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {v1, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "webview\u5185\u8df3\u8f6c\u5730\u5740\u6709\u95ee\u9898"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
