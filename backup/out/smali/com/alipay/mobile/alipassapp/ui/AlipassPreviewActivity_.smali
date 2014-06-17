.class public final Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;ILjava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->b()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->e()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->d()V

    return-void
.end method

.method static synthetic e(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bj;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/bj;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bl;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/bl;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bi;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/bi;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/bk;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/bk;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bm;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bm;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bp;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bp;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bo;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bo;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/bn;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/bn;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassPreviewActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
