.class Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2$1;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;

    iget-object v1, v1, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/RealNameFragment;->b(Lcom/alipay/android/widget/security/service/a;)V

    return-void
.end method
