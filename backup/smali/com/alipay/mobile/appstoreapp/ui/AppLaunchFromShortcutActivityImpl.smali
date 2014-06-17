.class public Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;
.super Ljava/lang/Object;
.source "AppLaunchFromShortcutActivityImpl.java"


# static fields
.field private static final AUTH_FAIL_CLIENT_ERROR:I = -0x66

.field private static final AUTH_FAIL_GET_WALLET_TID_ERROR:I = -0x67

.field private static final AUTH_FAIL_NETWORK_ERROR:I = -0x64

.field private static final AUTH_FAIL_SERVER_RETURN:I = -0x65

.field private static final AUTH_NOT_NEED_AUTH:I = 0x64

.field private static final AUTH_SUCCESS:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppId:Ljava/lang/String;

.field private mIsApkApp:Z

.field private mIsFirstOnResume:Z

.field private mNeedAuth:Z

.field private mPackageName:Ljava/lang/String;

.field private mSwitchToFP:Ljava/lang/String;

.field private mTid:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mPackageName:Ljava/lang/String;

    .line 37
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    .line 38
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsFirstOnResume:Z

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mTid:Ljava/lang/String;

    .line 47
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mNeedAuth:Z

    .line 48
    iput-boolean v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsApkApp:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->authorize()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mTid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toAuth(Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;)V

    return-void
.end method

.method private authorize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mPackageName:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "needAuth"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mNeedAuth:Z

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "isApkApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsApkApp:Z

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "FacepayDT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 109
    const-string/jumbo v0, "10000014"

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    .line 113
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mNeedAuth:Z

    if-nez v0, :cond_1

    .line 114
    const-string/jumbo v0, ""

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V

    .line 170
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 124
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    .line 127
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mTid:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mTid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    sget-object v0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->TAG:Ljava/lang/String;

    .line 131
    const-string/jumbo v0, ""

    const/16 v1, -0x67

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->launchApp(Ljava/lang/String;I)V

    goto :goto_0

    .line 134
    :cond_2
    new-instance v0, Lcom/alipay/mobile/appstoreapp/ui/n;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/appstoreapp/ui/n;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/n;->start()V

    goto :goto_0
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 272
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".R$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 273
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 276
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private launchApp(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsApkApp:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->startApkApp(Ljava/lang/String;)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/util/AppCenterLogUtil;->c(Ljava/lang/String;)V

    .line 179
    return-void

    .line 176
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->startAlipayApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showToastCenter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/o;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/appstoreapp/ui/o;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method private startAlipayApp(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 184
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "alipays://platformapi/startapp?tagfrom=desktop"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&appId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 191
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&FacepayDT="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mSwitchToFP:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    const-string/jumbo v3, "10000111"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&TARGET="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "TARGET"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&APP_ID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "APP_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&alipay_user_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&auth_code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "&app_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 215
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toFinish()V

    .line 216
    return-void
.end method

.method private startApkApp(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "open_thirdparty_not_install"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V

    .line 222
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toFinish()V

    .line 247
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    if-nez v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    const-string/jumbo v1, "string"

    const-string/jumbo v2, "open_thirdparty_not_install"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->showToastCenter(Ljava/lang/String;)V

    .line 230
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toFinish()V

    goto :goto_0

    .line 233
    :cond_1
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 235
    const-string/jumbo v1, "alipay_user_id"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v1, "auth_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string/jumbo v1, "app_id"

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "source"

    const-string/jumbo v2, "alipay_wallet"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v1, "version"

    const-string/jumbo v2, "1.0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "alipay_client_version"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->toFinish()V

    goto :goto_0
.end method

.method private toAuth(Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;)V
    .locals 6
    .parameter

    .prologue
    .line 70
    new-instance v4, Lcom/alipay/mobile/appstoreapp/ui/m;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/appstoreapp/ui/m;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mUserId:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->authSignFromDeskTop(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Landroid/content/Context;)V

    .line 96
    return-void
.end method

.method private toFinish()V
    .locals 4

    .prologue
    .line 262
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/p;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/p;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mActivity:Landroid/app/Activity;

    .line 54
    iget-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsFirstOnResume:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/appstoreapp/ui/l;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/ui/l;-><init>(Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/appstoreapp/ui/AppLaunchFromShortcutActivityImpl;->mIsFirstOnResume:Z

    .line 63
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method
