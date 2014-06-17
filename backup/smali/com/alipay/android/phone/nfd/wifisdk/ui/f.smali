.class final Lcom/alipay/android/phone/nfd/wifisdk/ui/f;
.super Ljava/lang/Object;
.source "WifiConnectingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/alipay/android/phone/nfd/wifisdk/ui/e;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/e;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;->b:Lcom/alipay/android/phone/nfd/wifisdk/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;->b:Lcom/alipay/android/phone/nfd/wifisdk/ui/e;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 191
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    if-eqz v1, :cond_0

    .line 193
    check-cast v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->finish()V

    .line 194
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/f;->b:Lcom/alipay/android/phone/nfd/wifisdk/ui/e;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/e;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->e(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z

    .line 196
    :cond_0
    return-void
.end method
