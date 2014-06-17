.class public abstract Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
.super Ljava/util/Observable;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/download/DownloadCallback;


# static fields
.field public static final APPSTORE_APP_ID:Ljava/lang/String; = "APPSTORE_APP_ID"

.field public static final APPSTORE_APP_TYPE:Ljava/lang/String; = "APPSTORE_APP_TYPE"

.field public static final APP_STORE_IMAGE_GROUP_PREFIX:Ljava/lang/String; = "appstoreimagegroup"

.field private static final CREATE_SHORTCUT_ACTION:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field private static DEFAULT_ICON:Landroid/graphics/Bitmap; = null

.field public static final FROM_DESKTOP:Ljava/lang/String; = "desktop"

.field private static final LOG_TAG:Ljava/lang/String; = "App"

.field private static final TAG:Ljava/lang/String; = "App"

.field private static authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field protected static context:Landroid/content/Context;

.field private static imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field private static localIcons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

.field private static oldVersions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

.field private static thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;


# instance fields
.field protected appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

.field private authType:Ljava/lang/String;

.field protected icon:Landroid/graphics/Bitmap;

.field installStatusMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->DEFAULT_ICON:Landroid/graphics/Bitmap;

    .line 75
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->oldVersions:Ljava/util/Map;

    .line 117
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 123
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

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 129
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 135
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 141
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

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 80
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getImageGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/common/ImageLoaderService;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getImageLoaderService()Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1
    .parameter

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    return-void
.end method

.method public static addOldVersion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 165
    if-nez p0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getOldVersions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private authAfterLogin(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 796
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 799
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->getAuthStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;

    move-result-object v3

    .line 802
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 805
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->isSignStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getAuthCode()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-virtual {v3}, Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;->getResultCode()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    .line 808
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 810
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;->authSign(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobileapp/core/model/app/MobileAppAuthStatusVO;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkLoginAndAuth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 886
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAuth()Z

    move-result v0

    if-nez v0, :cond_1

    .line 888
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onNotNeedAuth()V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 891
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 893
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 894
    if-eqz v0, :cond_2

    .line 895
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAfterLogin(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 901
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    .line 904
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V

    goto :goto_0

    .line 898
    :cond_2
    :try_start_1
    invoke-interface {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;->onAuthFailed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 907
    :cond_3
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    .line 908
    if-eqz v0, :cond_0

    .line 909
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    goto :goto_0
.end method

.method private doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 834
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    .line 864
    return-void
.end method

.method private getAppShortcutIntent(Ljava/util/HashMap;)Landroid/content/Intent;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 921
    if-nez p1, :cond_0

    .line 922
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 923
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 924
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 926
    const/high16 v0, 0x1000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 927
    const-string/jumbo v0, "appId"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const-string/jumbo v0, "needAuth"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedAuth()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 929
    const-string/jumbo v1, "isApkApp"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 930
    const-string/jumbo v0, "from"

    const-string/jumbo v1, "desktop"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 933
    const-string/jumbo v0, "packageName"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->H5App:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_2

    .line 937
    const-string/jumbo v0, "appId"

    const-string/jumbo v1, "10000111"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 938
    const-string/jumbo v0, "TARGET"

    const-string/jumbo v1, "LAUNCH_APP"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const-string/jumbo v0, "APP_ID"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 941
    :cond_2
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 943
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 944
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 929
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 946
    :cond_4
    return-object v2
.end method

.method private getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    .line 126
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

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 127
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method private getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 985
    if-nez p2, :cond_0

    move-object v0, v1

    .line 1003
    :goto_0
    return-object v0

    .line 987
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 989
    if-eqz v0, :cond_4

    .line 990
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 991
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 992
    if-eqz v3, :cond_1

    .line 993
    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    .line 994
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 995
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 996
    :cond_2
    iget-object v6, v5, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 997
    iget-object v0, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    goto :goto_0

    .line 993
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1003
    goto :goto_0
.end method

.method public static declared-synchronized getDefaultIcon()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 592
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->DEFAULT_ICON:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->DEFAULT_ICON:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 593
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->DEFAULT_ICON:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :goto_0
    monitor-exit v1

    return-object v0

    .line 595
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 597
    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->DEFAULT_ICON:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getImageGroup()Ljava/lang/String;
    .locals 4

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    :cond_0
    const-string/jumbo v0, "appstoreimagegroup0"

    .line 777
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appstoreimagegroup"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getImageLoaderService()Lcom/alipay/mobile/framework/service/common/ImageLoaderService;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    .line 133
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    return-object v0
.end method

.method private static getLocalIcons()Ljava/util/Map;
    .locals 5
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

    .prologue
    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 95
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;-><init>()V

    .line 96
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AllAppInfoDao;->getAppEntities()Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 98
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    .line 99
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_1
    return-object v1
.end method

.method public static getOldVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 171
    if-nez p0, :cond_0

    .line 172
    const/4 v0, 0x0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getOldVersions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static getOldVersions()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 87
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->oldVersions:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->oldVersions:Ljava/util/Map;

    .line 89
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->oldVersions:Ljava/util/Map;

    return-object v0
.end method

.method private getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    if-nez v0, :cond_0

    .line 138
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 139
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->scheduleService:Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    return-object v0
.end method

.method private getThirdPartyAuthorizeService()Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    if-nez v0, :cond_0

    .line 144
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

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    .line 145
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->thirdPartyAuthorizeService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/ThirdPartyAuthorizeService;

    return-object v0
.end method

.method private moveAppByDisplayPlace(I)V
    .locals 3
    .parameter

    .prologue
    .line 281
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->isAddedToMyApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMyAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;

    move-result-object v0

    .line 286
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setAppDisplayPlace(I)V

    .line 287
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getMinRank()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;->setUserRank(J)V

    .line 288
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->saveOrUpdateMyAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/MyAppEntity;)V

    .line 290
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 291
    if-nez p1, :cond_1

    const/4 v0, 0x2

    .line 292
    :goto_1
    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-direct {v1, v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;-><init>(ILcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private remove(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 317
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 320
    new-instance v2, Landroid/content/ComponentName;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".AppLaunchFromShortcutActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 323
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 324
    return-void
.end method

.method private removeFromDatabase()V
    .locals 2

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->removeMyAppById(Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->removeAppEntityById(Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public static removeOldVersion(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 177
    if-nez p0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getOldVersions()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setLocalIcons(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    sput-object p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    .line 162
    return-void
.end method


# virtual methods
.method public addToDesktop(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppShortcutIntent(Ljava/util/HashMap;)Landroid/content/Intent;

    move-result-object v0

    .line 297
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->createAppShortcut(Landroid/content/Intent;)V

    .line 298
    return-void
.end method

.method public auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 877
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 883
    return-void
.end method

.method public authAndLaunch(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 821
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 827
    return-void
.end method

.method public abstract autoUpgradeApp()V
.end method

.method public final createAppShortcut(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 967
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 968
    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 970
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 971
    const-string/jumbo v1, "from"

    const-string/jumbo v2, "desktop"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 973
    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    const-string/jumbo v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->createShortcutIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 977
    const-string/jumbo v1, "duplicate"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 979
    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 981
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 982
    return-void
.end method

.method public abstract downloadApp()V
.end method

.method public getAppDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAutoStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDesc()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDownloadService()Lcom/alipay/mobile/framework/service/common/DownloadService;
    .locals 2

    .prologue
    .line 119
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/DownloadService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/DownloadService;

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    .line 121
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->mDownloadService:Lcom/alipay/mobile/framework/service/common/DownloadService;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    .line 479
    :goto_0
    return-object v0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote()Z

    move-result v0

    if-nez v0, :cond_1

    .line 472
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->loadFromLocal()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_1

    .line 475
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/openplatform/common/R$drawable;->app_default:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    .line 381
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 383
    const-string/jumbo v1, "ANDROID"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 384
    const-string/jumbo v1, "ANDROID"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    :goto_0
    return-object v0

    .line 385
    :cond_0
    const-string/jumbo v1, "ANDROID_HTTPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    const-string/jumbo v1, "ANDROID_HTTPS"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;
    .locals 3

    .prologue
    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 637
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 638
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    :goto_0
    return-object v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installStatusMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    goto :goto_0
.end method

.method public abstract getInstalledPath()Ljava/lang/String;
.end method

.method public getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getInstallerType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    return-object v0
.end method

.method public getLabelContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getLabelContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSdkVersion()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 193
    :goto_0
    return v0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 190
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public getMinSupportAppVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportAppVersionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportClientVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportClientVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSupportSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getMinSupportSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemeUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSchemeUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSize()I

    move-result v0

    return v0
.end method

.method public getSlogan()Ljava/lang/String;
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getSlogan()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTipsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getTipsType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDesktopShortcut()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1007
    .line 1008
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1009
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.android.launcher.permission.READ_SETTINGS"

    invoke-direct {p0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthorityFromPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/favorites?notify=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1014
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v2, v7

    const-string/jumbo v3, "iconResource"

    aput-object v3, v2, v6

    const-string/jumbo v3, "title=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1019
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    .line 1022
    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0
.end method

.method public iconHasLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 403
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs abstract installApp([Ljava/lang/String;)V
.end method

.method public isAddedAsMyApp()Z
    .locals 2

    .prologue
    .line 343
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/MyAppDao;->isAddedToMyApp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAlipayApp()Z
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isAlipayApp()Z

    move-result v0

    return v0
.end method

.method public isDisplay()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v0

    return v0
.end method

.method public abstract isDownloading()Z
.end method

.method isIconRemote()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    .line 486
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 489
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isIndependentApp()Z
    .locals 2

    .prologue
    .line 1052
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isInstallBySystem()Z
.end method

.method public abstract isInstalled()Z
.end method

.method public isNeedAuth()Z
    .locals 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "2013062600000474"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isNeedAuthorize()Z

    move-result v0

    goto :goto_0
.end method

.method public isNeedAutoUpgrade()Z
    .locals 2

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAutoStatus()Ljava/lang/String;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIndependentApp()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    const-string/jumbo v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    :cond_0
    const/4 v0, 0x1

    .line 442
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isNeedUpgrade()Z
.end method

.method public isOffline()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getStatus()Ljava/lang/String;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_1

    .line 454
    const-string/jumbo v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "autoUn"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "un"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 458
    :cond_1
    return v0
.end method

.method public abstract isPreInstall()Z
.end method

.method public isRecommend()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isRecommend()Z

    move-result v0

    return v0
.end method

.method public isShortcutInstalled()Z
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1026
    .line 1027
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1028
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 1030
    const-string/jumbo v1, "com.android.launcher2.settings"

    .line 1035
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "content://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/favorites?notify=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "title"

    aput-object v3, v2, v7

    const-string/jumbo v3, "iconResource"

    aput-object v3, v2, v6

    const-string/jumbo v3, "title=?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1040
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1042
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "\u5df2\u521b\u5efa"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v6

    .line 1044
    :goto_1
    return v0

    .line 1032
    :cond_0
    const-string/jumbo v1, "com.android.launcher.settings"

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1
.end method

.method public abstract launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public loadFromLocal()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 564
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 566
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getLocalIcons()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 572
    :cond_1
    :goto_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move-object v0, v1

    .line 588
    :cond_3
    :goto_1
    return-object v0

    .line 574
    :cond_4
    const-class v2, Lcom/alipay/mobile/openplatform/common/R$drawable;

    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->localIcons:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 575
    if-eqz v0, :cond_5

    .line 576
    const-class v2, Lcom/alipay/mobile/openplatform/common/R$drawable;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 577
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 579
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v2

    if-nez v2, :cond_3

    .line 581
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppUtils;->createRoundIcon(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    .line 585
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    :cond_5
    move-object v0, v1

    .line 588
    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public loadIcon(Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V
    .locals 2
    .parameter

    .prologue
    .line 503
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->iconHasLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->icon:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;->onLoad(Landroid/graphics/Bitmap;)V

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIconRemote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getTaskScheduleService()Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/a;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public moveToAppCenter()V
    .locals 3

    .prologue
    .line 268
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveAppByDisplayPlace(I)V

    .line 269
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u79fb\u5230\uff3b\u66f4\u591a\uff3d"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public moveToHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 276
    invoke-direct {p0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveAppByDisplayPlace(I)V

    .line 277
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "\u5df2\u6dfb\u52a0\u5230\uff3b\u9996\u9875\uff3d"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 278
    return-void
.end method

.method public offline()V
    .locals 0

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromDesktop()V

    .line 260
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->uninstallApp()V

    .line 261
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->removeFromDatabase()V

    .line 262
    return-void
.end method

.method public onCancel(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 705
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 706
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 707
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 708
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 709
    return-void
.end method

.method public onFailed(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 649
    const-string/jumbo v0, "auto"

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAutoStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 653
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 654
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 655
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 656
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 657
    return-void
.end method

.method public onFinish(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 611
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 612
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 613
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 614
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 615
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)V

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isIndependentApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 619
    new-array v0, v3, [Ljava/lang/String;

    aput-object p2, v0, v2

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->installApp([Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 622
    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->addToDownloadedAppsMap(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInstallComplete(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 661
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getOldVersions()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppByAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    .line 665
    if-eqz v1, :cond_0

    const-string/jumbo v2, "auto"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAutoStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 666
    const/4 v0, 0x1

    .line 668
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 669
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Ljava/lang/String;)V

    .line 670
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppInfo()Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->setAutoStatus(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v1

    .line 674
    if-eqz p1, :cond_2

    .line 675
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 687
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 688
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 689
    return-void

    .line 677
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-nez v2, :cond_3

    .line 679
    if-nez v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isPreInstall()Z

    move-result v0

    if-nez v0, :cond_3

    .line 680
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " \u5b89\u88c5\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 685
    :cond_3
    :goto_1
    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPrepare(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;)V
    .locals 2
    .parameter

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 698
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 699
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 700
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 701
    return-void
.end method

.method public onProgress(Lcom/alipay/mobile/framework/service/ext/download/DownloadRequest;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    .line 603
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setDownloadProgress(I)V

    .line 604
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->setStatus(I)V

    .line 605
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->setChanged()V

    .line 606
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->notifyObservers(Ljava/lang/Object;)V

    .line 607
    return-void
.end method

.method public abstract preInstallApp()Z
.end method

.method public removeFromDesktop()V
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->remove(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public setAppInfo(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 340
    return-void
.end method

.method public setAuthType(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public final showToastCenter(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 867
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 868
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    .line 869
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->appInfo:Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "empty app"

    goto :goto_0
.end method

.method public abstract uninstallApp()V
.end method
