.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager$DefaultModeSetter;
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

    const/4 v0, 0x3

    sget v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->isLowerApi()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->access$100(Landroid/media/AudioManager;)V

    goto :goto_0
.end method

.method public setSpeakerLineMode(Landroid/media/AudioManager;)V
    .locals 2

    const/4 v0, 0x3

    sget v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    sget v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->isLowerApi()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->access$000(Landroid/media/AudioManager;)V

    goto :goto_0
.end method
