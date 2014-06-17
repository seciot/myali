.class public Lcom/androidquery/util/WebImage;
.super Landroid/webkit/WebViewClient;


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Landroid/webkit/WebView;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/Object;ZZI)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/androidquery/util/WebImage;->a:Ljava/lang/Object;

    iput-boolean p4, p0, Lcom/androidquery/util/WebImage;->d:Z

    iput-boolean p5, p0, Lcom/androidquery/util/WebImage;->e:Z

    iput p6, p0, Lcom/androidquery/util/WebImage;->f:I

    return-void
.end method

.method static synthetic access$0(Lcom/androidquery/util/WebImage;)Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidquery/util/WebImage;)V
    .locals 0

    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    return-void
.end method

.method private delaySetup()V
    .locals 4

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/androidquery/util/WebImage$1;

    invoke-direct {v1, p0}, Lcom/androidquery/util/WebImage$1;-><init>(Lcom/androidquery/util/WebImage;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    const-string/jumbo v1, "<html></html>"

    const-string/jumbo v2, "text/html"

    const-string/jumbo v3, "utf-8"

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method private static disableZoomControl(Landroid/webkit/WebView;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string/jumbo v1, "setDisplayZoomControls"

    new-array v4, v5, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v4, v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v5, v2

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private done(Landroid/webkit/WebView;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private static fixWebviewTip(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "WebViewSettings"

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "double_tap_toast_count"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "double_tap_toast_count"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/androidquery/util/WebImage;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com/androidquery/util/web_image.html"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->toBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/androidquery/util/WebImage;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/androidquery/util/WebImage;->g:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setup()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/WebImage;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@src"

    iget-object v3, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@color"

    iget v3, p0, Lcom/androidquery/util/WebImage;->f:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public load()V
    .locals 4

    const v3, 0x40ff0001

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v3}, Landroid/webkit/WebView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Landroid/webkit/WebView;->setTag(ILjava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setDrawingCacheEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/androidquery/util/WebImage;->fixWebviewTip(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->d:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->d:Z

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-boolean v1, p0, Lcom/androidquery/util/WebImage;->e:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-static {v1}, Lcom/androidquery/util/WebImage;->disableZoomControl(Landroid/webkit/WebView;)V

    :cond_2
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    iget v1, p0, Lcom/androidquery/util/WebImage;->f:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/androidquery/util/WebImage;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/androidquery/util/WebImage;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/androidquery/util/Common;->showProgress(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    iget-object v0, p0, Lcom/androidquery/util/WebImage;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    if-lez v0, :cond_4

    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->setup()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/androidquery/util/WebImage;->delaySetup()V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/androidquery/util/WebImage;->done(Landroid/webkit/WebView;)V

    return-void
.end method

.method public onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 0

    return-void
.end method
