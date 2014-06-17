.class public final Lcom/alipay/mobile/quinox/classloader/a;
.super Ldalvik/system/PathClassLoader;


# static fields
.field private static final f:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/quinox/bundle/b;

.field private c:Ljava/util/Map;

.field private d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

.field private e:Lcom/alipay/mobile/quinox/classloader/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/b;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/b;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/b;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/e;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    move-result-object v4

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Lcom/alipay/mobile/quinox/classloader/e;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Lcom/alipay/mobile/quinox/bundle/b;)V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/mobile/quinox/classloader/a;->f:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/c;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/quinox/classloader/c;-><init>(Lcom/alipay/mobile/quinox/classloader/a;Ljava/util/concurrent/ExecutorService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/alipay/mobile/quinox/classloader/a;->c()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/h;

    :try_start_0
    invoke-interface {v0, p0}, Lcom/alipay/mobile/quinox/classloader/h;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "BootClassLoader"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/b;->b()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/bundle/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/bundle/a;->d()I

    move-result v2

    const v3, 0xa98670

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->b()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/d;
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/d;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->b()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/quinox/classloader/d;)V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;
    .locals 3

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "BootstrapClassloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getQuinoxClassLoader static link ->bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Lcom/alipay/mobile/quinox/classloader/e;

    :goto_0
    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "BootstrapClassloader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getQuinoxClassLoader can\'t find bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/d;

    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/d;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v1}, Lcom/alipay/mobile/quinox/bundle/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->b(Lcom/alipay/mobile/quinox/bundle/a;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/quinox/bundle/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "BootstrapClassloader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getBundleClassLoader can\'t find bundle: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->d:Lcom/alipay/mobile/quinox/classloader/InitExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/InitExecutor;->a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/d;

    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/a;->e(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/d;

    move-result-object v0

    goto :goto_0
.end method

.method protected final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    const-string/jumbo v0, "BootstrapClassloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " findClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->b:Lcom/alipay/mobile/quinox/bundle/b;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/bundle/b;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/bundle/a;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->d()I

    move-result v2

    const v3, 0xa98670

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/quinox/bundle/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/quinox/classloader/a;->b(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Lcom/alipay/mobile/quinox/classloader/e;

    if-eq v0, v1, :cond_1

    invoke-interface {v0, p1}, Lcom/alipay/mobile/quinox/classloader/h;->loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/a;->e:Lcom/alipay/mobile/quinox/classloader/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/classloader/e;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
