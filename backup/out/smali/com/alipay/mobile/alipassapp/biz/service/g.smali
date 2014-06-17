.class public final Lcom/alipay/mobile/alipassapp/biz/service/g;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "upload_alipass_hander_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/alipay/mobile/alipassapp/biz/service/f;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/mobile/alipassapp/biz/service/f;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/biz/service/f;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
