.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->g:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/k;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/k;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->c()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/BalancesWarnCmsActivity_;->c()V

    return-void
.end method
