.class public Lcom/alipay/mobile/common/media/AudioRegulatorManager;
.super Ljava/lang/Object;


# static fields
.field static final apiLevel:I

.field static final deviceModel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioManager;)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Landroid/media/AudioManager;)V
    .locals 2

    const/4 v1, 0x2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->setMode(I)V

    :cond_0
    return-void
.end method

.method public static final isLowerApi()Z
    .locals 2

    sget v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    sget v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->apiLevel:I

    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isSamsungDevice()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "samsung"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newAudioRegulator(Landroid/content/Context;)Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "deviceModel: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->deviceModel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v1, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "MB860"

    sget-object v2, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$MB860ModeSetter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$MB860ModeSetter;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->setLineModeSetter(Lcom/alipay/mobile/common/media/AudioRegulatorManager$LineModeSetter;)V

    return-object v1

    :cond_0
    const-string/jumbo v0, "M040"

    sget-object v2, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->deviceModel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$MX2ModeSetter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$MX2ModeSetter;-><init>()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$SamsungModeSetter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$SamsungModeSetter;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/media/AudioRegulatorManager$DefaultModeSetter;

    invoke-direct {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$DefaultModeSetter;-><init>()V

    goto :goto_0
.end method
