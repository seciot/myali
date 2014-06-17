.class Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/card/NewExpressCardCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/service/a;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;Lcom/alipay/android/widget/security/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->a:Lcom/alipay/android/widget/security/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Z)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->a:Lcom/alipay/android/widget/security/service/a;

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->b(Lcom/alipay/android/widget/security/service/a;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "bindCardSuccessView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment$2;->b:Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/BaseAuthenticationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "bindCardFailView"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
