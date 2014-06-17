.class Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000038"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "confirmView"

    const-string/jumbo v7, "realNameDetail"

    const-string/jumbo v8, "checkUp"

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;->a()Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    const-string/jumbo v2, "\u4e0b\u4e00\u6b65\u5c06\u8fdb\u884c\u94f6\u884c\u5361\u9a8c\u8bc1"

    const-string/jumbo v3, "\u786e\u5b9a"

    new-instance v4, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2$1;-><init>(Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v1, v9

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
