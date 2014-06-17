.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->f:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$11;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method
