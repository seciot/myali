.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->openLiveServicePage(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->access$500(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ACTIVE_TEMPLATE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->getTopBoardInfo()Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getACTIVE_TEMPLATE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;-><init>()V

    const-string/jumbo v1, "20000002"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v1, "publicContactView"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    const-string/jumbo v1, "serviceDiscoveryPanel"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->refViewID:Ljava/lang/String;

    const-string/jumbo v1, "serviceDiscovery"

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/g;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    #getter for: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->topBoardInfo:Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;
    invoke-static {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->access$600(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/android/phone/nfd/nfdbiz/model/TopBoardInfo;->getSERVICE_ID()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->extendParams:[Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V

    :cond_0
    return-void
.end method
