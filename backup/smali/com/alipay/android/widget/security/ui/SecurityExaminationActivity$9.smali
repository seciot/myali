.class Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 15

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->u(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->v(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000043"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "bindingMobileBox"

    const-string/jumbo v7, "securityCheckUpIndex"

    const-string/jumbo v8, "checkUp"

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

    iget-object v14, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v14}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->cA:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v3}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->aF:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$1;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;)V

    iget-object v5, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-virtual {v5}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alipay/mobile/clientsecurity/R$string;->aI:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$2;

    invoke-direct {v6, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$2;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;)V

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->x(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

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

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "-"

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "20000043"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "checkDeviceView"

    const-string/jumbo v7, "securityCheckUpIndex"

    const-string/jumbo v8, "checkUp"

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

    iget-object v14, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v14}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->b(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/service/common/SchemeService;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    const-string/jumbo v0, "prepay_initial"

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;->a:Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;

    invoke-static {v0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;->y(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    new-instance v2, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;

    invoke-direct {v2, p0}, Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9$3;-><init>(Lcom/alipay/android/widget/security/ui/SecurityExaminationActivity$9;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    goto/16 :goto_0
.end method
