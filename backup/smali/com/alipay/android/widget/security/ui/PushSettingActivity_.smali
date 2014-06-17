.class public final Lcom/alipay/android/widget/security/ui/PushSettingActivity_;
.super Lcom/alipay/android/widget/security/ui/PushSettingActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 1

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cW:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->d:Lcom/alipay/mobile/commonui/widget/APTextView;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cV:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->c:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->a()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ag:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/PushSettingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/PushSettingActivity_;->b()V

    return-void
.end method
