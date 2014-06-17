.class public Lcom/alipay/mobile/framework/app/ui/ActivityHelper;
.super Ljava/lang/Object;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/os/Handler;

.field private c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

.field protected mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

.field protected mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->getInstance()Lcom/alipay/mobile/framework/app/ui/ActivityCollections;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityCollections;->recordActivity(Landroid/app/Activity;)V

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unable to start "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/app/ActivityApplication;

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ActivityHelper() appId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;Lcom/alipay/mobile/framework/app/ui/ActivityHelper$ActivityApplicationStub;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->finish()V

    sget-object v0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ActivityHelper() return"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->setIsPrevent(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->pushActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_CREATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private static a(Landroid/content/Intent;)V
    .locals 1

    const-string/jumbo v0, "mExtras"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    const-string/jumbo v3, "activity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V
    .locals 8

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/Boolean;)V

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    return-void
.end method

.method public dispatchOnTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.VIEW_CLICK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.framework.VIEW_CLICK"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_2
    return-void
.end method

.method public findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public finish()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->removeActivity(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    return-void
.end method

.method public getApp()Lcom/alipay/mobile/framework/app/ActivityApplication;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    return-object v0
.end method

.method public getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/alipay/mobile/framework/service/ext/ExternalService;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    return-object v0
.end method

.method public getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DESTROY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_PAUSE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_DATA"

    iget-object v3, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->saveState()V

    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_START"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/app/ui/ActivityHelper$1;-><init>(Lcom/alipay/mobile/framework/app/ui/ActivityHelper;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->windowFocus()V

    :cond_0
    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    return-void
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/framework/app/ui/ActivityHelper;->c:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->toast(Ljava/lang/String;I)V

    return-void
.end method
