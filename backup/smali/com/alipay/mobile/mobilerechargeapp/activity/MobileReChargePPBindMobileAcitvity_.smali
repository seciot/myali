.class public final Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;
.super Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->C:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$id;->E:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->a:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/mobilerechargeapp/activity/am;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/am;-><init>(Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/mobilerechargeapp/R$layout;->j:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/mobilerechargeapp/activity/MobileReChargePPBindMobileAcitvity_;->b()V

    return-void
.end method
