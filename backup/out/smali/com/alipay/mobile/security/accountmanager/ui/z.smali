.class final Lcom/alipay/mobile/security/accountmanager/ui/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

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
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->l:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->m:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->j:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/z;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->n:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_2
.end method
