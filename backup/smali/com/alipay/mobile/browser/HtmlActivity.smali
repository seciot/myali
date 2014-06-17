.class public Lcom/alipay/mobile/browser/HtmlActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# static fields
.field protected static final ALIPAY_ACTION_FUNCTION:Ljava/lang/String; = "function"

.field protected static final ALIPAY_ACTION_FUNCTIONNAME:Ljava/lang/String; = "functionName"

.field protected static final ALIPAY_CMD_EXITPAGE:Ljava/lang/String; = "exitWapPage"

.field protected static final ALIPAY_CMD_GOTO:Ljava/lang/String; = "goto"

.field protected static final ALIPAY_CMD_GOTO_APPID:Ljava/lang/String; = "AppsId"

.field protected static final ALIPAY_CMD_LOGIN:Ljava/lang/String; = "reLogin"

.field protected static final ALIPAY_CMD_LOGIN_TO_URL:Ljava/lang/String; = "wapurl"

.field protected static final ALIPAY_CMD_STARTAPP:Ljava/lang/String; = "startapp"

.field protected static final ALIPAY_HOST:Ljava/lang/String; = "platformapi"

.field protected static final ALIPAY_SCHEME:Ljava/lang/String; = "alipay"

.field protected static final TAG:Ljava/lang/String; = "wap_station"

.field public static TITLE:Ljava/lang/String;

.field public static URL:Ljava/lang/String;


# instance fields
.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field protected webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "url"

    sput-object v0, Lcom/alipay/mobile/browser/HtmlActivity;->URL:Ljava/lang/String;

    const-string/jumbo v0, "title"

    sput-object v0, Lcom/alipay/mobile/browser/HtmlActivity;->TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected closeWebView()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/browser/HtmlActivity$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/browser/HtmlActivity$4;-><init>(Lcom/alipay/mobile/browser/HtmlActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected doLogin(Landroid/net/Uri;Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/browser/HtmlActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/browser/HtmlActivity$3;-><init>(Lcom/alipay/mobile/browser/HtmlActivity;Landroid/net/Uri;Landroid/webkit/WebView;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/HtmlActivity$3;->start()V

    return-void
.end method

.method protected getAppId(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "appid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "appId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "saId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    move-object p3, v0

    goto :goto_0
.end method

.method protected gotoApp(Landroid/net/Uri;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000113"

    const-string/jumbo v2, "AppsId"

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/alipay/mobile/browser/HtmlActivity;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V

    throw v0
.end method

.method protected initWebView()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->registerShouldOverrideUrlLoading()V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->setWebChromeClient()V

    return-void
.end method

.method protected injectionAllViewBean()V
    .locals 2

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->title_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mProgressBar:Landroid/widget/ProgressBar;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->htmlView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    return-void
.end method

.method protected isEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadUrl()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/browser/HtmlActivity;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->htmlwapactivity:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->injectionAllViewBean()V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->initWebView()V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/browser/HtmlActivity;->TITLE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivity;->setTitles(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->loadUrl()V

    return-void
.end method

.method protected preprocessUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "alipay://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method protected processCustomLogic(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, p2}, Lcom/alipay/mobile/browser/HtmlActivity;->preprocessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "alipay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "platformapi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "function"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v2, "functionName"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/alipay/mobile/browser/HtmlActivity;->getParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "reLogin"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/alipay/mobile/browser/HtmlActivity;->doLogin(Landroid/net/Uri;Landroid/webkit/WebView;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v3, "goto"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/browser/HtmlActivity;->gotoApp(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "exitWapPage"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "startapp"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/browser/HtmlActivity;->startApp(Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v3, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivity;->closeWebView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected registerShouldOverrideUrlLoading()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivity$2;-><init>(Lcom/alipay/mobile/browser/HtmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method protected setTitles(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->mTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method protected setWebChromeClient()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivity$1;-><init>(Lcom/alipay/mobile/browser/HtmlActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method protected startApp(Landroid/net/Uri;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/browser/HtmlActivity;->getAppId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "10000113"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    goto :goto_0
.end method
