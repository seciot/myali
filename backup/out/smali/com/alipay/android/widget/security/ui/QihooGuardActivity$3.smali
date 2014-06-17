.class Lcom/alipay/android/widget/security/ui/QihooGuardActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$3;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$3;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->finish()V

    return-void
.end method
