.class Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;
.super Landroid/os/ResultReceiver;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/util/CustomKeyboardhelper;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/util/CustomKeyboardhelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;->a:Lcom/alipay/android/mini/util/CustomKeyboardhelper;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;->a:Lcom/alipay/android/mini/util/CustomKeyboardhelper;

    invoke-static {v0}, Lcom/alipay/android/mini/util/CustomKeyboardhelper;->b(Lcom/alipay/android/mini/util/CustomKeyboardhelper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/mini/util/c;

    invoke-direct {v1, p0}, Lcom/alipay/android/mini/util/c;-><init>(Lcom/alipay/android/mini/util/CustomKeyboardhelper$2;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
