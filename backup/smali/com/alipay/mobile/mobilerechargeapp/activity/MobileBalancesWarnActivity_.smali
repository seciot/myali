.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;


# instance fields
.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->a(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->b(Ljava/lang/String;II)V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->D:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->a:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ag;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ag;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ai;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ai;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/af;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/af;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/aj;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/aj;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/al;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/al;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/ah;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/mobilerechargeapp/activity/ak;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileBalancesWarnActivity_;->c()V

    return-void
.end method
