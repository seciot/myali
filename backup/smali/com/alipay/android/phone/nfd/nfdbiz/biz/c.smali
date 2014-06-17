.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/c;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/c;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;

    #calls: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->intLastState()V
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;->access$700(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSniffer;)V

    return-void
.end method
