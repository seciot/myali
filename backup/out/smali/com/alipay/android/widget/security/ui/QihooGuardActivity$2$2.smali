.class Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;

    iget-object v0, v0, Lcom/alipay/android/widget/security/ui/QihooGuardActivity$2;->a:Lcom/alipay/android/widget/security/ui/QihooGuardActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/QihooGuardActivity;->finish()V

    return-void
.end method
