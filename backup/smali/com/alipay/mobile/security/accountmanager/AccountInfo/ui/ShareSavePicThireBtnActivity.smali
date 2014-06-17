.class public Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APButton;

.field private b:Lcom/alipay/mobile/commonui/widget/APButton;

.field private c:Lcom/alipay/mobile/commonui/widget/APButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->finish()V

    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.android.main.avatar.action.changed"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->dt:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->finish()V

    return-void

    :cond_0
    sget v1, Lcom/alipay/mobile/clientsecurity/R$id;->fE:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->setResult(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->af:I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->requestWindowFeature(I)Z

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->R:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->dt:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->fE:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->af:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->a:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->b:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/AccountInfo/ui/ShareSavePicThireBtnActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/commonui/widget/APButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
