.class public final Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;
.super Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;


# instance fields
.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$1;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_$2;-><init>(Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity_;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public final setContentView(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->setContentView(I)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/android/widget/security/ui/IndependentPwdSettingActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
