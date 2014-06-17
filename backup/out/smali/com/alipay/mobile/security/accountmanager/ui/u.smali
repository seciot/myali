.class final Lcom/alipay/mobile/security/accountmanager/ui/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->v(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->v(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->w(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/SMSService;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/SMSService;->isCanUseSim()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->c(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->x(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->r(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aB:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v4, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$b;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/u;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->c:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
