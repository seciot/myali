.class public Lcom/alipay/mobile/appstoreapp/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 21
    const-string/jumbo v0, "AppStoreApp"

    iput-object v0, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->entry:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 23
    const-string/jumbo v1, "AppStoreApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.mobile.appstoreapp.app.AppStoreApp"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "10000111"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 25
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 28
    const-class v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadManagerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 29
    const-class v1, Lcom/alipay/mobile/framework/service/ext/download/ExternalDownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 34
    const-class v1, Lcom/alipay/mobile/appstoreapp/download/ExternalDownloadStatusReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 35
    const-string/jumbo v1, "ExternalDownloadStatusReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 36
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.android.EXT_DOWNLOAD_EVENT_FILTER"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 41
    const-class v1, Lcom/alipay/mobile/appstoreapp/manager/AppManageServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 42
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 47
    const-class v1, Lcom/alipay/mobile/appstoreapp/manager/AppInstallStatusServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 48
    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallStatusService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v3}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 54
    const-class v1, Lcom/alipay/mobile/appstoreapp/receiver/ClientSetupReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 55
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.client.STARTED"

    aput-object v2, v1, v3

    const-string/jumbo v2, "com.alipay.security.login"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/alipay/mobile/appstoreapp/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
