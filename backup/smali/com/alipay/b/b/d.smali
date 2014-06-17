.class public final Lcom/alipay/b/b/d;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/alipay/b/b/d;


# instance fields
.field protected a:Landroid/media/AudioTrack;

.field protected b:I

.field private c:Lcom/alipay/b/b/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/b/b/d;->b:I

    iput-object v1, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    return-void
.end method

.method public static a()Lcom/alipay/b/b/d;
    .locals 1

    sget-object v0, Lcom/alipay/b/b/d;->d:Lcom/alipay/b/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/b/b/d;

    invoke-direct {v0}, Lcom/alipay/b/b/d;-><init>()V

    sput-object v0, Lcom/alipay/b/b/d;->d:Lcom/alipay/b/b/d;

    :cond_0
    sget-object v0, Lcom/alipay/b/b/d;->d:Lcom/alipay/b/b/d;

    return-object v0
.end method


# virtual methods
.method public final a([BII)Z
    .locals 8

    const/4 v7, 0x0

    mul-int/lit16 v0, p3, 0x3e8

    iput v0, p0, Lcom/alipay/b/b/d;->b:I

    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const v2, 0xac44

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v6, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    new-instance v1, Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    invoke-virtual {v1}, Landroid/media/audiofx/Equalizer;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    div-int/lit8 v0, p2, 0x2

    iget-object v1, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    shl-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v1, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    invoke-virtual {v0, v7}, Lcom/alipay/b/b/e;->a(Z)V

    :cond_1
    new-instance v0, Lcom/alipay/b/b/e;

    invoke-direct {v0, p0}, Lcom/alipay/b/b/e;-><init>(Lcom/alipay/b/b/d;)V

    iput-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    iget-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    invoke-virtual {v0}, Lcom/alipay/b/b/e;->start()V

    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/b/b/e;->a(Z)V

    iput-object v2, p0, Lcom/alipay/b/b/d;->c:Lcom/alipay/b/b/e;

    :cond_0
    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v2, p0, Lcom/alipay/b/b/d;->a:Landroid/media/AudioTrack;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
