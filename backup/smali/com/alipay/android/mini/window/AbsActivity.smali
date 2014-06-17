.class public Lcom/alipay/android/mini/window/AbsActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/content/res/Resources$Theme;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/AbsActivity;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "activity"

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/AbsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

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

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/AbsActivity;->getPackageName()Ljava/lang/String;

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


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/AbsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/AbsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/AbsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/AbsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    iget v1, p0, Lcom/alipay/android/mini/window/AbsActivity;->c:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->b:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->a:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 4

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onUserLeaveHint()V

    iget-object v0, p0, Lcom/alipay/android/mini/window/AbsActivity;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/mini/window/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/window/a;-><init>(Lcom/alipay/android/mini/window/AbsActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->setTheme(I)V

    iput p1, p0, Lcom/alipay/android/mini/window/AbsActivity;->c:I

    return-void
.end method
