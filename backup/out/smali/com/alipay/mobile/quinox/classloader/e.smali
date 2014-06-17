.class public final Lcom/alipay/mobile/quinox/classloader/e;
.super Ldalvik/system/PathClassLoader;

# interfaces
.implements Lcom/alipay/mobile/quinox/classloader/h;


# instance fields
.field private a:Lcom/alipay/mobile/quinox/LauncherApplication;

.field private b:Lcom/alipay/mobile/quinox/classloader/a;

.field private c:Ldalvik/system/PathClassLoader;

.field private d:[Ljava/lang/String;

.field private e:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ldalvik/system/PathClassLoader;Lcom/alipay/mobile/quinox/bundle/b;)V
    .locals 1

    invoke-direct {p0, p2, p3, p4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object p5, p0, Lcom/alipay/mobile/quinox/classloader/e;->c:Ldalvik/system/PathClassLoader;

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/a;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/b;->g()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->d:[Ljava/lang/String;

    invoke-interface {p6}, Lcom/alipay/mobile/quinox/bundle/b;->h()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->e:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "HostClassLoader"

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

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/e;->c:Ldalvik/system/PathClassLoader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " loadClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findLoadedClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_0

    const-class v0, Ljava/lang/ClassLoader;

    const-string/jumbo v1, "findClass"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/e;->c:Ldalvik/system/PathClassLoader;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "can\'t find class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getDepends()Ljava/util/Set;
    .locals 8

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->e:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/quinox/classloader/e;->e:[Ljava/lang/String;

    array-length v4, v3

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v3, v0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    const-string/jumbo v7, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    invoke-virtual {v6, v5}, Lcom/alipay/mobile/quinox/classloader/a;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public final loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->pattern(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->d:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/quinox/classloader/e;->d:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-virtual {v5, v4}, Lcom/alipay/mobile/quinox/classloader/a;->c(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/h;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v1}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "HostClassLoader"

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

    const-string/jumbo v2, " loadClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string/jumbo v0, "HostClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " loadClass from depends: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/quinox/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->b:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-virtual {p0}, Lcom/alipay/mobile/quinox/classloader/e;->getDepends()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/mobile/quinox/classloader/a;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    throw v1
.end method

.method public final loadClassFromCurrent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/e;->a:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/quinox/LauncherApplication;->patternHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/quinox/classloader/e;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "HostClassLoader"

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

    const-string/jumbo v2, " loadClass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
