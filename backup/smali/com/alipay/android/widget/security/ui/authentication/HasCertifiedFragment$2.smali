.class Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->a(Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "uploadPaperView"

    const-string/jumbo v7, "attestationDetail"

    const-string/jumbo v8, "reUpload"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCameraShootActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/HasCertifiedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "uploadPaperView"

    const-string/jumbo v7, "attestationDetail"

    const-string/jumbo v8, "paiButton"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
