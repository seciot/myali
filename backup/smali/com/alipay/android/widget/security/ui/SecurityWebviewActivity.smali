.class public Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "security_webview"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/commonui/widget/APTitleBar;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "titleBar"
    .end annotation
.end field

.field protected b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;
    .annotation build Lcom/googlecode/androidannotations/annotations/ViewById;
        resName = "relativeLayout_webview"
    .end annotation
.end field

.field protected c:Landroid/webkit/WebView;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "SecurityWebviewActivity"

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/net/Uri;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p0}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "This isn\'t a hierarchical URI."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_2
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_3
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_4

    if-ne v2, v5, :cond_5

    :cond_4
    move v2, v1

    :cond_5
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-static {p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "securityId"

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x111

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->finish()V

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-virtual {v1, p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-static {p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    :cond_2
    :goto_0
    return v8

    :cond_3
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u542f\u52a8uri\u5f02\u5e38"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-static {p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v4, v6, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "URL\u52a0\u8f7d\u5931\u8d25\uff0c\u53c2\u6570\u89e3\u6790\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-static {v5}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Landroid/net/Uri;)Ljava/util/Set;

    move-result-object v4

    goto :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, "action"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_2

    :cond_7
    const-string/jumbo v7, "appId"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_8
    const-string/jumbo v7, "androidTopic"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    const-string/jumbo v0, "startApp"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "to start app : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v0, "broadcast"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "to send broadcast : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_e
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-virtual {v0, p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;->d(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_1

    const-string/jumbo v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/AfterViews;
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "ShowCloseButton"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "cache"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setDomStorageEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$5;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$4;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->showProgressDialog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "securityId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->g:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    invoke-direct {v0, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->e:Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$WebUrlHelper;

    new-instance v0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/high16 v1, -0x4080

    invoke-static {v1, p0}, Lcom/alipay/mobile/common/misc/ExtViewUtil;->convertDpToPixel(FLandroid/content/Context;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWebviewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
