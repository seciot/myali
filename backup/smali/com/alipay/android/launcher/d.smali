.class final Lcom/alipay/android/launcher/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method constructor <init>(Lcom/alipay/android/launcher/TabLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/d;->a:Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/alipay/android/launcher/d;->a:Lcom/alipay/android/launcher/TabLauncher;

    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->b(Lcom/alipay/android/launcher/TabLauncher;)Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/TabHost;->measure(II)V

    iget-object v0, p0, Lcom/alipay/android/launcher/d;->a:Lcom/alipay/android/launcher/TabLauncher;

    invoke-static {v0}, Lcom/alipay/android/launcher/TabLauncher;->c(Lcom/alipay/android/launcher/TabLauncher;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
