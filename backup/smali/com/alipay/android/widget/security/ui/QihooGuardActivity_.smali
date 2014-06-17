.class public final Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;
.super Lcom/alipay/android/widget/security/ui/QihooGuardActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cZ:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->da:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->b:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ah:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity_;->b()V

    return-void
.end method
