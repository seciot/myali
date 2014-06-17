.class public Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AuthorizationCheckProtocol.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APWebView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 21
    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->finish()V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    sget v0, Lcom/alipay/mobile/openplatform/R$layout;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 30
    invoke-virtual {p0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "protocol_url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->c:Ljava/lang/String;

    .line 32
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->l:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    .line 33
    sget v0, Lcom/alipay/mobile/openplatform/R$id;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APWebView;

    iput-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    new-instance v1, Lcom/alipay/mobile/authorization/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/authorization/ui/d;-><init>(Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->b:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v1, p0, Lcom/alipay/mobile/authorization/ui/AuthorizationCheckProtocol;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-void
.end method
