.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    iget-object v2, v2, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$ListenerThread;-><init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;IB)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5$1;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$5;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    iget-object v3, v3, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->m:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method
