.class Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/b/b/b;


# instance fields
.field private synthetic a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;


# direct methods
.method private constructor <init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;-><init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;)V

    return-void
.end method


# virtual methods
.method public OnSendDataInfo(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->b:Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSendDataStarted()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->b:Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onSendDataTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    iget-object v0, v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->b:Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
