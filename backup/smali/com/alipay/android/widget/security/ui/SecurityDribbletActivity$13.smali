.class Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$13;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity$13;->a:Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityDribbletActivity;->a(Ljava/lang/Boolean;)V

    return-void
.end method
