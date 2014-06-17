.class public final Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;
.super Lcom/alipay/android/widget/security/ui/NFCSettingActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;-><init>()V

    return-void
.end method

.method private b()V
    .locals 3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->cz:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/NFCService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->b:Lcom/alipay/mobile/framework/service/NFCService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getmToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->a:Lcom/alipay/mobile/commonui/widget/APRadioTableView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APRadioTableView;->getmToggleButton()Lcom/alipay/mobile/commonui/widget/APToggleButton;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity$1;-><init>(Lcom/alipay/android/widget/security/ui/NFCSettingActivity;Landroid/widget/ToggleButton;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/commonui/widget/APToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->ad:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->setContentView(I)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->b()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/NFCSettingActivity_;->b()V

    return-void
.end method
