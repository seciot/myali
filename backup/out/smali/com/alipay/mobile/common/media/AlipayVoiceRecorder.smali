.class public Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;
.super Lcom/alipay/mobile/common/media/VoiceRecorder;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

.field private c:Landroid/hardware/SensorManager;

.field private d:Landroid/hardware/Sensor;

.field private e:Landroid/telephony/TelephonyManager;

.field private f:Z

.field private g:Z

.field private h:Ljava/lang/Thread;

.field private i:Ljava/lang/Thread;

.field private j:Landroid/os/Handler;

.field private k:Ljava/io/File;

.field private l:Landroid/telephony/PhoneStateListener;

.field private m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;-><init>()V

    iput-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->f:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z

    iput-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    new-instance v0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$3;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->l:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    iput-object p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager;->newAudioRegulator(Landroid/content/Context;)Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->d:Landroid/hardware/Sensor;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->j:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->setListener(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/SensorManager;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->c:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Landroid/hardware/Sensor;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->d:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z

    return p1
.end method


# virtual methods
.method public cancelRecordingWithDuration()V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopRecording()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceFileDuration(Landroid/content/Context;Ljava/io/File;)I
    .locals 3

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    const/high16 v2, 0x3f00

    add-float/2addr v0, v2

    float-to-int v0, v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBackgound()V
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    iget-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->resetSpeakerToOriginal()V

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$2;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->i:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->i:Ljava/lang/Thread;

    const-string/jumbo v1, "sensorUnregisterThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->i:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->l:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a()V

    return-void
.end method

.method public onForeground()V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$1;-><init>(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;

    const-string/jumbo v1, "sensorRegisterThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->h:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->e:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->l:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_0

    const/high16 v3, 0x40a0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->f:Z

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->state()I

    move-result v0

    if-ne v1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->closeToTheFace()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->b:Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/media/AudioRegulatorManager$AudioRegulator;->stayAwayFromFace(Z)V

    goto :goto_0
.end method

.method public startRecordingWithDuration(Landroid/content/Context;Ljava/io/File;ILcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V
    .locals 4

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p2, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2, p1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->startRecording(ILjava/io/File;Landroid/content/Context;)V

    if-lez p3, :cond_0

    int-to-long v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a()V

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    invoke-virtual {v2, p4}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;->setListener(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationListener;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->j:Landroid/os/Handler;

    iget-object v3, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->m:Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MaxRecordDurationNotifier;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stopRecordingWithDuration(Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MinRecordDurationListener;)I
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->stopRecording()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->sampleLength()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-interface {p1}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder$MinRecordDurationListener;->onMinRecordDurationCompleted()V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->k:Ljava/io/File;

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->a()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/AlipayVoiceRecorder;->sampleLength()I

    move-result v0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
