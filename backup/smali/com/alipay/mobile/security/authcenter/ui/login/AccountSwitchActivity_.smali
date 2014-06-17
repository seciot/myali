.class public final Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;
.super Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fT:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->W:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fS:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fR:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "canSwitchMobile"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->setContentView(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-static {}, Lcom/googlecode/androidannotations/api/SdkVersionHelper;->getSdkInt()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->onBackPressed()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->a()V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/login/AccountSwitchActivity_;->a()V

    return-void
.end method
