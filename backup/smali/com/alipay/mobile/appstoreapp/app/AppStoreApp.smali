.class public Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;
.source "AppStoreApp.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppStoreApp"


# instance fields
.field private appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

.field private startParams:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)Landroid/os/Bundle;
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->openInnerWebBrowser(Ljava/lang/String;)V

    return-void
.end method

.method private createUrl(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    const-string/jumbo v0, "URL"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "APP_ID"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 198
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string/jumbo v0, "auth_code"

    invoke-virtual {v2, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 201
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    const-string/jumbo v0, "alipay_user_id"

    invoke-virtual {v2, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    :cond_1
    const-string/jumbo v0, "app_id"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 205
    const-string/jumbo v0, "version"

    const-string/jumbo v1, "1.0"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 207
    const-string/jumbo v0, "alipay_client_version"

    invoke-static {}, Lcom/alipay/mobile/common/info/AppInfo;->getInstance()Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 209
    const-string/jumbo v0, "source"

    const-string/jumbo v1, "alipay_wallet"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 211
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 212
    const-string/jumbo v3, "URL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "TARGET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "APP_ID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "appId"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 217
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "open url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openInnerWebBrowser(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 222
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    .line 226
    const-string/jumbo v1, "alipays://platformapi/startapp?actionType=WebView&appId=20000042&url={0}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    .line 230
    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStartParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 46
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v0, "DETAIL"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 69
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 73
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 72
    :cond_6
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    goto :goto_1

    .line 79
    :cond_7
    const-string/jumbo v0, "FASTLOGINAPPS"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/FastLoginAppActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_8
    const-string/jumbo v0, "LAUNCH_APP"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 88
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/appstoreapp/app/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/appstoreapp/app/a;-><init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 118
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_b

    .line 120
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    :cond_b
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->downloadApp()V

    .line 179
    :cond_c
    :goto_2
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 127
    :cond_d
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 128
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v1, v2, :cond_e

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 133
    :cond_e
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto :goto_2

    .line 140
    :cond_f
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 144
    :cond_10
    const-string/jumbo v0, "LAUNCH_WEB"

    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "TARGET"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v1, "URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    const-string/jumbo v2, "APP_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->appManageService:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    new-instance v3, Lcom/alipay/mobile/appstoreapp/app/b;

    invoke-direct {v3, p0, v0}, Lcom/alipay/mobile/appstoreapp/app/b;-><init>(Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;Ljava/lang/String;)V

    const-string/jumbo v0, "publicp"

    invoke-virtual {v2, v1, v3, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->auth(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->destroy(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "10000111"

    const-string/jumbo v2, "10000111"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public setStartParams(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/app/AppStoreApp;->startParams:Landroid/os/Bundle;

    .line 279
    return-void
.end method
