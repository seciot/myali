.class final Lcom/alipay/mobile/security/accountmanager/ui/bs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bs;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bs;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->p:Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APCheckboxWithLinkText;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bs;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bs;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->setInputType(I)V

    goto :goto_0
.end method
