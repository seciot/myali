.class Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/service/a;

.field final synthetic b:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

.field final synthetic c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->a:Lcom/alipay/android/widget/security/service/a;

    iput-object p3, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->b:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->c:Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->a:Lcom/alipay/android/widget/security/service/a;

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_$1;->b:Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;->a(Lcom/alipay/android/widget/security/ui/authentication/UploadIdResultFragment_;Lcom/alipay/android/widget/security/service/a;Lcom/alipay/mobilesecurity/core/model/account/certify/CardInfo;)V

    return-void
.end method
