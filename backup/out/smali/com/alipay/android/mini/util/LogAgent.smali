.class public Lcom/alipay/android/mini/util/LogAgent;
.super Ljava/lang/Object;


# direct methods
.method private static a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V
    .locals 17

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write log:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v1, Lcom/alipay/mobile/common/logagent/StorageManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->convert(Ljava/lang/String;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->g:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->c:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->d:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->e:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->f:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->h:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-direct/range {v1 .. v14}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "write log error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-01"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, "cashier"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-06"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-04"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-02"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, "cashier-init"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-08"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "exit"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-05"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v6, "check"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-03"

    const-string/jumbo v2, "openPage"

    const-string/jumbo v4, "cashier-card-no"

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-09"

    const-string/jumbo v2, "payEnd"

    const-string/jumbo v4, ""

    const-string/jumbo v6, "payEnd"

    const-string/jumbo v7, ""

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-JJ-07"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, ""

    const-string/jumbo v5, "cashier-init"

    const-string/jumbo v6, "details"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-15"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "defaultPayModeView"

    const-string/jumbo v5, "defaultPayModeView"

    const-string/jumbo v6, "selectPayMode"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-13"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "moreHome"

    const-string/jumbo v5, "paySetIndex"

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-21"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "selectAmount "

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static f(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-14"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "defaultPayModeView"

    const-string/jumbo v5, "paySetIndex"

    const-string/jumbo v6, "defaultPay"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static g(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-16"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "paySetIndex"

    const-string/jumbo v5, "defaultPayModeView"

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static h(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-17"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "savePaySetSuccess"

    const-string/jumbo v5, "defaultPayModeView"

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-18"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "paySetIndex"

    const-string/jumbo v6, "smallPay"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-19"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "open"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static k(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-20"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "smallDenseFreeView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "close"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static l(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-22"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "paySetIndex"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/alipay/android/mini/util/LogAgent$LogItem;

    const-string/jumbo v1, "UC-MORE-23"

    const-string/jumbo v2, "clicked"

    const-string/jumbo v4, "isSavePaySetView"

    const-string/jumbo v5, "smallDenseFreeView"

    const-string/jumbo v6, "backIcon"

    const-string/jumbo v7, ""

    move-object v3, p0

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/util/LogAgent$LogItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/mini/util/LogAgent;->a(Lcom/alipay/android/mini/util/LogAgent$LogItem;)V

    return-void
.end method
