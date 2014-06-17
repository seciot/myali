.class public Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;
.super Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "invalid intent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->finish()V

    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/apk/common/ZActivityInfo;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/quinox/engine/BundleEngine;->getBundleContext()Lcom/alipay/mobile/quinox/engine/BundleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    iget-object v1, v1, Lcom/alipay/mobile/apk/common/ZActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/engine/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getInstance(Landroid/app/Application;)Lcom/alipay/mobile/quinox/engine/ApkEngineManager;

    move-result-object v1

    const-string/jumbo v2, "BundleAppEngine"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/quinox/engine/ApkEngineManager;->getEngine(Ljava/lang/String;)Lcom/alipay/mobile/apk/common/AbstractEngine;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v2, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->activityInfo:Lcom/alipay/mobile/apk/common/ZActivityInfo;

    invoke-virtual {v1, v2, p0, v0}, Lcom/alipay/mobile/apk/common/AbstractEngine;->makeActivity(Lcom/alipay/mobile/apk/common/ZActivityInfo;Landroid/app/Activity;Ljava/lang/ClassLoader;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->defaultEngine:Lcom/alipay/mobile/apk/common/AbstractEngine;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/apk/common/AbstractEngine;->getInstrumentation(Landroid/app/Activity;)Landroid/app/Instrumentation;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/apk/FragmentActivityShell;->targetActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Lcom/alipay/mobile/quinox/shell/BaseFragmentActivityShell;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method
