.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APAbsTableView$OnSwitchListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchListener(ZLandroid/view/View;)V
    .locals 9

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "inputLoginPwdBox"

    const-string/jumbo v7, "mobilePasswordIndex"

    const-string/jumbo v8, "openGesture"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    invoke-static {v0, p1}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "security"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "inputLoginPwdBox"

    const-string/jumbo v7, "mobilePasswordIndex"

    const-string/jumbo v8, "closeGesture"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity$1;->a:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;

    const/4 v1, 0x2

    iput v1, v0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity;->j:I

    goto :goto_0
.end method
