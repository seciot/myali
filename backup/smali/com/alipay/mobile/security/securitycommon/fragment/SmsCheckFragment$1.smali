.class Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Lcom/alipay/mobile/commonui/widget/APInputBox;

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

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->bB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->b(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->c(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode;->dispose()V

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    iget-object v2, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/security/SmsCheckResultCallBack;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment$1;->a:Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;->a(Lcom/alipay/mobile/security/securitycommon/fragment/SmsCheckFragment;)Lcom/alipay/mobile/commonui/widget/APInputBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->b(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0
.end method
