.class Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->e(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$5;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Z)V

    goto :goto_0
.end method
