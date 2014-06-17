.class Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Z

    move-result v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->a(Z)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->finish()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->d(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;

    invoke-static {v2}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;->c(Lcom/alipay/android/widget/security/ui/SecurityCertifiedResultActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
