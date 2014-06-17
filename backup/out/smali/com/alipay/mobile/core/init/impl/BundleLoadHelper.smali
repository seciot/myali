.class public Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/core/init/BootLoader;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private c:Lcom/alipay/mobile/core/ApplicationManager;

.field private d:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

.field private e:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

.field mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/core/init/BootLoader;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->a:Lcom/alipay/mobile/core/init/BootLoader;

    invoke-interface {v0}, Lcom/alipay/mobile/core/init/BootLoader;->getContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/core/ApplicationManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/ApplicationManager;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/core/ApplicationManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getInterfaceManager()Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    return-void
.end method


# virtual methods
.method public loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/BundleContext;->findClassLoaderByBundleName(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, p2}, Lcom/alipay/mobile/framework/BundleContext;->findPackagesByBundleName(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "bundleName:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public loadBundle(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".MetaInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/BaseMetaInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/framework/BaseMetaInfo;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v0

    :goto_0
    if-nez v3, :cond_1

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-object v3, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getApplications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->addDescription(Ljava/util/List;)V

    const-string/jumbo v0, "com.alipay.android.launcher"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getEntry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->c:Lcom/alipay/mobile/core/ApplicationManager;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/core/ApplicationManager;->setEntryAppName(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getServices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/BaseMetaInfo;->getBroadcastReceivers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_6
    iget-object v0, v3, Lcom/alipay/mobile/framework/BaseMetaInfo;->interfaces:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/interfaces/RouterInterface;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->e:Lcom/alipay/mobile/framework/interfaces/InterfaceManager;

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/framework/interfaces/InterfaceManager;->registerInterface(Lcom/alipay/mobile/framework/interfaces/InterfaceDescription;Lcom/alipay/mobile/framework/interfaces/RouterInterface;)Z

    goto :goto_4

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->d:Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/framework/service/ext/ExternalServiceManager;->registerExtnernalService(Lcom/alipay/mobile/framework/service/ServiceDescription;)V

    goto :goto_2

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pkg:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\u7684MetaInfo\u4e2d\u5b58\u5728className\u4e3a\u7a7a\u7684BroadcastReceiverDescription\uff01"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_3

    :cond_a
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-gtz v1, :cond_c

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\u8ba2\u9605\u7684\u4e8b\u4ef6\u4e3a\u7a7a\uff01"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_3

    :cond_c
    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/BroadcastReceiver;
    :try_end_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_6
    if-eqz v1, :cond_5

    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->getMsgCode()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v0, 0x0

    :goto_7
    if-lt v0, v7, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->mLocalBroadcastManagerWrapper:Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;

    invoke-virtual {v0, v1, v5}, Lcom/alipay/mobile/core/app/impl/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_6

    :cond_d
    aget-object v8, v6, v0

    invoke-virtual {v5, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v1, v2

    goto/16 :goto_5

    :catch_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1
.end method

.method public loadBundleDefinitions()V
    .locals 4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/BundleContext;->getAllBundleNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/BundleContext;->isLazyBundleByBundleName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/core/init/impl/BundleLoadHelper;->loadBundle(Lcom/alipay/mobile/framework/BundleContext;Ljava/lang/String;)V

    goto :goto_0
.end method
