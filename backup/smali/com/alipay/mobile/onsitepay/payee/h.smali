.class final Lcom/alipay/mobile/onsitepay/payee/h;
.super Ljava/lang/Object;
.source "FacePayeeActivity.java"

# interfaces
.implements Lcom/alipay/sonicwavenfc/SonicWaveNFCHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/alipay/mobile/onsitepay/payee/h;-><init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/String;)V
    .locals 17
    .parameter

    .prologue
    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u6536\u5230\u58f0\u6ce2,sonicId1:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->a(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;I)V

    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 670
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Ljava/util/Map;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sonicId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 672
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "currentTimeMillis:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mLastTime:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 674
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v14, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 677
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "kf"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "C2C"

    const-string/jumbo v11, ""

    const-string/jumbo v12, "-"

    const/4 v10, 0x5

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v16, "kf"

    aput-object v16, v13, v10

    const/4 v10, 0x1

    const-string/jumbo v16, "receivewave"

    aput-object v16, v13, v10

    const/4 v10, 0x2

    const-string/jumbo v16, ""

    aput-object v16, v13, v10

    const/4 v10, 0x3

    const-string/jumbo v16, "y"

    aput-object v16, v13, v10

    const/4 v10, 0x4

    const-string/jumbo v16, "alipayclient"

    aput-object v16, v13, v10

    move-object/from16 v10, p1

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 681
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->e(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->f(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->b(Ljava/lang/String;)V

    .line 687
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->g(Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;)V

    .line 688
    return-void
.end method

.method public final onReceiveDataFailed(I)V
    .locals 0
    .parameter

    .prologue
    .line 691
    return-void
.end method

.method public final onReceiveDataInfo(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 695
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->k:Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payee/DrawInduceView;->getonDrawComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/h;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity;->r:I

    .line 701
    :cond_0
    return-void
.end method

.method public final onReceiveDataStarted()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public final onReceiveDataTimeout()V
    .locals 0

    .prologue
    .line 703
    return-void
.end method

.method public final onSendDataFailed(I)V
    .locals 0
    .parameter

    .prologue
    .line 704
    return-void
.end method

.method public final onSendDataInfo(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 705
    return-void
.end method

.method public final onSendDataStarted()V
    .locals 0

    .prologue
    .line 706
    return-void
.end method

.method public final onSendDataTimeout()V
    .locals 0

    .prologue
    .line 707
    return-void
.end method
