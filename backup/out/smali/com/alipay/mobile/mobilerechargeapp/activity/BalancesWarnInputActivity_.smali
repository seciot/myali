.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;


# instance fields
.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->q:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->N:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/u;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/u;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->f:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/t;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/t;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/v;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/v;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/w;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/w;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/x;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/x;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnInputActivity_;->d()V

    return-void
.end method
