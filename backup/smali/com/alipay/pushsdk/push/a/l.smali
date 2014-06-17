.class public Lcom/alipay/pushsdk/push/a/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Landroid/content/Context;

.field private e:Lcom/alipay/pushsdk/c/b;

.field private f:Lcom/alipay/pushsdk/push/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/pushsdk/push/a/l;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/a/l;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/alipay/pushsdk/push/a/l;->b:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/pushsdk/push/a/l;->c:I

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/l;->d:Landroid/content/Context;

    new-instance v0, Lcom/alipay/pushsdk/c/b;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/a/l;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/l;->e:Lcom/alipay/pushsdk/c/b;

    new-instance v0, Lcom/alipay/pushsdk/push/o;

    invoke-direct {v0, p1}, Lcom/alipay/pushsdk/push/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/a/l;->f:Lcom/alipay/pushsdk/push/o;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 21

    const/4 v12, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/push/a/l;->e:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONNECT_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    sub-long v4, v15, v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x708

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/pushsdk/push/a/l;->f:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v4}, Lcom/alipay/pushsdk/push/o;->c()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const/16 v2, 0xb

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v2, 0xc

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v13

    mul-int/lit8 v2, v9, 0x3c

    add-int/2addr v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/pushsdk/push/a/l;->f:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/o;->e()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    sub-int/2addr v2, v3

    int-to-long v5, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/a/l;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getDelayTime delay=30; hour="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " min="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget-object v7, v0, Lcom/alipay/pushsdk/push/a/l;->f:Lcom/alipay/pushsdk/push/o;

    invoke-virtual {v7}, Lcom/alipay/pushsdk/push/o;->e()I

    move-result v7

    if-lt v9, v7, :cond_0

    const-wide/16 v7, 0x1e

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v7, 0x403e

    mul-double/2addr v2, v7

    const-wide/high16 v7, 0x404e

    mul-double/2addr v2, v7

    double-to-long v2, v2

    const-wide/16 v7, 0x3e8

    mul-long v10, v2, v7

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v7, 0x3c

    mul-long v4, v5, v7

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    add-long v17, v10, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/push/a/l;->e:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONNECT_TIME"

    move-wide/from16 v0, v17

    invoke-virtual {v2, v3, v0, v1}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;J)V

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/a/l;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getDelayTime rand="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", expectedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {v17 .. v18}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

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

    const-wide/16 v19, 0x2710

    add-long v7, v7, v19

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "ConnectionPolicy_getDelayTime: expectedTime="

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v18}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, ", rand="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v17, ", hour="

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, " min="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    move-wide v2, v10

    :cond_0
    const/4 v4, 0x3

    sget-object v5, Lcom/alipay/pushsdk/push/a/l;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getDelayTime delay=30, rand="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/pushsdk/push/a/l;->e:Lcom/alipay/pushsdk/c/b;

    const-string/jumbo v3, "DELAY_CONNECT_TIME"

    invoke-virtual {v2, v3}, Lcom/alipay/pushsdk/c/b;->a(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v13, v2

    :goto_0
    cmp-long v2, v15, v13

    if-gez v2, :cond_1

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    sget-object v2, Lcom/alipay/pushsdk/c/a/d;->h:Ljava/lang/String;

    sget-object v3, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v6, Lcom/alipay/pushsdk/c/a/d;->C:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v11, 0x2710

    add-long/2addr v7, v11

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ConnectionPolicy_getPolicy: curTime="

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v15 .. v16}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ", delayPollTime="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v13, v14}, Lcom/alipay/pushsdk/c/j;->a(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "s, ret="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v2 .. v9}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    return v10

    :cond_1
    move v10, v12

    goto :goto_1

    :cond_2
    move-wide v13, v2

    goto :goto_0
.end method
