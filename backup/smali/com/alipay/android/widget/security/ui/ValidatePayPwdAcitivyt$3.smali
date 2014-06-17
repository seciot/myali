.class Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/AccountCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanAccountCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 0

    return-void
.end method

.method public loginPwdValidateCallBack(Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->dismissProgressDialog()V

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->c()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "190"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "191"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "192"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getResultCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$1;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;)V

    iget-object v5, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v5}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/clientsecurity/R$string;->as:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;-><init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/ResultBean;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bW:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->toast(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
