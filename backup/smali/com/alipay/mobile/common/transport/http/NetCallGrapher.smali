.class public Lcom/alipay/mobile/common/transport/http/NetCallGrapher;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:J

.field private t:J

.field private u:J

.field private v:I

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ","

    const-string/jumbo v1, "#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getCallUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    return-wide v0
.end method

.method public getClientVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getCookieOrigin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    return-wide v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getNet0()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    return v0
.end method

.method public getNet1()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    return v0
.end method

.method public getNetKey()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getRandom1()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    return v0
.end method

.method public getRandom2()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    iget-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    return-wide v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTime1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    return-object v0
.end method

.method public isDownLev()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    return v0
.end method

.method public isSuccess1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    return v0
.end method

.method public isUpdateThis()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->l:Z

    return v0
.end method

.method public recordExcuteTime(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    return-void
.end method

.method public setCallUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    return-void
.end method

.method public setCenterTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    return-void
.end method

.method public setClientVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->i:Ljava/lang/String;

    return-void
.end method

.method public setCookieOrigin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    return-void
.end method

.method public setDownHttpsCall(Ljava/lang/Exception;)V
    .locals 2

    const/4 v1, 0x1

    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    return-void
.end method

.method public setDownLev(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    return-void
.end method

.method public setEndTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    return-void
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public setErrorCode1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    return-void
.end method

.method public setExtUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->m:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->n:Ljava/lang/String;

    return-void
.end method

.method public setHttpsCall()V
    .locals 1

    const-string/jumbo v0, "https"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    return-void
.end method

.method public setNet0(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    return-void
.end method

.method public setNet1(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    return-void
.end method

.method public setNetInfo(II)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    iput p2, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->j:Ljava/lang/String;

    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->k:Ljava/lang/String;

    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    return-void
.end method

.method public setProtocol1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    return-void
.end method

.method public setRandom1(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    return-void
.end method

.method public setRandom2(I)V
    .locals 0

    iput p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    return-void
.end method

.method public setSpdyCall()V
    .locals 1

    const-string/jumbo v0, "spdy"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    return-void
.end method

.method public setSuccess1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    return-void
.end method

.method public setTime1(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    return-void
.end method

.method public setUpdateThis(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->l:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "net:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";api:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";protocol:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";downLev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";success:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";success1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";errorCode1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";protocol1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";startTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";centerTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";endTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upGrapher2Server(Landroid/content/Context;)V
    .locals 17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    const-string/jumbo v4, "spdy"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->v:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    move v14, v1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->t:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->f:Z

    if-nez v1, :cond_6

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "F"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "MonitorPoint_NetworkError"

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v1, 0x6

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    aput-object v15, v13, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    aput-object v15, v13, v1

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "T"

    :goto_3
    aput-object v1, v13, v15

    const/4 v1, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Android|"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v15, v13, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->q:Z

    if-nez v1, :cond_9

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "F"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->r:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "MonitorPoint_NetworkError"

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v1, 0x6

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    aput-object v14, v13, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    aput-object v14, v13, v1

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "T"

    :goto_5
    aput-object v1, v13, v14

    const/4 v1, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Android|"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v14, v13, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->w:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-nez v2, :cond_b

    const/4 v1, 0x1

    move v14, v1

    goto/16 :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->u:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->s:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    const-string/jumbo v1, "F"

    goto/16 :goto_3

    :cond_6
    if-eqz v14, :cond_2

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "T"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "MonitorPoint_NetworkDigest"

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v1, 0x6

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->c:Ljava/lang/String;

    aput-object v15, v13, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->d:Ljava/lang/String;

    aput-object v15, v13, v1

    const/4 v15, 0x3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "T"

    :goto_6
    aput-object v1, v13, v15

    const/4 v1, 0x4

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "Android|"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "|"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v15, v13, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    const-string/jumbo v1, "F"

    goto :goto_6

    :cond_8
    const-string/jumbo v1, "F"

    goto/16 :goto_5

    :cond_9
    if-eqz v14, :cond_0

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "T"

    const/4 v4, 0x0

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, "MonitorPoint_NetworkDigest"

    const-string/jumbo v8, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v1, 0x6

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->a:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->b:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->p:Ljava/lang/String;

    aput-object v14, v13, v1

    const/4 v1, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->o:Ljava/lang/String;

    aput-object v14, v13, v1

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->e:Z

    if-eqz v1, :cond_a

    const-string/jumbo v1, "T"

    :goto_7
    aput-object v1, v13, v14

    const/4 v1, 0x4

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "Android|"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "|"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy;->STRATEGY_VERSION:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alipay/mobile/common/transport/http/NetCallGrapher;->h:Ljava/lang/String;

    aput-object v14, v13, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v1, "F"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_b
    move v14, v1

    goto/16 :goto_1
.end method
