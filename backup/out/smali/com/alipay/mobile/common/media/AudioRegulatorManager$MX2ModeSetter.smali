.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager$MX2ModeSetter;
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
    .locals 0

    invoke-static {p1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->access$100(Landroid/media/AudioManager;)V

    return-void
.end method

.method public setSpeakerLineMode(Landroid/media/AudioManager;)V
    .locals 0

    invoke-static {p1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->access$000(Landroid/media/AudioManager;)V

    return-void
.end method
