.class public Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;
.super Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserInfoSessionId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    const-string/jumbo v1, ""

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public isQihooGuardOpened()Z
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z

    move-result v0

    return v0
.end method

.method public isQihooInstalled()Z
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooInstalled()Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public readBankCard(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/scan/ScanService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/scan/ScanService;

    new-instance v2, Lcom/alipay/mobile/scan/ScanRequest;

    invoke-direct {v2}, Lcom/alipay/mobile/scan/ScanRequest;-><init>()V

    sget-object v3, Lcom/alipay/mobile/scan/ScanRequest$ScanType;->CARD:Lcom/alipay/mobile/scan/ScanRequest$ScanType;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/scan/ScanRequest;->setScanType(Lcom/alipay/mobile/scan/ScanRequest$ScanType;)Lcom/alipay/mobile/scan/ScanRequest;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/scan/ScanRequest;->setSourceId(Ljava/lang/String;)Lcom/alipay/mobile/scan/ScanRequest;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/phonecashier/assist/a;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/phonecashier/assist/a;-><init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/scan/ScanService;->scan(Lcom/alipay/mobile/scan/ScanRequest;Lcom/alipay/mobile/scan/ScanCallback;)V

    return-void
.end method

.method public readQihooSMS()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->readQihooSMS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
