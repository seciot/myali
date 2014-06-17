.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;


# instance fields
.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->a(Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;)V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->c:Lcom/alipay/mobile/mobilerechargeapp/view/APButtonInputBoxAutoC;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->A:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->B:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->h:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->m:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APListView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->k:Lcom/alipay/mobile/commonui/widget/APListView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->y:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->z:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->i:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->G:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APSpinner;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->e:Lcom/alipay/mobile/commonui/widget/APSpinner;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->h:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bs;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/bo;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;ILcom/alipay/mobile/mobilerechargeapp/data/ItemData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bq;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bn;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bn;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bp;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bp;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bt;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bt;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/br;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/br;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bl;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/bl;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;Lcom/alipay/mobile/mobilerechargeapp/adapter/EcardVOWrapper;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/mobilerechargeapp/activity/bk;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bk;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bm;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/bm;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/bu;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/bu;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->i:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->d()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileRechargeActivity_;->d()V

    return-void
.end method
