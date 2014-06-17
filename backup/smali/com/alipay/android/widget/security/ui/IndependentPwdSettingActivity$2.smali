.class Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "msp"

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->c(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->d(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$2;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Z)V

    goto :goto_0
.end method
