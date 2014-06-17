.class Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$1;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
