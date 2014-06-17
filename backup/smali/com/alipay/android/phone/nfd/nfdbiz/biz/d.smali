.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

.field final synthetic b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;->a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;->a:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->setTopBoardInfo(Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;->b:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->updateUI()V

    return-void
.end method
