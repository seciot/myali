.class Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$5;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity$5;->a:Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;

    invoke-virtual {v0}, Lcom/alipay/android/widget/security/ui/ModifySimplePwdActivity;->onBackPressed()V

    return-void
.end method
