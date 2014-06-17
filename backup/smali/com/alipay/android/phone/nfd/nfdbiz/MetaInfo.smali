.class public Lcom/alipay/android/phone/nfd/nfdbiz/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    new-instance v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-direct {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;->attachContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->registerService(Ljava/lang/String;Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;->create(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/nfd/nfdbiz/service/WifiSnifferService;->regestLongLinkReserv()V

    return-void
.end method
