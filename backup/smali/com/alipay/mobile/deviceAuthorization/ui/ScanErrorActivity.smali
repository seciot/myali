.class public Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->an:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resultCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "message"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bb:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    if-eqz v1, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->bc:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->gg:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setTitleText(Ljava/lang/String;)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->du:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/aq;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/aq;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->ad:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v3, Lcom/alipay/mobile/deviceAuthorization/ui/ar;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/ar;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/ScanErrorActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v2, :cond_2

    const-string/jumbo v3, "2001"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
