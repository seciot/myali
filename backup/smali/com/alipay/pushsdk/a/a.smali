.class public Lcom/alipay/pushsdk/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:Z

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Landroid/content/Context;

.field private m:Lcom/alipay/pushsdk/c/b;

.field private n:Landroid/os/Handler;

.field private o:Lcom/alipay/pushsdk/push/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/a/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/16 v2, 0x12c

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/alipay/pushsdk/a/a;->h:I

    iput v1, p0, Lcom/alipay/pushsdk/a/a;->i:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->j:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->k:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->a:Ljava/lang/String;

    iput v2, p0, Lcom/alipay/pushsdk/a/a;->b:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    iput v1, p0, Lcom/alipay/pushsdk/a/a;->d:I

    iput-boolean v1, p0, Lcom/alipay/pushsdk/a/a;->f:Z

    iput-object p1, p0, Lcom/alipay/pushsdk/a/a;->l:Landroid/content/Context;

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/a/a;->l:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/a/a;->o:Lcom/alipay/pushsdk/push/o;

    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v1, "consumeCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->c:I

    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v1, "successCount"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_1

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->d:I

    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v1, "intervalTime"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/pushsdk/a/a;->b:I

    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v1, "LAST_CONFIG_TIME"

    invoke-virtual {v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    iput-wide v0, p0, Lcom/alipay/pushsdk/a/a;->e:J

    :cond_2
    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->n:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ConfigPolicy_init: lastRunTime="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/alipay/pushsdk/a/a;->e:J

    invoke-static {v8, v9}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", minTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/alipay/pushsdk/a/a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init() lastRunTime="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/alipay/pushsdk/a/a;->e:J

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", curCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/a/a;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", maxCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/a/a;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", minTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/pushsdk/a/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/a/a;->l:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->o:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v2}, Lcom/alipay/pushsdk/push/o;->b()Z

    move-result v2

    const/4 v3, 0x4

    sget-object v4, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "toStart() trigger="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", settingStatus:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->l:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->l:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/pushsdk/c/c;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move v10, v2

    :goto_0
    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->h:Ljava/lang/String;

    sget-object v3, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v12, 0x2710

    add-long/2addr v7, v12

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "ConfigPolicy_checkNetState: Network_Type="

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v12, ", Network_State="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Network_Type="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", Network_State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", net="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-nez v10, :cond_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x3

    sget-object v4, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    const-string/jumbo v5, "checkNetState networkInfo is null."

    invoke-static {v2, v4, v5}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    move v10, v3

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "13"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "14"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONFIG_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v5, "CREATE_CONFIG_TIME"

    invoke-virtual {v4, v5}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v15

    sub-long v4, v13, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v6, v6, 0xf

    mul-int/lit8 v6, v6, 0x3c

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/a/a;->o:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/o;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/pushsdk/a/a;->d:I

    mul-int/lit8 v2, v2, 0xf

    int-to-long v0, v2

    move-wide/from16 v17, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v19

    mul-int/lit8 v2, v9, 0x3c

    add-int v2, v2, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/a/a;->o:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/o;->e()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    sub-int/2addr v2, v3

    int-to-long v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "checkDelayTime delay="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; hour="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "; eslapsedMin="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/pushsdk/a/a;->o:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v7}, Lcom/alipay/pushsdk/push/o;->e()I

    move-result v7

    if-lt v9, v7, :cond_4

    cmp-long v7, v5, v17

    if-gez v7, :cond_4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    move-wide/from16 v0, v17

    long-to-double v7, v0

    mul-double/2addr v2, v7

    const-wide/high16 v7, 0x404e

    mul-double/2addr v2, v7

    double-to-long v2, v2

    const-wide/16 v7, 0x3e8

    mul-long v10, v2, v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v10

    const-wide/16 v7, 0x1e

    sub-long v4, v5, v7

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long v20, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONFIG_TIME"

    move-wide/from16 v0, v20

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "checkDelayTime rand="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expectedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v20 .. v21}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->v:Ljava/lang/String;

    sget-object v3, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v22, 0x2710

    add-long v7, v7, v22

    new-instance v22, Ljava/lang/StringBuilder;

    const-string/jumbo v23, "ConfigPolicy_checkDelayTime: expectedTime="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v21}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", rand="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", hour="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v20, " min="

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    move-wide v2, v10

    :cond_4
    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "checkDelayTime delay="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", rand="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONFIG_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v9, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "LAST_CONFIG_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v3

    sub-long v5, v13, v3

    const-wide/16 v7, 0x3e8

    div-long v17, v5, v7

    cmp-long v2, v13, v9

    if-gez v2, :cond_5

    const/4 v2, 0x0

    :goto_4
    sub-long v5, v13, v15

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    const-wide/16 v7, 0x708

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    const/4 v2, 0x0

    move v11, v2

    :goto_5
    const/4 v2, 0x4

    sget-object v5, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ConfigPolicy_getPolicy() delayPollTime="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", lastPollTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3, v4}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", createPollTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v15 .. v16}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", curTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v13, v14}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", waitedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v17

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "s, ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->h:Ljava/lang/String;

    sget-object v3, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v19, 0x2710

    add-long v7, v7, v19

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "ConfigPolicy_getPolicy: delayPollTime="

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v10}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", createPollTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v15 .. v16}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", curTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v13, v14}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", waitedTime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v17

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "s, ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const/4 v2, 0x1

    if-ne v11, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/a/a;->m:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "CREATE_CONFIG_TIME"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/a/a;->g:Ljava/lang/String;

    const-string/jumbo v4, "runConfigRequest start..."

    invoke-static {v2, v3, v4}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/a/b;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/alipay/pushsdk/a/b;-><init>(Lcom/alipay/pushsdk/a/a;)V

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "ConfigReqThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/alipay/pushsdk/a/a;->n:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/a/a;->n:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_5
    const-wide/16 v5, 0x3c

    div-long v5, v17, v5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/alipay/pushsdk/a/a;->b:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-gez v2, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_6
    move v11, v2

    goto/16 :goto_5

    :cond_7
    move v2, v12

    goto/16 :goto_4

    :cond_8
    move-wide v9, v2

    goto/16 :goto_3

    :cond_9
    move v10, v3

    goto/16 :goto_0
.end method
