.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Z)V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->J:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->I:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->b:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->f:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTableView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->c:Lcom/alipay/mobile/commonui/widget/APTableView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->a()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->b(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/cf;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/cf;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/ch;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ch;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/cg;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->e:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/ce;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ce;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/ci;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/ci;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;Ljava/lang/String;I)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->k:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeCashierActivity_;->b()V

    return-void
.end method
