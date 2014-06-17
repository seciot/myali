.class public Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 8
    const-string/jumbo v0, "WifiSdk"

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo;->entry:Ljava/lang/String;

    .line 9
    new-instance v0, Lcom/alipay/mobile/framework/app/ApplicationDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/app/ApplicationDescription;-><init>()V

    .line 10
    const-string/jumbo v1, "WifiSdk"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ApplicationDescription;->setName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "com.alipay.android.phone.nfd.wifisdk.app.WifiSdk"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    move-result-object v1

    const-string/jumbo v2, "20000112"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/MicroDescription;->setAppId(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 14
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/MetaInfo;->applications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method
