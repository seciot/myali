.class public Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# instance fields
.field a:Lcom/alipay/mobile/commonui/widget/APTextView;

.field b:Lcom/alipay/mobile/commonui/widget/APTitleBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$layout;->alipass_payment_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->autopay_success_message:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->a:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/alipay/mobile/alipassapp/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/alipassapp/R$string;->completed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    new-instance v1, Lcom/alipay/mobile/alipassapp/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/alipassapp/ui/a;-><init>(Lcom/alipay/mobile/alipassapp/ui/AlipassAutoPaySuccessActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
