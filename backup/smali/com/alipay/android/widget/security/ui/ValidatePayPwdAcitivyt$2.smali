.class Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bF:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->b()V

    return-void
.end method
