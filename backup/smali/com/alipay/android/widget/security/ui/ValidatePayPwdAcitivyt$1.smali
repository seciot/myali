.class Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt$1;->a:Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/ValidatePayPwdAcitivyt;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
