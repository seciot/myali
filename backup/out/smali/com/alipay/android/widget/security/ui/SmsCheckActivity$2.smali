.class Lcom/alipay/android/widget/security/ui/SmsCheckActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$2;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SmsCheckActivity$2;->a:Lcom/alipay/android/widget/security/ui/SmsCheckActivity;

    invoke-static {v1}, Lcom/alipay/android/widget/security/ui/SmsCheckActivity;->a(Lcom/alipay/android/widget/security/ui/SmsCheckActivity;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->c(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
