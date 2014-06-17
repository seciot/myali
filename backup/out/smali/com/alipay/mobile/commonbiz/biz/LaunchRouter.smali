.class public Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;
.super Ljava/lang/Object;


# static fields
.field private static g:Ljava/lang/String;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Landroid/support/v4/content/LocalBroadcastManager;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

.field private f:J

.field private h:Landroid/os/Handler;

.field private i:Landroid/app/Activity;

.field private j:Lcom/alipay/mobile/framework/AlipayApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "AlipayLogin"

    sput-object v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/AlipayApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.alipay.mobile.client.STARTED"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "inited_param"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/common/SchemeService;->extractTagId(Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$2;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/base/config/ConfigService;->loadConfig()V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    move-result-object v0

    const-string/jumbo v4, "com.alipay.mobile.security.startIntercept.SecurityStartIntercept"

    const-class v5, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    invoke-virtual {v0, v4, v5}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->findInterfaceByName(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/RouterInterface;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/framework/interfaces/RouterInterface;->callback(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_a

    const-string/jumbo v4, "com.eg.android.AlipayGphone.AlipayLogin"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v3, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-class v4, Lcom/alipay/mobile/commonbiz/biz/PuppetMain;

    invoke-virtual {v1, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v4, 0x1020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "pushToFront"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.security.authcenter.ui.login.LoginActivity_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

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

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v4, "20000008"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v4, v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_3
    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;

    invoke-direct {v0, p0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$4;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->e:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    :cond_5
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->b:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_4
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v4

    :try_start_5
    iget-object v4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    iget-object v5, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->h:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;

    invoke-direct {v1, p0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$5;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_7
    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;

    invoke-direct {v1, p0, v0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$3;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isOverrangingLeavehintTime()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->e:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setLastUserLeavehint(J)V

    goto :goto_3

    :cond_9
    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V

    goto :goto_3

    :cond_a
    invoke-direct {p0, v0, v3}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Landroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/SchemeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/SchemeService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/service/common/SchemeService;->process(Landroid/net/Uri;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V

    return-void
.end method

.method private a(Lcom/alipay/mobile/core/ApplicationManager;Landroid/net/Uri;)V
    .locals 3

    invoke-interface {p1}, Lcom/alipay/mobile/core/ApplicationManager;->exit()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->clearState()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "externParams"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    invoke-interface {p1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->startEntryApp(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->h:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public attackTimeSend(J)V
    .locals 13

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITORPERF:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "perf_startup"

    const-string/jumbo v10, "s"

    const-string/jumbo v11, "c"

    const/4 v3, 0x4

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ""

    aput-object v4, v12, v3

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v9, v2

    invoke-static/range {v0 .. v12}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public isFirstDeploy()Z
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v1, "isFirstDeploy"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->i:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "pushToFront"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/logmonitor/Logcat;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    new-instance v0, Lcom/alipay/mobile/commonbiz/tracker/CommonUiClickListenerWrapper;

    invoke-direct {v0}, Lcom/alipay/mobile/commonbiz/tracker/CommonUiClickListenerWrapper;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/commonui/widget/APViewEventHelper;->setWrapper(Lcom/alipay/mobile/commonui/widget/APViewEventHelper$ClickListenerWrapper;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->f:J

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->c:Lcom/alipay/mobile/framework/service/ext/security/LocationInfoService;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v3, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->e:Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->b:Landroid/support/v4/content/LocalBroadcastManager;

    const-string/jumbo v0, "usertip"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v4, Lcom/alipay/mobile/base/config/ChannelConfig;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ChannelConfig;

    const-string/jumbo v4, "isShowUserTip"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/base/config/ChannelConfig;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    const-string/jumbo v0, "showTip"

    const/4 v1, 0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;

    invoke-direct {v1, p0, v0, v3, p1}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter$1;-><init>(Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;Landroid/content/SharedPreferences;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/commonbiz/biz/dialog/UserTipDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->j:Lcom/alipay/mobile/framework/AlipayApplication;

    invoke-direct {p0}, Lcom/alipay/mobile/commonbiz/biz/LaunchRouter;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
