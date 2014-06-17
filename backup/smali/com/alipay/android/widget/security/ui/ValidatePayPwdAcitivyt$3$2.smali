.class Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000013"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3$2;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$3;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->finish()V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
