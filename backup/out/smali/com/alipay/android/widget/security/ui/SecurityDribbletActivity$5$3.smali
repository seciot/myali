.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$3;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$3;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
