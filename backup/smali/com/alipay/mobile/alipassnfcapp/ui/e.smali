.class final Lcom/alipay/mobile/alipassnfcapp/ui/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/service/phoneblacklist/PhoneBlackListCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/e;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callBack(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/e;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->setPhoneConfig(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/e;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->isReceiverSoincWave()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/e;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->isSupportReceiveSound:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassnfcapp/ui/e;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    #getter for: Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->mSonicWaveNFC:Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    invoke-static {v0}, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->access$1000(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopReceiveData()V

    :cond_0
    return-void
.end method
