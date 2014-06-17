.class Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iput-boolean p3, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->c:Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_$3;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;->a(Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;Z)V

    return-void
.end method
