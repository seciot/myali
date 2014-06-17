.class final Lcom/alipay/mobile/security/accountmanager/ui/de;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v1, v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->j:Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APCheckCodeHorizontalView;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    iget-object v3, v3, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/de;->a:Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ModifyPayPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
