.class public Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;
.source "AutoPaySuccessActivity.java"


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/alipay/mobile/commonui/widget/APTextView;

.field c:Lcom/alipay/mobile/commonui/widget/APWebView;

.field d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field e:Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

.field protected f:Landroid/os/Handler;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Lcom/alipay/mobile/onsitepay/utils/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    .line 36
    const-string/jumbo v0, "AutoPaySuccessActivity"

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->j:Z

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->f:Landroid/os/Handler;

    return-void
.end method

.method protected static a()Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 124
    const-class v1, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/livetradeprod/core/service/gw/SoundWavePayRpcFacade;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->k:Lcom/alipay/mobile/onsitepay/utils/i;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "alipays"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    .line 53
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/alipay/mobile/onsitepay/e;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "paysucceedMsg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->g:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "promoUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->h:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "dynamicId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->i:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "needPayResultAck"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->j:Z

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "promoUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " dynamicId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " paysucceedMsg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " needPayResultAck="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->i:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->j:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/d;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/onsitepay/payer/d;-><init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    :cond_0
    sget v0, Lcom/alipay/mobile/onsitepay/d;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    sget v0, Lcom/alipay/mobile/onsitepay/d;->aC:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->e:Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

    .line 68
    sget v0, Lcom/alipay/mobile/onsitepay/d;->ap:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/a;-><init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    new-instance v0, Lcom/alipay/mobile/onsitepay/utils/i;

    invoke-direct {v0}, Lcom/alipay/mobile/onsitepay/utils/i;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->k:Lcom/alipay/mobile/onsitepay/utils/i;

    .line 77
    sget v0, Lcom/alipay/mobile/onsitepay/d;->as:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APWebView;

    iput-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APWebView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->e:Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/onsitepay/utils/GenericProgressView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->setInitialScale(I)V

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepay/payer/b;-><init>(Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->c:Lcom/alipay/mobile/commonui/widget/APWebView;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/AutoPaySuccessActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 118
    :cond_1
    return-void
.end method
