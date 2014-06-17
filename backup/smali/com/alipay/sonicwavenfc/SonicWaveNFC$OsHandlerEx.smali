.class Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;


# direct methods
.method public constructor <init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "GBK"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopReceiveData()V

    iget-object v1, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v1, v1, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v1, v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onDataReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopReceiveData()V

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onReceiveDataTimeout()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v1, v1, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v1, v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onReceiveDataInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onReceiveDataStarted()V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onSendDataTimeout()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onSendDataStarted()V

    goto :goto_0

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v1, v1, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-interface {v1, v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;->onSendDataInfo(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_7
    .end packed-switch
.end method
