.class final Lcom/alipay/mobile/quinox/splash/f;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/quinox/splash/c;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/quinox/splash/c;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/quinox/splash/c;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/splash/f;-><init>(Lcom/alipay/mobile/quinox/splash/c;)V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->a(Lcom/alipay/mobile/quinox/splash/c;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->b(Lcom/alipay/mobile/quinox/splash/c;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/splash/c;->d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/splash/g;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/splash/g;-><init>(Lcom/alipay/mobile/quinox/splash/f;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "alipay"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/f;->a:Lcom/alipay/mobile/quinox/splash/c;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/quinox/splash/c;->a(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
