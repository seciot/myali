.class public Lcom/alipay/android/widget/security/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "SecurityWidgetGroupApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.security.app.SecurityWidgetGroupApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000113"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "RobotXiaoBaoApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.RobotXiaoBaoApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000011"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "PushSettingApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.PushSettingApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000023"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "PasswordManagerApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.PasswordManagerApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000028"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "SecurityGradeApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.SecurityGradeApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000043"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "SecurityCertified"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.SecurityCertifiedApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000038"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "SecurityOperateRecordsApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.SecurityOperateRecordsApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000026"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "AccountSecurityApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.AccountSecurityApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000057"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "independentPwdApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.IndependentPwdApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000051"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "modifySimplePwdApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.ModifySimplePwdApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000058"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "forgotMobilePwdApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.ForgotMobilePwdApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000060"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    const-string/jumbo v1, "reportLossApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.widget.security.app.ReportLossApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000068"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/android/widget/security/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
