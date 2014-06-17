.class public Lcom/alipay/sonicwavenfc/SonicWaveNFC;
.super Ljava/lang/Object;


# static fields
.field public static final NFC_SENDDATA_SOUNDTYPE_MIX:I = 0x2

.field public static final NFC_SENDDATA_SOUNDTYPE_NOISY:I = 0x1

.field public static final NFC_SENDDATA_SOUNDTYPE_SILENT:I

.field private static c:Lcom/alipay/sonicwavenfc/SonicWaveNFC;


# instance fields
.field protected a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

.field protected b:Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

.field private d:Lcom/alipay/b/a/a;

.field private e:Lcom/alipay/b/b/b;

.field private f:Landroid/media/AudioManager;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->c:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    new-instance v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;-><init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->b:Lcom/alipay/sonicwavenfc/SonicWaveNFC$OsHandlerEx;

    new-instance v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$ReceiveDataHandlerImpl;

    invoke-direct {v0, p0, v2}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$ReceiveDataHandlerImpl;-><init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;Lcom/alipay/sonicwavenfc/SonicWaveNFC$ReceiveDataHandlerImpl;)V

    iput-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->d:Lcom/alipay/b/a/a;

    new-instance v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;

    invoke-direct {v0, p0, v2}, Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;-><init>(Lcom/alipay/sonicwavenfc/SonicWaveNFC;Lcom/alipay/sonicwavenfc/SonicWaveNFC$SendDataHandlerImpl;)V

    iput-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->e:Lcom/alipay/b/b/b;

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    iput v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->h:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->j:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    iput v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    iput v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    iput-boolean v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    iput v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I

    return-void
.end method

.method public static getInstance()Lcom/alipay/sonicwavenfc/SonicWaveNFC;
    .locals 1

    sget-object v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->c:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    invoke-direct {v0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;-><init>()V

    sput-object v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->c:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    :cond_0
    sget-object v0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->c:Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    return-object v0
.end method


# virtual methods
.method public getReceiveDataHandler()Lcom/alipay/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->d:Lcom/alipay/b/a/a;

    return-object v0
.end method

.method public getSendDataHandler()Lcom/alipay/b/b/b;
    .locals 1

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->e:Lcom/alipay/b/b/b;

    return-object v0
.end method

.method public initSonicWaveNFC(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public isReceiverSoincWave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    return v0
.end method

.method public isSendSoincWave()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public printPara()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sManufacturer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sModel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " sVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isSendExtraMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iVol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iMinAmpl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " isReceiverExtraMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " iMicType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected resetOriVolume()V
    .locals 4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetOriVolume mOriVolume="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    const-string/jumbo v0, "SonicWaveNFC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetOriVolume mOriVolume="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u97f3\u91cf\u5df2\u7ecf\u6062\u590d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v0, "SonicWaveNFC"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetOriVolume mOriVolume="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " \u97f3\u91cf\u672a\u6062\u590d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setBkSoundWave4MixFromAsset(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/alipay/b/b/c;->a()Lcom/alipay/b/b/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/b/b/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPhoneConfig(Ljava/lang/String;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iput-object v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->h:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->i:Ljava/lang/String;

    iput-object v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->j:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    iput v5, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    iput v5, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    iput-boolean v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    iput v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    const-string/jumbo v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "paramArr length="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    if-eqz v2, :cond_4

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->h:Ljava/lang/String;

    :cond_4
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->i:Ljava/lang/String;

    :cond_5
    const/4 v2, 0x2

    aget-object v2, v1, v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_6

    const-string/jumbo v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->j:Ljava/lang/String;

    :cond_6
    :goto_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x3

    if-ge v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x3

    aget-object v2, v1, v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    if-eqz v2, :cond_7

    const-string/jumbo v4, "isSExt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "iVolume"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    goto :goto_2

    :cond_a
    const-string/jumbo v4, "iMin"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    goto :goto_2

    :cond_b
    const-string/jumbo v4, "isRExt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string/jumbo v3, "false"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    goto :goto_2

    :cond_c
    const-string/jumbo v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->n:Z

    goto :goto_2

    :cond_d
    const-string/jumbo v4, "iMicType"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public startReceiveData(IILandroid/content/Context;Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;)Z
    .locals 5

    const/4 v4, 0x1

    const-string/jumbo v0, "SonicWaveNFC"

    const-string/jumbo v1, "\u8c03\u7528 startReceiveData \u51c6\u5907\u5f00\u59cb\u63a5\u6536\u58f0\u6ce2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    :try_start_0
    const-string/jumbo v0, "audio"

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    invoke-static {}, Lcom/alipay/b/b/d;->a()Lcom/alipay/b/b/d;

    move-result-object v0

    invoke-static {}, Lcom/alipay/b/a/b;->a()Lcom/alipay/b/a/b;

    move-result-object v1

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/b/b/d;->c()V

    invoke-virtual {v1}, Lcom/alipay/b/a/b;->c()V

    invoke-virtual {v2}, Lcom/alipay/b/a/d;->c()V

    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    const/16 v0, 0xc8

    if-le p2, v0, :cond_1

    :cond_0
    const/16 p2, 0x14

    :cond_1
    const/4 v0, -0x1

    iget v3, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    if-eq v0, v3, :cond_2

    iget p2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->m:I

    :cond_2
    iget v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I

    if-eq v4, v0, :cond_3

    iget v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->o:I

    invoke-virtual {v2, v0}, Lcom/alipay/b/a/d;->a(I)V

    :cond_3
    int-to-float v0, p2

    invoke-virtual {v1, v0}, Lcom/alipay/b/a/b;->a(F)V

    invoke-virtual {v1, p1}, Lcom/alipay/b/a/b;->a(I)V

    invoke-virtual {v2}, Lcom/alipay/b/a/d;->b()V

    return v4

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public startSendData(Ljava/lang/String;IIILandroid/content/Context;Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;)Z
    .locals 8

    const-string/jumbo v0, "SonicWaveNFC"

    const-string/jumbo v1, "\u8c03\u7528 startSendData \u51c6\u5907\u5f00\u59cb\u53d1\u9001\u58f0\u6ce2 \u5148\u505c\u6b62\u53d1\u9001"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    const-string/jumbo v0, "SonicWaveNFC"

    const-string/jumbo v1, "\u8c03\u7528 startSendData \u51c6\u5907\u5f00\u59cb\u53d1\u9001\u58f0\u6ce2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9

    :try_start_0
    const-string/jumbo v0, "GBK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :goto_0
    iput-object p6, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->a:Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;

    invoke-static {}, Lcom/alipay/b/b/c;->a()Lcom/alipay/b/b/c;

    move-result-object v2

    invoke-static {}, Lcom/alipay/b/b/d;->a()Lcom/alipay/b/b/d;

    move-result-object v3

    invoke-static {}, Lcom/alipay/b/a/b;->a()Lcom/alipay/b/a/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/b/b/d;->b()Z

    move-result v5

    invoke-virtual {v3}, Lcom/alipay/b/b/d;->c()V

    invoke-virtual {v0}, Lcom/alipay/b/a/b;->c()V

    invoke-virtual {v4}, Lcom/alipay/b/a/d;->c()V

    if-eqz v5, :cond_0

    const-wide/16 v4, 0x12c

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    const/4 v0, 0x1

    if-ne p3, v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/alipay/b/b/c;->a(Z)V

    :try_start_2
    const-string/jumbo v0, "audio"

    invoke-virtual {p5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mOriVolume="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->g:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    const/16 v0, 0x32

    if-lt p4, v0, :cond_1

    const/16 v0, 0x64

    if-le p4, v0, :cond_8

    :cond_1
    const/16 v0, 0x32

    :goto_4
    const/16 v4, 0x50

    if-le v0, v4, :cond_2

    const/16 v0, 0x50

    :cond_2
    iget-boolean v4, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->k:Z

    if-eqz v4, :cond_3

    const/4 p3, 0x1

    :cond_3
    packed-switch p3, :pswitch_data_0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->a(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->b(Z)V

    :goto_5
    const/4 v4, -0x1

    iget v5, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    if-eq v4, v5, :cond_4

    iget v0, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->l:I

    :cond_4
    const/4 v4, 0x1

    new-array v4, v4, [I

    invoke-virtual {v2, v1, v4, p2}, Lcom/alipay/b/b/c;->a([B[II)[B

    move-result-object v1

    if-nez v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    :pswitch_0
    div-int/lit8 v0, v0, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->a(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->b(Z)V

    goto :goto_5

    :pswitch_1
    const/16 v4, 0x32

    if-gt v0, v4, :cond_6

    const/16 v0, 0x32

    :cond_6
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->a(Z)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/alipay/b/b/c;->b(Z)V

    goto :goto_5

    :cond_7
    :try_start_3
    iget-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/media/AudioManager;->setStreamMute(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_7
    :try_start_4
    iget-object v2, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->f:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v6

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x64

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v0, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_8
    const/4 v0, 0x0

    aget v0, v4, v0

    invoke-virtual {v3, v1, v0, p2}, Lcom/alipay/b/b/d;->a([BII)Z

    move-result v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v2

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_3

    :cond_8
    move v0, p4

    goto :goto_4

    :cond_9
    move-object v1, v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopReceiveData()V
    .locals 2

    const-string/jumbo v0, "SonicWaveNFC"

    const-string/jumbo v1, "\u8c03\u7528 stopReceiveData \u505c\u6b62\u63a5\u6536\u58f0\u6ce2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/alipay/b/a/b;->a()Lcom/alipay/b/a/b;

    move-result-object v0

    invoke-static {}, Lcom/alipay/b/a/d;->a()Lcom/alipay/b/a/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/b/a/b;->c()V

    invoke-virtual {v1}, Lcom/alipay/b/a/d;->c()V

    return-void
.end method

.method public stopSendData()V
    .locals 2

    const-string/jumbo v0, "SonicWaveNFC"

    const-string/jumbo v1, "\u8c03\u7528 stopSendData \u505c\u6b62\u53d1\u9001\u58f0\u6ce2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/alipay/b/b/d;->a()Lcom/alipay/b/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/b/b/d;->c()V

    invoke-virtual {p0}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->resetOriVolume()V

    return-void
.end method
