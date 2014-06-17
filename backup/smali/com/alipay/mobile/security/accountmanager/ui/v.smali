.class final Lcom/alipay/mobile/security/accountmanager/ui/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->v(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->v(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->d(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {v1, v2, v4, v4}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->y(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/v;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    return-void
.end method
