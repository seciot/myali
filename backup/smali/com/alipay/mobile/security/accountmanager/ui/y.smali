.class final Lcom/alipay/mobile/security/accountmanager/ui/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->e(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/y;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    goto/16 :goto_0
.end method
