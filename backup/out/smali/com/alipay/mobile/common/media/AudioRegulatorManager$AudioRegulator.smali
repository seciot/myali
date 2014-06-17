.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/media/AudioManager;

.field private b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->c:I

    :cond_0
    return-void
.end method


# virtual methods
.method public closeToTheFace()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->isSpeakerphoneAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->turnEarPhone()V

    :cond_0
    return-void
.end method

.method public isSpeakerphoneAvailable()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v1

    :goto_1
    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_0
.end method

.method public resetSpeakerToOriginal()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public setLineModeSetter(Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

    return-void
.end method

.method public stayAwayFromFace(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->isSpeakerphoneAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->turnSpeakerphoneOn()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->turnEarPhone()V

    goto :goto_0
.end method

.method public turnEarPhone()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->isSpeakerphoneAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;->setEarphoneLineMode(Landroid/media/AudioManager;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method public turnSpeakerphoneOn()V
    .locals 2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->isSpeakerphoneAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;->setSpeakerLineMode(Landroid/media/AudioManager;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->a:Landroid/media/AudioManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method
