.class public abstract Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APSixNumberPwdInputBox$PWDInputListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;,
        Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;,
        Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$d;,
        Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;
    }
.end annotation


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

.field private n:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private o:Landroid/net/wifi/WifiManager;

.field private p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private q:Lcom/alipay/android/app/helper/PayHelperServcie;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-string/jumbo v0, "BaseAuthActivity"

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->e:Ljava/lang/String;

    const-string/jumbo v0, "Preparing"

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d:Z

    return-void
.end method

.method static synthetic A(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic B(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic C(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method private b()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    move-object v7, v1

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->o:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->o:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->n:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getCacheLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->n:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;->getLocationInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;

    move-result-object v1

    move-object v5, v1

    :goto_2
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getCellId()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    :try_start_2
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, "cid"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "lac"

    invoke-virtual {v3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLongitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/bean/LocationInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v5

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v8

    const-string/jumbo v9, "145"

    invoke-interface {v2, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "146"

    invoke-interface {v2, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "isPrisonBreak"

    invoke-virtual {v5}, Lcom/alipay/mobile/common/info/DeviceInfo;->ismRooted()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "mobileOperatingPlatform"

    const-string/jumbo v7, "android"

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "version"

    invoke-virtual {v8}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "OSVersion"

    invoke-virtual {v5}, Lcom/alipay/mobile/common/info/DeviceInfo;->getOsVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "currentLongitudeAndLatitude"

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "143"

    invoke-virtual {v5}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "144"

    invoke-virtual {v5}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->q:Lcom/alipay/android/app/helper/PayHelperServcie;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "deviceSign"

    iget-object v4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->q:Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v4}, Lcom/alipay/android/app/helper/PayHelperServcie;->getPaySysInfo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string/jumbo v1, "deviceUTDID"

    invoke-static {p0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "getPosDate"

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "lacID"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "wifiNodeName"

    invoke-interface {v2, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "wirelessMac"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v2

    :goto_5
    return-object v0

    :catch_0
    move-exception v3

    move-object v3, v0

    move-object v4, v1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v0, v2

    goto :goto_5

    :cond_2
    move-object v1, v0

    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_4

    :cond_3
    move-object v5, v1

    goto/16 :goto_2

    :cond_4
    move-object v6, v0

    goto/16 :goto_1

    :cond_5
    move-object v7, v0

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/RSAService;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/security/RSAService;->RSAEncrypt(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->f:Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    return-object v0
.end method

.method static synthetic h(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic i(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V
    .locals 3

    sget v0, Lcom/alipay/mobile/clientsecurity/R$layout;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->setContentView(I)V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->aW:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->resetFlowTipType(I)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->flow_network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setTips(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->m:Lcom/alipay/mobile/commonui/widget/APFlowTipView;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/ui/R$string;->tryAgin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/k;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/k;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/commonui/widget/APFlowTipView;->setAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic j(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic k(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic l(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic m(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic n(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic o(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic q(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method static synthetic r(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic s(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic t(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic u(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic v(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic y(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic z(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method protected abstract a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
.end method

.method public final a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x0

    const/4 v5, -0x1

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/p;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/deviceAuthorization/ui/p;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Landroid/widget/ImageView;)V

    new-instance v7, Lcom/alipay/mobile/deviceAuthorization/ui/q;

    invoke-direct {v7, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/q;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    move-object v2, v1

    move-object v3, p2

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;IILcom/alipay/mobile/common/image/ImageCacheListener;)V

    return-void
.end method

.method public abstract a(Lcom/alipay/mobilesecurity/core/model/approve/PrepareApproveRes;)V
.end method

.method protected abstract a(Ljava/lang/String;)V
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->s:I

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/l;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/l;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->t:I

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/m;

    invoke-direct {v2, p0, p2}, Lcom/alipay/mobile/deviceAuthorization/ui/m;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a:Z

    iput-object p2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c:Ljava/util/List;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/alipay/mobile/deviceAuthorization/ui/n;

    invoke-direct {v1, p0, p3, p2, p4}, Lcom/alipay/mobile/deviceAuthorization/ui/n;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v2, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;

    invoke-direct {v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;-><init>()V

    const-string/jumbo v0, "prepay_initial"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setBizSubType(Ljava/lang/String;)V

    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;->setOrderNo(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->bootToCertification(Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierOrder;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    const-string/jumbo v0, "PAYMENTPASSWORD"

    invoke-static {v0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->I:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/deviceAuthorization/ui/o;

    invoke-direct {v2, p0, p3}, Lcom/alipay/mobile/deviceAuthorization/ui/o;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;

    invoke-direct {v0, p0, p3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d:Z

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/r;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/r;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->r:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/s;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/s;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;Lcom/alipay/mobile/framework/service/ext/security/BindPhoneCallBack;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->t:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/deviceAuthorization/ui/t;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/t;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/clientsecurity/R$string;->v:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/alipay/mobile/deviceAuthorization/ui/u;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/deviceAuthorization/ui/u;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v2, 0x0

    const/16 v0, 0x1771

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->s:Ljava/lang/String;

    const-string/jumbo v1, "Confirming"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a:Z

    iget-object v1, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->r:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->c:Ljava/util/List;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->f:Lcom/alipay/mobilesecurity/biz/gw/service/approve/ApproveFacade;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->g:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->o:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->n:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->p:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->q:Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "targetId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "targetType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "partnerId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->l:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;-><init>(Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000055"

    invoke-interface {v0, v2, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    iget-boolean v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/deviceAuthorization/ui/BaseAuthActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000055"

    const-string/jumbo v2, "20000055"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    return-void
.end method
