.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-static {v1, v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->a(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;Lcom/alipay/mobile/framework/service/common/SchemeService;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000043"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "bindingMobileView"

    const-string/jumbo v7, "securityCheckUpIndex"

    const-string/jumbo v8, "bindingMobile"

    const-string/jumbo v9, "-"

    const-string/jumbo v10, "u"

    const-string/jumbo v11, "c"

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "-"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "-"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "-"

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "-"

    aput-object v14, v12, v13

    const/4 v13, 0x4

    iget-object v14, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v14}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->c(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$4;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/BindPhoneService;->bindPhone(Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    return-void
.end method
