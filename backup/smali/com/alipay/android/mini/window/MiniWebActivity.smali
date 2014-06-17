.class public Lcom/alipay/android/mini/window/MiniWebActivity;
.super Lcom/alipay/android/mini/window/AbsActivity;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/widget/FrameLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/ProgressBar;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/TextView;

.field private j:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/alipay/android/mini/window/AbsActivity;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->i:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private a()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Lcom/alipay/android/app/R$id;->X:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    const/16 v3, 0x1a0a

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    const-string/jumbo v3, "mini_webview"

    new-array v4, v1, [I

    iget-object v5, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v5}, Landroid/webkit/WebView;->getId()I

    move-result v5

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alipay/android/app/R$id;->aa:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    const-string/jumbo v3, "mini_webview_back"

    new-array v4, v1, [I

    sget v5, Lcom/alipay/android/app/R$id;->aa:I

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alipay/android/app/R$id;->ab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    const-string/jumbo v3, "mini_webview_forward"

    new-array v4, v1, [I

    sget v5, Lcom/alipay/android/app/R$id;->ab:I

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alipay/android/app/R$id;->ac:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    const-string/jumbo v3, "mini_webview_refresh"

    new-array v4, v1, [I

    sget v5, Lcom/alipay/android/app/R$id;->ac:I

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alipay/android/app/R$id;->Z:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->i:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    const-string/jumbo v3, "mini_web_title"

    new-array v4, v1, [I

    sget v5, Lcom/alipay/android/app/R$id;->Z:I

    aput v5, v4, v2

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcom/alipay/android/app/R$id;->Y:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->g:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setDomStorageEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/mini/window/r;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/r;-><init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/mini/window/s;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/s;-><init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/t;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/t;-><init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/u;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/u;-><init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/mini/window/v;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/v;-><init>(Lcom/alipay/android/mini/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v0, v1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/mini/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    sget v0, Lcom/alipay/android/app/R$layout;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/MiniWebActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->h:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/MiniWebActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/app/IAppConfig;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "URL:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v3, 0x0

    aget v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;

    move-result-object v0

    sget-object v2, Lcom/alipay/test/ui/core/EventObject;->OnResume:Lcom/alipay/test/ui/core/EventObject;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "mini-webview"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    const/4 v1, 0x3

    iget-object v4, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->j:Ljava/util/Map;

    aput-object v4, v3, v1

    invoke-virtual {v0, v2, v3}, Lcom/alipay/trobot/external/DefaultMesssageHandler;->onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->b:Landroid/widget/FrameLayout;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->a:Landroid/webkit/WebView;

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->c:Landroid/widget/ImageView;

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/alipay/android/mini/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    :cond_4
    invoke-super {p0}, Lcom/alipay/android/mini/window/AbsActivity;->onDestroy()V

    return-void
.end method
