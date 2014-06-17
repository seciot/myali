.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/nfd/nfdbiz/IOnActiveBoardVisibleChange;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/a;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVisibleChange(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/a;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    #calls: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->onResume()V
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->access$000(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    :cond_0
    return-void
.end method
