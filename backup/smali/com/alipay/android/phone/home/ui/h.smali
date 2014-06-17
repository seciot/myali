.class final Lcom/alipay/android/phone/home/ui/h;
.super Landroid/content/BroadcastReceiver;
.source "HeaderAreaLayout.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/h;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 247
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/h;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->f(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    .line 249
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/h;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->g(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.cleanAccount"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/h;->a:Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;->f(Lcom/alipay/android/phone/home/ui/HeaderAreaLayout;)V

    goto :goto_0
.end method
