.class public Lcom/alipay/android/phone/home/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 13
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 14
    const-string/jumbo v1, "AlipayHomeApplication"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.phone.home.app.AlipayHomeApplication"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 16
    iget-object v1, p0, Lcom/alipay/android/phone/home/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 19
    const-class v1, Lcom/alipay/android/phone/home/app/ClientStartupReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 20
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/alipay/android/phone/home/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    return-void
.end method
