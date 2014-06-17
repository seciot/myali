.class public Lcom/alipay/mobile/common/media/VoiceRecorder;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_CALL_RECORD_ERROR:I = 0x3

.field public static final NO_ERROR:I = 0x0

.field public static final PAUSE_STATE:I = 0x3

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field static final SAMPLE_PREFIX:Ljava/lang/String; = "recording"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1


# instance fields
.field public EVERY_TIME:I

.field private a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

.field private b:Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;

.field private c:Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;

.field private d:Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;

.field private e:J

.field private f:I

.field private g:Landroid/media/MediaRecorder;

.field private h:Landroid/media/MediaPlayer;

.field private final i:Landroid/os/Handler;

.field private j:Ljava/util/Timer;

.field private k:Ljava/util/TimerTask;

.field private final l:I

.field private m:Ljava/lang/Runnable;

.field mState:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->b:Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->c:Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->d:Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->e:J

    iput v3, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->f:I

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    iput-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->i:Landroid/os/Handler;

    const/16 v0, 0x96

    iput v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->EVERY_TIME:I

    const/16 v0, -0x64

    iput v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->l:I

    new-instance v0, Lcom/alipay/mobile/common/media/VoiceRecorder$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/VoiceRecorder$1;-><init>(Lcom/alipay/mobile/common/media/VoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->m:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 6

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->j:Ljava/util/Timer;

    new-instance v0, Lcom/alipay/mobile/common/media/VoiceRecorder$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/media/VoiceRecorder$3;-><init>(Lcom/alipay/mobile/common/media/VoiceRecorder;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->k:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->j:Ljava/util/Timer;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->k:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    iget v4, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->EVERY_TIME:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->b(I)V

    goto :goto_0
.end method

.method private a(Ljava/io/File;Landroid/net/Uri;Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stop()V

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    const/16 v0, -0x64

    if-eq v0, p6, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    if-eqz p1, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    :goto_1
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_1
    if-eqz p5, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/alipay/mobile/common/media/VoiceRecorder$2;

    invoke-direct {v1, p0, p5}, Lcom/alipay/mobile/common/media/VoiceRecorder$2;-><init>(Lcom/alipay/mobile/common/media/VoiceRecorder;Landroid/media/MediaPlayer$OnCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->e:J

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    iput-object v4, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    :try_start_2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    :goto_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    iput-object v4, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_5
    :try_start_4
    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    iput-object v4, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    goto :goto_3

    :cond_6
    if-eqz p3, :cond_2

    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto/16 :goto_1

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_2
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/media/VoiceRecorder;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->b:Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    mul-int/lit8 v0, v0, 0x31

    const v1, 0x8000

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->b:Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;->onVolumnChanged(I)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->state()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->b()V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/media/VoiceRecorder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->d:Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->d:Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;->onVoiceProgress(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show play pragress error"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method private b()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->m:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;->onError(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stop()V

    iput v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->f:I

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->b(I)V

    return-void
.end method

.method public getMaxAmplitude()I
    .locals 2

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stop()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->c:Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->c:Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;

    invoke-interface {v0}, Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;->onVoicePlayCompleted()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stop()V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    return v0
.end method

.method public pausePlay()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stopProgress()V

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    goto :goto_0
.end method

.method public play(Landroid/net/Uri;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, -0x64

    move-object v0, p0

    move-object v2, p1

    move-object v3, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(Ljava/io/File;Landroid/net/Uri;Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V

    return-void
.end method

.method public play(Ljava/io/File;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, -0x64

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(Ljava/io/File;Landroid/net/Uri;Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V

    return-void
.end method

.method public play(Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 7

    const/4 v1, 0x0

    const/16 v6, -0x64

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(Ljava/io/File;Landroid/net/Uri;Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V

    return-void
.end method

.method public play(Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V
    .locals 7

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(Ljava/io/File;Landroid/net/Uri;Ljava/io/FileDescriptor;Landroid/media/MediaPlayer$OnPreparedListener;Landroid/media/MediaPlayer$OnCompletionListener;I)V

    return-void
.end method

.method public progress()I
    .locals 4

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resumePlay()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    goto :goto_0
.end method

.method public sampleLength()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->f:I

    return v0
.end method

.method public setStateChangedListener(Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->a:Lcom/alipay/mobile/common/media/VoiceRecorder$StateChangedListener;

    return-void
.end method

.method public setmVoicePlayCompletionListener(Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->c:Lcom/alipay/mobile/common/media/VoiceRecorder$VoicePlayCompletionListener;

    return-void
.end method

.method public setmVoiceProgressListener(Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->d:Lcom/alipay/mobile/common/media/VoiceRecorder$VoiceProgressListener;

    return-void
.end method

.method public setmVolumnChangedListener(Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->b:Lcom/alipay/mobile/common/media/VoiceRecorder$VolumnChangedListener;

    return-void
.end method

.method public startRecording(ILjava/io/File;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stop()V

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    invoke-direct {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->b()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->e:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    const-string/jumbo v0, "audio"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V

    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->c(I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public state()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->mState:I

    return v0
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stopRecording()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stopPlay()V

    return-void
.end method

.method public stopPlay()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->stopProgress()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->h:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    goto :goto_0
.end method

.method public stopProgress()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->j:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->j:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->j:Ljava/util/Timer;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->k:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->k:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    iput-object v1, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->k:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->g:Landroid/media/MediaRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/media/VoiceRecorder;->f:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/media/VoiceRecorder;->a(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    goto :goto_1
.end method
