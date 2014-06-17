.class Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "noRealNameEditView"

    const-string/jumbo v7, "noRealNameDetail"

    const-string/jumbo v8, "checkUp"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;

    invoke-direct {v1}, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->a:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/InputUserInfoFragment_;->a(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/UnRealNameFragment;->a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity;->a(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Z)V

    return-void
.end method
