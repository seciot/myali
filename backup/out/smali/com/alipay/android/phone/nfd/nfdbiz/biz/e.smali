.class final Lcom/alipay/android/phone/nfd/nfdbiz/biz/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/e;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/nfdbiz/biz/e;->a:Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;

    #calls: Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->intLastState()V
    invoke-static {v0}, Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;->access$300(Lcom/alipay/android/phone/nfd/nfdbiz/biz/WifiSnifferServiceImpl;)V

    return-void
.end method
