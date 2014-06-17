.class public final Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;
.super Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Z)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->d()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/l;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/j;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/j;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/k;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/k;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Lcom/alipay/kabaoprod/biz/mwallet/pass/result/PassInfoResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/r;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/r;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/m;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/m;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Z)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/q;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/q;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/p;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/alipassapp/ui/p;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/o;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/o;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/alipassapp/ui/n;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/alipassapp/ui/n;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->onCreate(Landroid/os/Bundle;)V

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

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/alipassapp/ui/AlipassDetailActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
