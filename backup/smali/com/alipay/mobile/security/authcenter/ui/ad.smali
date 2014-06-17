.class final Lcom/alipay/mobile/security/authcenter/ui/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v1, v1, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->a(Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->K:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->P:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    iget-object v3, v3, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->d:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->N:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/security/authcenter/ui/ae;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/security/authcenter/ui/ae;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ad;)V

    iget-object v5, p0, Lcom/alipay/mobile/security/authcenter/ui/ad;->a:Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;

    invoke-virtual {v5}, Lcom/alipay/mobile/security/authcenter/ui/RegisterDownSmsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/clientsecurity/R$string;->Z:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_0
    return-void
.end method
