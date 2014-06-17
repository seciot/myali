.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager$MB860ModeSetter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEarphoneLineMode(Landroid/media/AudioManager;)V
    .locals 2

    sget v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void
.end method

.method public setSpeakerLineMode(Landroid/media/AudioManager;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method
