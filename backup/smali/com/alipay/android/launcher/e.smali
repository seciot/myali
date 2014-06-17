.class final Lcom/alipay/android/launcher/e;
.super Ljava/lang/ClassLoader;


# instance fields
.field final synthetic a:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

.field final synthetic b:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/ClassLoader;Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/e;->b:Lcom/alipay/android/launcher/TabLauncher;

    iput-object p3, p0, Lcom/alipay/android/launcher/e;->a:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public final loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/launcher/e;->a:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-virtual {v1}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getClassloaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    :try_start_0
    instance-of v3, v0, Ldalvik/system/PathClassLoader;

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "loadClassFromCurrent"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_5

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/launcher/e;->a:Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;

    invoke-virtual {v1}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->getClassloaders()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_2
    :goto_3
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_3
    if-nez v0, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "TabLauncher ClassLoader  class Not Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    return-object v0

    :cond_5
    move-object v1, v0

    goto :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move-object v0, v1

    goto :goto_1
.end method
