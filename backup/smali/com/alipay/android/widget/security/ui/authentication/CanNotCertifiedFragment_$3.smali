.class Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/service/a;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;Lcom/alipay/android/widget/security/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_$3;->b:Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_$3;->a:Lcom/alipay/android/widget/security/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_$3;->b:Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_$3;->a:Lcom/alipay/android/widget/security/service/a;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;->a(Lcom/alipay/android/widget/security/ui/authentication/CanNotCertifiedFragment_;Lcom/alipay/android/widget/security/service/a;)V

    return-void
.end method
