.class public Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;


# instance fields
.field public final a:Ljava/lang/String;

.field protected b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field c:Lcom/alipay/mobile/commonui/widget/APScrollView;

.field d:Lcom/alipay/mobile/framework/service/common/SchemeService;

.field e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

.field protected g:Lcom/alipay/mobile/commonui/widget/APButton;

.field h:Lcom/alipay/mobile/framework/service/NFCService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const-class v0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;I)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "settingId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "extern_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "loginId"

    iget-object v2, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000024"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{[info=getView], [msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic d(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000057"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic e(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "20000028"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic f(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "10000008"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->a:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/widget/security/ui/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/d;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isWidgetVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "10000008"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "20000102"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->h:Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/NFCService;->hasFeatureNfc(Landroid/content/Context;)Z

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/more/R$layout;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->setContentView(I)V

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->d:Lcom/alipay/mobile/framework/service/common/SchemeService;

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

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/NFCService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->h:Lcom/alipay/mobile/framework/service/NFCService;

    sget v0, Lcom/alipay/mobile/more/R$id;->c:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->b:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/alipay/mobile/more/R$id;->b:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APScrollView;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->c:Lcom/alipay/mobile/commonui/widget/APScrollView;

    sget v0, Lcom/alipay/mobile/more/R$id;->d:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    sget v0, Lcom/alipay/mobile/more/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APButton;

    iput-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->setAdapter(Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    new-instance v1, Lcom/alipay/android/widget/security/ui/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/ui/a;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->e:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->f:Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;

    const-string/jumbo v1, "50000017"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/widgetcontainer/view/WidgetListContainer;->getWidgetViewById(Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->g:Lcom/alipay/mobile/commonui/widget/APButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setVisibility(I)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "tips"

    iget-object v0, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->h:Lcom/alipay/mobile/framework/service/NFCService;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/NFCService;->isAlipayNfcEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "\u5df2\u5f00\u542f"

    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;->setDisplayInfo(Ljava/util/Map;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_2
.end method

.method public performWidgetClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 15

    const-string/jumbo v1, "20000057"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "accountSecurityIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "accountSecurity"

    const-string/jumbo v10, "-"

    const-string/jumbo v11, "u"

    const-string/jumbo v12, "c"

    const/4 v1, 0x5

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v14, "-"

    aput-object v14, v13, v1

    const/4 v1, 0x1

    const-string/jumbo v14, "-"

    aput-object v14, v13, v1

    const/4 v1, 0x2

    const-string/jumbo v14, "-"

    aput-object v14, v13, v1

    const/4 v1, 0x3

    const-string/jumbo v14, "-"

    aput-object v14, v13, v1

    const/4 v1, 0x4

    iget-object v14, p0, Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;->d:Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v14}, Lcom/alipay/mobile/framework/service/common/SchemeService;->getLastTagId()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    move-object v1, p0

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widget/security/ui/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/widget/security/ui/e;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const-string/jumbo v1, "20000028"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "mobilePasswordIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "mobilePwd"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widget/security/ui/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/widget/security/ui/h;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "20000024"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "paySetIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "paySet"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widget/security/ui/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/widget/security/ui/f;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "20000011"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "serviceCenterIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "serviceCenter"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000005"

    const-string/jumbo v3, "20000011"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v1, "10000008"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "mobileBaoLingIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "mobileBaoLing"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/widget/security/ui/g;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/widget/security/ui/g;-><init>(Lcom/alipay/android/widget/security/ui/SecurityWidgetGroupAcitivity;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "10000110"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "10000110"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "20000005"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "aboutIndex"

    const-string/jumbo v8, "moreHome"

    const-string/jumbo v9, "about"

    move-object v1, p0

    invoke-static/range {v1 .. v9}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "20000102"

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000102"

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method
