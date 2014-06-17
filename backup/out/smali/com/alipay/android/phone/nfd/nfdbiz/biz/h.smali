.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

.field final synthetic b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;->a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onReceive: updateUI"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;->a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->setTopBoardInfo(Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/h;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->updateUI()V

    return-void
.end method
