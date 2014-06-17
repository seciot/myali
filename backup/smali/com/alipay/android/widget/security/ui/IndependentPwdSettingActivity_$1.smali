.class Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

.field final synthetic b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;

    iput-object p2, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;->b:Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;->a:Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;

    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;->a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    return-void
.end method
