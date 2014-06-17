.class final Lcom/alipay/android/mini/window/j;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/data/BizUiData;

.field final synthetic b:Lcom/alipay/android/mini/window/MiniEventHandleHelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/MiniEventHandleHelper;Lcom/alipay/android/app/data/BizUiData;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/window/j;->b:Lcom/alipay/android/mini/window/MiniEventHandleHelper;

    iput-object p2, p0, Lcom/alipay/android/mini/window/j;->a:Lcom/alipay/android/app/data/BizUiData;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "isCertified"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/j;->a:Lcom/alipay/android/app/data/BizUiData;

    invoke-interface {v0}, Lcom/alipay/android/app/data/BizUiData;->c()Lcom/alipay/android/app/data/DataProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/data/DataProcessor;->j()Z

    :cond_0
    return-void
.end method
