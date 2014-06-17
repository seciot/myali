.class final Lcom/alipay/mobile/security/accountmanager/ui/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->f(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->g(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->h(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->i(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->j(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->j(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->j(Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bu;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotPayPwdActivity;->dismissProgressDialog()V

    goto/16 :goto_0
.end method
