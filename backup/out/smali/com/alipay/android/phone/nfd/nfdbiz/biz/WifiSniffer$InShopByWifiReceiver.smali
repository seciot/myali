.class public Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receivce message"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_20000002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "long link biz data:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "\\"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    sget-object v1, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "replace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    const-string/jumbo v2, "20000002"

    iput-object v2, v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v2, v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "serviceDiscoveryPanel"

    iput-object v2, v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    const-class v1, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    #getter for: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->microAppContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->access$500(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    #getter for: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->access$400(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;

    invoke-direct {v2, p0, v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/d;-><init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer$InShopByWifiReceiver;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    #getter for: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->infoCacheBoardInfos:Ljava/util/List;
    invoke-static {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->access$600(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
