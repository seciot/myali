.class public Lcom/eg/android/AlipayGphone/AlipayLogin;
.super Landroid/app/Activity;

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Landroid/content/res/Resources$Theme;

.field private c:I

.field private d:Lcom/alipay/mobile/quinox/splash/c;

.field private e:Z

.field private f:J

.field private g:Z

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->e:Z

    iput-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->g:Z

    new-instance v0, Lcom/eg/android/AlipayGphone/a;

    invoke-direct {v0, p0}, Lcom/eg/android/AlipayGphone/a;-><init>(Lcom/eg/android/AlipayGphone/AlipayLogin;)V

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->h:Landroid/os/Handler;

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".R$layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Entry"

    const-string/jumbo v2, "getLayoutId"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/quinox/utils/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a()V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->e:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->e:Z

    iput-boolean v1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->g:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.commonbiz.biz.LaunchRouter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/eg/android/AlipayGphone/AlipayLogin;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/eg/android/AlipayGphone/AlipayLogin;)V
    .locals 0

    invoke-direct {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->a()V

    return-void
.end method

.method static synthetic c(Lcom/eg/android/AlipayGphone/AlipayLogin;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.mobile.commonbiz.biz.LaunchRouter"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "isFirstDeploy"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->d:Lcom/alipay/mobile/quinox/splash/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/c;->a()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->removeListener(Ljava/util/Observer;)V

    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_1
    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->b:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->f:J

    const-string/jumbo v0, "Entry"

    const-string/jumbo v1, "entry Activity onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "activity_start_logo"

    invoke-direct {p0, v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->setContentView(I)V

    new-instance v0, Lcom/alipay/mobile/quinox/splash/c;

    iget-object v1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->h:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/splash/c;-><init>(Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->d:Lcom/alipay/mobile/quinox/splash/c;

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->d:Lcom/alipay/mobile/quinox/splash/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/c;->b()V

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->bootFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->e:Z

    invoke-direct {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->a()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/quinox/LauncherApplication;->addListener(Ljava/util/Observer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->finish()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 8

    iget-wide v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->f:J

    sub-long/2addr v0, v2

    :try_start_0
    invoke-virtual {p0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string/jumbo v3, "com.alipay.mobile.commonbiz.biz.LaunchRouter"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "attackTimeSend"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->d:Lcom/alipay/mobile/quinox/splash/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->d:Lcom/alipay/mobile/quinox/splash/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/splash/c;->c()V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    iput p1, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->c:I

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/eg/android/AlipayGphone/AlipayLogin;->e:Z

    new-instance v0, Lcom/eg/android/AlipayGphone/b;

    invoke-direct {v0, p0}, Lcom/eg/android/AlipayGphone/b;-><init>(Lcom/eg/android/AlipayGphone/AlipayLogin;)V

    invoke-virtual {p0, v0}, Lcom/eg/android/AlipayGphone/AlipayLogin;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
