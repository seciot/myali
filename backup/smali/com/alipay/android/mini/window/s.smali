.class final Lcom/alipay/android/mini/window/s;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/MiniWebActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/s;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/s;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->c(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/android/mini/window/s;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->b(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/s;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->d(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 0

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/s;->a:Lcom/alipay/android/mini/window/MiniWebActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->a(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
