.class final Lcom/alipay/mobile/onsitepay/payer/b;
.super Landroid/webkit/WebViewClient;
.source "AutoPaySuccessActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->e:Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPageFinished:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onReceivedError errorCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/c;-><init>(Lcom/alipay/mobile/onsitepay/payer/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "shouldOverrideUrlLoading url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->e:Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->setVisibility(I)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/b;->a:Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
