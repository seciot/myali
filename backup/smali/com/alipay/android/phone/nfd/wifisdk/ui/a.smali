.class final Lcom/alipay/android/phone/nfd/wifisdk/ui/a;
.super Lcom/alipay/android/phone/nfd/wifisdk/ui/i;
.source "WifiConnectingActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/a;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/a;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/a;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->o:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    return-void
.end method
