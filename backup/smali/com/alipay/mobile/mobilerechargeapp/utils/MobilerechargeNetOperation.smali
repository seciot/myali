.class public Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/common/RpcService;

.field private b:Ljava/lang/String;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private d:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

.field private e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b:Ljava/lang/String;

    const-class v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->d:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->a:Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

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

    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->c:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->mobileNo:Ljava/lang/String;

    const-string/jumbo v1, "BalanceAlert"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->alertType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;->alertCancel(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->mobileNo:Ljava/lang/String;

    const-string/jumbo v1, "BalanceAlert"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->alertType:Ljava/lang/String;

    iput-object p2, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->checkCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;->alertSign(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    return-object v0
.end method

.method public final a()Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->mobileNo:Ljava/lang/String;

    const-string/jumbo v1, "BalanceAlert"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->alertType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;->alertSwitch(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSwitchRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;)Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->d:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    invoke-interface {v0, p1}, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;->create(Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderReq;)Lcom/alipay/mobileprod/biz/recharge/dto/CreateOrderRes;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;
    .locals 2

    if-nez p2, :cond_0

    const-string/jumbo p2, ""

    :cond_0
    if-nez p3, :cond_1

    const-string/jumbo p3, ""

    :cond_1
    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;->setMobile(Ljava/lang/String;)V

    iput-object p2, v0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;->sceneCode:Ljava/lang/String;

    iput-object p3, v0, Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->d:Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileRechargeService;->queryEcard(Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardReq;)Lcom/alipay/mobileprod/biz/recharge/dto/QueryEcardRes;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->mobileNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;->alertSignQuery(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignQueryRes;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;
    .locals 2

    new-instance v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;

    invoke-direct {v0}, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;-><init>()V

    iput-object p1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->mobileNo:Ljava/lang/String;

    const-string/jumbo v1, "BalanceAlert"

    iput-object v1, v0, Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;->alertType:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/mobilerechargeapp/utils/MobilerechargeNetOperation;->e:Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;

    invoke-interface {v1, v0}, Lcom/alipay/mobileprod/biz/recharge/MobileOperatorAlertService;->preAlertSign(Lcom/alipay/mobileprod/biz/recharge/dto/OperatorAlertReq;)Lcom/alipay/mobileprod/biz/recharge/dto/AlertSignRes;

    move-result-object v0

    return-object v0
.end method
