.class public final Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;
.super Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->d(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->c(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/am;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/withdraw/ui/am;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ae;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/ae;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ai;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/ai;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ah;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/ah;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ak;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/ak;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/withdraw/ui/al;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/withdraw/ui/al;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/af;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/withdraw/ui/af;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/aj;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/aj;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d(Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/withdraw/ui/ag;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/withdraw/ui/ag;-><init>(Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity_;Lcom/alipay/kabaoprod/biz/shared/result/KabaoCommonResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/withdraw/ui/WithdrawSmsCheckActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
