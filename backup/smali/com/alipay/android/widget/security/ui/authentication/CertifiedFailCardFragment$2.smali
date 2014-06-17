.class Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Lcom/alipay/android/widget/security/service/a;

    invoke-direct {v0}, Lcom/alipay/android/widget/security/service/a;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment$2;->a:Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/ui/authentication/CertifiedFailCardFragment;->a(Lcom/alipay/android/widget/security/service/a;)V

    return-void
.end method
