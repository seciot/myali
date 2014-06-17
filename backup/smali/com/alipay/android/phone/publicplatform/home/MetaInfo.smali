.class public Lcom/alipay/android/phone/publicplatform/home/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 14
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 15
    const-class v1, Lcom/alipay/android/phone/publicplatform/receiver/PublicHomeWidgetGroupReceiver_;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 17
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.intent.action.UPDATETODOLIST"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "com.alipay.security.login"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "com.alipay.mobile.android.main.publichome.add"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "com.alipay.mobile.android.main.publichome.remove"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "com.alipay.mobile.android.main.publichome.sorttimeupdate"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "com.alipay.mobile.android.main.publichome.refresh"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "notifyHomeRefresh"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "com.alipay.security.logout"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/MetaInfo;->broadcastReceivers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    new-instance v0, Lcom/alipay/mobile/framework/service/ServiceDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ServiceDescription;-><init>()V

    .line 32
    const-class v1, Lcom/alipay/mobile/publicsvc/home/proguard/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 33
    const-class v1, Lcom/alipay/android/phone/publicplatform/main/service/PublicMainService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setInterfaceClass(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/ServiceDescription;->setLazy(Z)V

    .line 35
    iget-object v1, p0, Lcom/alipay/android/phone/publicplatform/home/MetaInfo;->services:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
