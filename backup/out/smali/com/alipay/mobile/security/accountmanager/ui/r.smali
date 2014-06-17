.class final Lcom/alipay/mobile/security/accountmanager/ui/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/security/SMSSendResultCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->p(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->aG:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->t:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->a(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->q(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity$a;-><init>(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;B)V

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->r(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->r(Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/ui/r;->a:Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/ui/BindPhoneActivity;->h:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    goto :goto_0
.end method
