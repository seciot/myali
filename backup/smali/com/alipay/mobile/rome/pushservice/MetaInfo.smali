.class public Lcom/alipay/mobile/rome/pushservice/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    const-string/jumbo v1, "AppActiveMsgReceiver"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/rome/pushservice/adapter/msg/AppActiveMsgReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.client.STARTED"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "com.alipay.mobile.framework.ACTIVITY_START"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "com.alipay.security.cleanAccount"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    const-class v1, Lcom/alipay/mobile/rome/pushservice/adapter/service/PushSettingServiceImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    const-class v1, Lcom/alipay/mobile/rome/pushservice/PushSettingService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    iget-object v1, p0, Lcom/alipay/mobile/rome/pushservice/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
