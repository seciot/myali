.class public Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/GestureService;


# instance fields
.field final a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;-><init>()V

    const-string/jumbo v0, "GestureServiceImpl"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:Ljava/lang/Object;

    return-void
.end method

.method private a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->gestureGetUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->SETTINGGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "setORcheck"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->showGestureApp(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "false"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGesturePwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->SETTINGGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->isNeedAuthGesture()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->NONE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->notifyunLockApp()V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "20000006"

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public callback(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;->onGestureResult(Z)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:J

    :cond_2
    return-void
.end method

.method public gesture()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    :goto_1
    return-void

    :pswitch_0
    :try_start_0
    sget-object v3, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->VALIDATEGESTURE:Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    if-ne v2, v3, :cond_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyunLockApp()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    new-instance v2, Lcom/alipay/mobile/security/gesture/service/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/service/a;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const-string/jumbo v1, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()"

    new-instance v2, Lcom/alipay/mobile/security/gesture/service/b;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/gesture/service/b;-><init>(Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice(Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    return-void
.end method

.method public restoreStateValidateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:J

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v6, 0x493e0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b()V

    const/4 v4, 0x1

    :try_start_0
    invoke-direct {p0, v4}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V

    iput-wide v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->c:J
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setGesture()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z

    move-result v0

    return v0
.end method

.method public setGesture(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "switchAccount"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    return v2

    :pswitch_0
    :try_start_1
    const-string/jumbo v0, "setORcheck"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->showGestureApp(Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    :try_end_2
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->printStackTrace()V

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public showGestureApp(Landroid/os/Bundle;)V
    .locals 5

    :try_start_0
    const-string/jumbo v0, "com.alipay.mobile.core.impl.MicroApplicationContextImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "doStartApp"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "20000006"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "20000006"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public startGestureIfNecessary(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b()V

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sycnStartGestureIfNecessary()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->startGestureIfNecessary(Z)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->setNeedAuthGesture(Z)V

    iget-object v3, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->d:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v3

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public validateGesture()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->startGestureIfNecessary(Z)Z

    return-void
.end method

.method public validateGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b(Z)Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    :goto_1
    return-void

    :pswitch_0
    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public validateStartClientGesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a()Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/security/gesture/service/c;->a:[I

    invoke-virtual {v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl$GestureEnum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->a(Z)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/gesture/service/GestureServiceImpl;->callback(Z)V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
