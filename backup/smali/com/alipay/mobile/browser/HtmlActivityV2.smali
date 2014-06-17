.class public Lcom/alipay/mobile/browser/HtmlActivityV2;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
.end annotation


# static fields
.field public static final PARAM_HANDLER_REGISTER_KEY:Ljava/lang/String; = "HandlerRegisterKey"

.field public static final PARAM_REQUEST:Ljava/lang/String; = "HARequest"


# instance fields
.field private a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

.field private b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

.field private c:Z

.field protected loadUrl:Ljava/lang/String;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mWebView:Landroid/webkit/WebView;

.field protected titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->c:Z

    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "HandlerRegisterKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->getInstance()Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandlerRegister;->unRegisterHandler(Ljava/lang/String;)Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getHandlerType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;

    invoke-direct {v0}, Lcom/alipay/mobile/browser/handler/CMSHtmlActivityHandler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const-string/jumbo v1, ""

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->back:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/browser/HtmlActivityV2$3;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2$3;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2;)V

    move-object v0, p0

    move-object v2, p1

    move-object v6, v5

    invoke-super/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/browser/HtmlActivityV2;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->c:Z

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/browser/HtmlActivityV2;)Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    return-object v0
.end method


# virtual methods
.method public doLoginAndLoadUrl()V
    .locals 4
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v1}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->doLogin()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v1}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "09999999"

    const-string/jumbo v2, "20000001"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public finishActivity()V
    .locals 2
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->dismissProgressDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->c:Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finish()V

    return-void
.end method

.method public forceLoginAndLoadUrl()V
    .locals 3

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$drawable;->simple_toast_false:I

    const-string/jumbo v1, "\u767b\u5f55\u4e2d..."

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->doLoginAndLoadUrl()V

    return-void
.end method

.method public getTitleBar()Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    return-object v0
.end method

.method public getmProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getmWebView()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method protected init()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "HARequest"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    if-nez v0, :cond_0

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->missing_required_params:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->a(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getRequestUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->missing_request_url:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->a:Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->setRequest(Lcom/alipay/mobile/browser/vo/HtmlActivityRequest;)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->setHtmlActivityV2(Lcom/alipay/mobile/browser/HtmlActivityV2;)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    iget-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->setmApp(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->init()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->app_init_fail:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivityV2$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2$2;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/browser/HtmlActivityV2$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/browser/HtmlActivityV2$1;-><init>(Lcom/alipay/mobile/browser/HtmlActivityV2;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto/16 :goto_1
.end method

.method public loadUrl()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getRequestCookies()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v3}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getCookieDomain()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->getCookieDomain()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    invoke-virtual {v3, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected needLoginAndLoadUrl()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->htmlactivity_v2:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->htmlActivityV2_title:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->titleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->AlipayPushUrlWebView:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mWebView:Landroid/webkit/WebView;

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$id;->ProgressBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->init()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->finishActivity()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->needLoginAndLoadUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->isNeedLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/browser/HtmlActivityV2;->b:Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;

    invoke-virtual {v0}, Lcom/alipay/mobile/browser/handler/HtmlActivityHandler;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->forceLoginAndLoadUrl()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/browser/HtmlActivityV2;->loadUrl()V

    goto :goto_0
.end method
