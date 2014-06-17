.class public Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidgetGroupFactory;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/app/Activity;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->b:Landroid/app/Activity;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->a()V

    return-void
.end method

.method private a()V
    .locals 7

    :try_start_0
    new-instance v1, Lcom/alipay/android/launcher/factory/WidgetGroupDao;

    invoke-direct {v1}, Lcom/alipay/android/launcher/factory/WidgetGroupDao;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/launcher/factory/WidgetGroupDao;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/android/launcher/beans/WidgetGroup;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Lcom/alipay/android/launcher/beans/WidgetGroup;->a()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/alipay/android/launcher/beans/WidgetGroup;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/android/launcher/beans/WidgetGroup;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->c:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/reflect/ReflectUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/launcher/core/IWidgetGroup;

    invoke-virtual {v2}, Lcom/alipay/android/launcher/beans/WidgetGroup;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/launcher/core/IWidgetGroup;->setId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void

    :catch_2
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public getAllWidgetGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/launcher/core/IWidgetGroup;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->a:Ljava/util/List;

    return-object v0
.end method

.method public getClassloaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/alipay/android/launcher/factory/XmlWidgetGroupFactory;->c:Ljava/util/List;

    return-object v0
.end method

.method public getWidgetGroup(Ljava/lang/String;)Lcom/alipay/android/launcher/core/IWidgetGroup;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
