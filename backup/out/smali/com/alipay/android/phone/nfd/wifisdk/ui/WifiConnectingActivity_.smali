.class public final Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;
.super Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;
.source "WifiConnectingActivity_.java"


# instance fields
.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->r:Landroid/os/Handler;

    .line 122
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-super {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c()V

    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->g:Landroid/widget/ImageView;

    .line 53
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->h:Landroid/widget/ImageView;

    .line 54
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->f:Landroid/widget/TextView;

    .line 55
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->c:Landroid/view/ViewGroup;

    .line 56
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->k:Landroid/widget/LinearLayout;

    .line 57
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->j:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->i:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->d:Landroid/view/ViewGroup;

    .line 60
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->e:Landroid/widget/Button;

    .line 61
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->b()V

    .line 62
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/l;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/l;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 120
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->r:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/k;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 36
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->f:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->q:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->e:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->p:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->c:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->m:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->d:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->o:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->b:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->n:Landroid/view/animation/Animation;

    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$anim;->a:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->l:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->a()V

    .line 37
    invoke-super {p0, p1}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    sget v0, Lcom/alipay/android/phone/nfd/wifisdk/R$layout;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->setContentView(I)V

    .line 39
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->onBackPressed()V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->setContentView(I)V

    .line 67
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->i()V

    .line 68
    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->setContentView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->i()V

    .line 80
    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity_;->i()V

    .line 74
    return-void
.end method
