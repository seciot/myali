.class final Lcom/alipay/mobile/security/accountmanager/ui/bb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/OnSendCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSend(Lcom/alipay/mobile/commonui/widget/SendResultCallback;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)I

    move-result v0

    if-ne v3, v0, :cond_1

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;->b(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/bb;->a:Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/ForgotLoginPwdActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
