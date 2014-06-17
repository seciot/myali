.class public Lcom/alipay/mobile/quinox/BundleContext;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    return-void
.end method


# virtual methods
.method public addExternelBundle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    instance-of v1, v0, Lcom/alipay/mobile/quinox/classloader/a;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    :cond_0
    return-object v0
.end method

.method public findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->g()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAllBundleNames()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/b;->i()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBundleNameByComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/b;->j()Lcom/alipay/mobile/quinox/classloader/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    :cond_0
    return-void
.end method

.method public removeExternelBundle(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->e(Ljava/lang/String;)V

    return-void
.end method

.method public updateBundles(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "can\'t in main thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/BundleContext;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->getBundlesManager()Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/util/List;)V

    return-void
.end method
