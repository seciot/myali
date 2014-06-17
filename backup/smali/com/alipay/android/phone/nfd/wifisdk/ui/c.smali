.class final Lcom/alipay/android/phone/nfd/wifisdk/ui/c;
.super Lcom/alipay/android/phone/nfd/wifisdk/ui/i;
.source "WifiConnectingActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->i:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->k:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/c;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v1, v1, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->p:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    return-void
.end method
