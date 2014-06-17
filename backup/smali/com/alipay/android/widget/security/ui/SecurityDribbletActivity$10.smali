.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->n:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v3, v2}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->by:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->toast(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->dismissProgressDialog()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$10;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->d()V

    goto :goto_0
.end method
