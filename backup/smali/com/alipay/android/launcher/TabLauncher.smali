.class public Lcom/alipay/android/launcher/TabLauncher;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;
.implements Lcom/alipay/android/launcher/core/ILauncher;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TabHost;

.field private b:Landroid/widget/TabWidget;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:J

.field private f:Lcom/alipay/android/launcher/h;

.field private g:Landroid/app/ActionBar;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Landroid/content/res/Resources;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/ClassLoader;",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/support/v4/content/LocalBroadcastManager;

.field private l:Landroid/os/Handler;

.field private m:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/ClassLoader;

.field private p:Z

.field private q:Ljava/util/Map;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    iput-boolean v3, p0, Lcom/alipay/android/launcher/TabLauncher;->d:Z

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/alipay/android/launcher/TabLauncher;->e:J

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->h:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->i:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->j:Ljava/util/HashMap;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->l:Landroid/os/Handler;

    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->p:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "20000101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "20000061"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "20000004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private a()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0}, Lcom/alipay/android/launcher/TabLauncherApp;->getTabId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "20000003"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/alipay/android/launcher/TabLauncher;->p:Z

    if-nez v3, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000003"

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->p:Z
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onReturn()V

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onRefresh()V

    goto :goto_2
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0, v2, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/android/launcher/f;

    invoke-direct {v2, p0, v0, p1}, Lcom/alipay/android/launcher/f;-><init>(Lcom/alipay/android/launcher/TabLauncher;Lcom/alipay/mobile/framework/service/ext/security/AuthService;Landroid/os/Bundle;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/launcher/TabLauncher;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/launcher/TabLauncher;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, "20000001"

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private a(Z)V
    .locals 6

    new-instance v0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getAllWidgetGroups()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    new-instance v1, Lcom/alipay/android/launcher/e;

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/alipay/android/launcher/e;-><init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/ClassLoader;Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;)V

    iput-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->o:Ljava/lang/ClassLoader;

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-interface {v0, p0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setContext(Landroid/app/Activity;)V

    instance-of v1, v0, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-interface {v1, v3}, Lcom/alipay/android/launcher/core/IFragmentWidgetGroup;->setActApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V

    :cond_0
    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getIndicator()Landroid/view/View;

    move-result-object v3

    invoke-static {}, Landroid/util/SmartBarUtils;->hasSmartBar()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v2, :cond_3

    sget v4, Lcom/alipay/mobile/base/commonbiz/R$drawable;->tab_left_bg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_1
    sget v4, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v3, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getIndicator()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher;->f:Lcom/alipay/android/launcher/h;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v2, v4, :cond_4

    sget v4, Lcom/alipay/mobile/base/commonbiz/R$drawable;->tab_right_bg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    sget v4, Lcom/alipay/mobile/base/commonbiz/R$drawable;->tab_center_bg:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private a(Landroid/content/Intent;Z)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v1, "login"

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BundleUtil;->serialBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "loginStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "targetAppId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string/jumbo v3, "fail"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "list"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "20000018"

    invoke-direct {p0, v1, v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_6

    if-eqz v4, :cond_8

    move v1, v2

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    const-string/jumbo v5, "_share_tmp_"

    invoke-virtual {v3, v5, v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v5, "@@"

    invoke-interface {v3, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    :goto_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v5, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedNotifyCallBack(Z)V

    :cond_4
    new-instance v2, Lcom/alipay/android/launcher/g;

    invoke-direct {v2, p0, v1, v4}, Lcom/alipay/android/launcher/g;-><init>(Lcom/alipay/android/launcher/TabLauncher;ZLandroid/net/Uri;)V

    if-eqz v3, :cond_5

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v2

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v2

    goto :goto_0

    :cond_6
    move v2, v0

    goto :goto_0

    :cond_7
    move v3, v0

    goto :goto_2

    :cond_8
    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/launcher/TabLauncher;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/launcher/TabLauncher;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/launcher/TabLauncher;)Landroid/support/v4/content/LocalBroadcastManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->k:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/launcher/TabLauncher;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->q:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/alipay/android/launcher/core/IWidgetGroup;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->o:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->o:Ljava/lang/ClassLoader;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->k:Landroid/support/v4/content/LocalBroadcastManager;

    new-instance v0, Lcom/alipay/android/launcher/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/launcher/b;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    invoke-static {}, Landroid/util/SmartBarUtils;->hasSmartBar()Z

    move-result v4

    if-eqz v4, :cond_1

    const v0, 0x103012b

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setTheme(I)V

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$layout;->luancher_tab:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->setContentView(I)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000001"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->finish()V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/alipay/android/launcher/TabLauncher;->requestWindowFeature(I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/content/Intent;)V

    invoke-direct {p0, v5, v2}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/content/Intent;Z)Z

    move-result v1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v6, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->m:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->m:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v5, "login"

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_3
    if-nez v0, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v7}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/os/Bundle;)V

    move v1, v2

    :cond_3
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    const v0, 0x1020013

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->b:Landroid/widget/TabWidget;

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->b:Landroid/widget/TabWidget;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->setVisibility(I)V

    new-instance v0, Lcom/alipay/android/launcher/h;

    invoke-direct {v0, p0, v3}, Lcom/alipay/android/launcher/h;-><init>(Lcom/alipay/android/launcher/TabLauncher;B)V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->f:Lcom/alipay/android/launcher/h;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-static {v0, v2}, Landroid/util/SmartBarUtils;->setActionBarTabsShowAtBottom(Landroid/app/ActionBar;Z)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-static {v0, v2}, Landroid/util/SmartBarUtils;->setActionModeHeaderHidden(Landroid/app/ActionBar;Z)V

    :cond_4
    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/utils/Utilz;->getTotalMemory()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->l:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/c;

    invoke-direct {v1, p0, v4}, Lcom/alipay/android/launcher/c;-><init>(Lcom/alipay/android/launcher/TabLauncher;Z)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/android/launcher/d;

    invoke-direct {v1, p0}, Lcom/alipay/android/launcher/d;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->k:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_2

    :cond_5
    move v0, v3

    goto/16 :goto_3

    :cond_6
    invoke-direct {p0, v4}, Lcom/alipay/android/launcher/TabLauncher;->a(Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onDestroy()V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/launcher/core/IWidgetGroup;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->destroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2, p1, p2}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v2, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getTabCount()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/launcher/TabLauncher;->g:Landroid/app/ActionBar;

    invoke-virtual {v2, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    :cond_2
    if-ne p1, v3, :cond_3

    iget-boolean v2, p0, Lcom/alipay/android/launcher/TabLauncher;->d:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/alipay/mobile/base/commonbiz/R$string;->rePressback:I

    invoke-static {p0, v2, v1}, Lcom/alipay/mobile/common/widget/SimpleToast;->makeToast(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iput-boolean v1, p0, Lcom/alipay/android/launcher/TabLauncher;->d:Z

    invoke-static {p0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->uploadLog(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    new-instance v2, Lcom/alipay/android/launcher/a;

    invoke-direct {v2, p0}, Lcom/alipay/android/launcher/a;-><init>(Lcom/alipay/android/launcher/TabLauncher;)V

    iget-wide v3, p0, Lcom/alipay/android/launcher/TabLauncher;->e:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/TabHost;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    const/16 v2, 0x52

    if-eq p1, v2, :cond_0

    const/16 v2, 0x54

    if-eq p1, v2, :cond_0

    const/16 v2, 0x18

    if-eq p1, v2, :cond_4

    const/16 v2, 0x19

    if-ne p1, v2, :cond_5

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    if-ne p1, v3, :cond_6

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->exit()V

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->finish()V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->m:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->m:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginLogonId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/os/Bundle;)V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/launcher/TabLauncher;->a(Landroid/content/Intent;Z)Z

    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->a()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onPause()V

    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    const-string/jumbo v1, "state=onPause"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onResume()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onResume()V

    const-string/jumbo v0, "_short_cut_"

    invoke-virtual {p0, v0, v8}, Lcom/alipay/android/launcher/TabLauncher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    const-string/jumbo v2, "duplicate"

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".AlipayLogin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.extra.shortcut.NAME"

    sget v5, Lcom/alipay/mobile/base/commonbiz/R$string;->app_shortcut_name:I

    invoke-virtual {p0, v5}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "appicon"

    const-string/jumbo v5, "drawable"

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncher;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/alipay/android/launcher/TabLauncher;->sendBroadcast(Landroid/content/Intent;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "shortcut"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget v0, Lcom/alipay/mobile/base/commonbiz/R$string;->install_shortcut_success:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/launcher/TabLauncher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/alipay/android/launcher/TabLauncher;->toast(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/launcher/TabLauncher;->a()V

    iget-boolean v0, p0, Lcom/alipay/android/launcher/TabLauncher;->p:Z

    if-eqz v0, :cond_2

    iput-boolean v8, p0, Lcom/alipay/android/launcher/TabLauncher;->p:Z

    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    const-string/jumbo v1, "state=onResume"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    instance-of v0, v0, Lcom/alipay/android/launcher/TabLauncherApp;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->a:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/alipay/android/launcher/core/IWidgetGroup;->onResume()V

    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-direct {p0, v0, p1}, Lcom/alipay/android/launcher/TabLauncher;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    check-cast v0, Lcom/alipay/android/launcher/TabLauncherApp;

    invoke-virtual {v0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->setTabId(Ljava/lang/String;)V

    const-string/jumbo v0, "20000002"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    const-string/jumbo v6, "alipayHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    const-string/jumbo v8, "alipay"

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alipayHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "20000101"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    const-string/jumbo v6, "publicIndexList"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    const-string/jumbo v8, "service"

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "publicIndexList"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "20000061"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    const-string/jumbo v6, "exploreHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    const-string/jumbo v8, "explore"

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "exploreHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v0, "20000004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "tabbar"

    const-string/jumbo v6, "wealthHome"

    iget-object v7, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    const-string/jumbo v8, "wealth"

    move-object v3, v2

    move-object v5, v2

    invoke-static/range {v0 .. v8}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "wealthHome"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher;->n:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public showAllApps()V
    .locals 0

    return-void
.end method
