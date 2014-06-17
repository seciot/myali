.class final Lcom/alipay/android/phone/nfd/wifisdk/ui/b;
.super Lcom/alipay/android/phone/nfd/wifisdk/ui/i;
.source "WifiConnectingActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-direct {p0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    iget-object v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->j:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->a(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->b(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Lcom/alipay/android/phone/nfd/wifisdk/ui/j;

    move-result-object v0

    iget-boolean v0, v0, Lcom/alipay/android/phone/nfd/wifisdk/ui/j;->a:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->c(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)V

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->f()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/nfd/wifisdk/ui/b;->a:Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;

    invoke-static {v0}, Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;->d(Lcom/alipay/android/phone/nfd/wifisdk/ui/WifiConnectingActivity;)Z

    goto :goto_0
.end method
