.class Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;->b:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;->b:Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_$1;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityCertifiedCardActivity_;Landroid/graphics/Bitmap;)V

    return-void
.end method
