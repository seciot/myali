.class public Lcom/alipay/mobile/base/commonbiz/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/base/config/impl/ConfigServiceImpl$ConfigBroadCastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    iget-object v1, p0, Lcom/alipay/mobile/base/commonbiz/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
