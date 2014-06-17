.class final Lcom/alipay/mobile/security/accountmanager/ui/cl;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityPwdUtil;->a(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->cc:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->toast(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->a:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->b:Lcom/alipay/mobile/commonui/widget/APInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APInputBox;->getInputedText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->co:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->l:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/cl;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
