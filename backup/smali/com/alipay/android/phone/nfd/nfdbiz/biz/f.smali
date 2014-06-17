.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/f;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibleChange(Z)V
    .locals 3

    sget-object v0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onVisibleChange enter: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/f;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    #calls: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->onResume()V
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->access$400(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    :cond_0
    return-void
.end method
