.class public final Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;
.super Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 1

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$id;->n:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/v;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/v;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/t;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/t;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/w;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/x;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/withdraw/ui/x;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/r;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/r;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/financial/withdraw/result/PreWithdrawResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/s;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/s;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/y;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/withdraw/ui/y;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/u;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/u;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/q;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/q;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/android/phone/wealth/withdraw/R$layout;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->setContentView(I)V

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

    invoke-virtual {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->g()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->g()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawActivity_;->g()V

    return-void
.end method
