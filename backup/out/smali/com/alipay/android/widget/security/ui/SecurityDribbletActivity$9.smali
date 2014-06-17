.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->e(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method
