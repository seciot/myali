.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed()V
    .locals 0

    return-void
.end method

.method public onPayFailed(ILjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->ca:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->bR:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;)V

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onPaySuccess(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierPaymentResult;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->e()V

    return-void
.end method
