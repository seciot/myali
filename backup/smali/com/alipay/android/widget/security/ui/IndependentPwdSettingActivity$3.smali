.class Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.DIAL"

    const-string/jumbo v2, "tel:95188"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity$3;->a:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;Z)V

    return-void
.end method
