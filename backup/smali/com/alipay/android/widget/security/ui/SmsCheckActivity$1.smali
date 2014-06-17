.class Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->b(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->c(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$1;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
