.class public final Lcom/alipay/mobile/quinox/splash/c;
.super Ljava/lang/Object;


# instance fields
.field a:Z

.field b:Lcom/alipay/mobile/quinox/splash/a;

.field c:Lcom/alipay/mobile/quinox/splash/b;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/app/Activity;

.field private g:Landroid/os/Handler;

.field private h:Ljava/lang/Thread;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/c;->i:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->k:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/c;->a:Z

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/splash/c;->g:Landroid/os/Handler;

    const-string/jumbo v0, "client_bg"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    const-string/jumbo v0, "alipaylogin_layout"

    invoke-direct {p0, v0}, Lcom/alipay/mobile/quinox/splash/c;->b(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->e:Landroid/widget/RelativeLayout;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/splash/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".R$id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/splash/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/c;->i:Z

    return v0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".R$drawable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/quinox/splash/c;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->h:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/quinox/splash/c;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->g:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/quinox/splash/c;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/c;->i:Z

    return v0
.end method

.method static synthetic f(Lcom/alipay/mobile/quinox/splash/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    const-string/jumbo v1, "first_deploy_logo"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/splash/c;->b(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string/jumbo v1, "first_deploy_logo"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/quinox/splash/c;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/quinox/splash/c;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->k:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/alipay/mobile/quinox/splash/a;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/quinox/splash/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->b:Lcom/alipay/mobile/quinox/splash/a;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->b:Lcom/alipay/mobile/quinox/splash/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/a;->b()Lcom/alipay/mobile/quinox/splash/b;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/quinox/splash/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/splash/e;-><init>(Lcom/alipay/mobile/quinox/splash/c;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v0, v0, Lcom/alipay/mobile/quinox/splash/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/quinox/splash/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/quinox/splash/d;-><init>(Lcom/alipay/mobile/quinox/splash/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->h:Ljava/lang/Thread;

    const-string/jumbo v0, "true"

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/splash/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->b:Lcom/alipay/mobile/quinox/splash/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/splash/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/background/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sparse-switch v0, :sswitch_data_0

    const-string/jumbo v0, "high/"

    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/alipay/mobile/quinox/splash/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/quinox/splash/c;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "medium/"

    goto :goto_1

    :sswitch_1
    const-string/jumbo v0, "medium/"

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "low/"

    goto :goto_1

    :sswitch_3
    const-string/jumbo v0, "high/"

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->b:Lcom/alipay/mobile/quinox/splash/a;

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/splash/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/splash/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->c:Lcom/alipay/mobile/quinox/splash/b;

    iget-object v1, v1, Lcom/alipay/mobile/quinox/splash/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/c;->f:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->e:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    const-string/jumbo v2, "startclient"

    invoke-direct {p0, v2}, Lcom/alipay/mobile/quinox/splash/c;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v2}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/quinox/splash/f;

    invoke-direct {v1, p0, v4}, Lcom/alipay/mobile/quinox/splash/f;-><init>(Lcom/alipay/mobile/quinox/splash/c;B)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
        0x140 -> :sswitch_3
    .end sparse-switch
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->l:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v2, p0, Lcom/alipay/mobile/quinox/splash/c;->d:Landroid/widget/ImageView;

    :cond_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
