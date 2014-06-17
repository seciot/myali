.class public Lcom/alipay/android/mini/uielement/UIWebView;
.super Lcom/alipay/android/mini/uielement/BaseElement;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/mini/uielement/BaseElement;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    check-cast p2, Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/mini/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIWebView;->e:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/mini/uielement/UIWebView;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/android/mini/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    :goto_1
    invoke-virtual {p2}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->g:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcom/alipay/android/mini/uielement/aj;

    invoke-direct {v0, p0}, Lcom/alipay/android/mini/uielement/aj;-><init>(Lcom/alipay/android/mini/uielement/UIWebView;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    new-instance v0, Lcom/alipay/android/mini/uielement/ak;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/mini/uielement/ak;-><init>(Lcom/alipay/android/mini/uielement/UIWebView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIWebView;->j()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIWebView;->j()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x2

    goto :goto_1
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/uielement/BaseElement;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->e:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->f:Ljava/lang/String;

    const-string/jumbo v0, "alt"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/uielement/UIWebView;->g:Ljava/lang/String;

    return-void
.end method

.method public final b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/android/mini/uielement/BaseElement;->dispose()V

    return-void
.end method

.method public final e()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/uielement/UIWebView;->s()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected final t()I
    .locals 1

    sget v0, Lcom/alipay/android/app/R$layout;->A:I

    return v0
.end method
