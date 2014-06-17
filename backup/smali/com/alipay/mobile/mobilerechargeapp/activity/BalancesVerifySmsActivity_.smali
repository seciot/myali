.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;


# instance fields
.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->OnAutoReadSms(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->r:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->M:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->e:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->f:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final OnAutoReadSms(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/f;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/e;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/g;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/h;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->g:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/d;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesVerifySmsActivity_;->c()V

    return-void
.end method
