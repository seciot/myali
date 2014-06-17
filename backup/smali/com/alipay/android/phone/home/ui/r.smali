.class final Lcom/alipay/android/phone/home/ui/r;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/r;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->h:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$200(Lcom/alipay/android/phone/home/ui/HomeFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/ui/s;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/s;-><init>(Lcom/alipay/android/phone/home/ui/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method
