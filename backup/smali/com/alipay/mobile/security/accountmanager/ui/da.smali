.class final Lcom/alipay/mobile/security/accountmanager/ui/da;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->c:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/da;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->d:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_1
.end method
