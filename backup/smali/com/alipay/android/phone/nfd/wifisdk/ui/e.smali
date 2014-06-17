.class final Lcom/alipay/android/phone/nfd/wifisdk/ui/e;
.super Ljava/util/TimerTask;
.source "WifiConnectingActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;-><init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 198
    return-void
.end method
