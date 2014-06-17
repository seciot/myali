.class public Lcom/alipay/mobile/common/logagent/AlipayLogAgent;
.super Ljava/lang/Object;


# static fields
.field public static ACTION_STATUS_ALIPAY_START:Ljava/lang/String;

.field public static ACTION_STATUS_RENDER:Ljava/lang/String;

.field public static ACTION_STATUS_RPC_REQUEST:Ljava/lang/String;

.field public static ACTION_STATUS_RPC_RESPONSE:Ljava/lang/String;

.field public static ACTION_STATUS_START:Ljava/lang/String;

.field public static actionCtx:Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

.field public static actionSwitch:Z

.field public static ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "alipay_start"

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_ALIPAY_START:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionCtx:Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    const-string/jumbo v0, "rpc_request"

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_RPC_REQUEST:Ljava/lang/String;

    const-string/jumbo v0, "rpc_response"

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_RPC_RESPONSE:Ljava/lang/String;

    const-string/jumbo v0, "action_start"

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_START:Ljava/lang/String;

    const-string/jumbo v0, "render_predraw"

    sput-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ACTION_STATUS_RENDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initClient(Landroid/content/Context;)V
    .locals 5

    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-static {p0}, Lcom/alipay/mobile/common/info/AppInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/AppInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getProductID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/AppInfo;->getmProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static {v2, v1, v0, v3, v4}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->initClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static initClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->registClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    const/4 v5, 0x4

    const/4 v1, 0x0

    new-array v6, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static onError(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    const/4 v6, 0x4

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static unInitClient()V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->unRegistClient()V

    return-void
.end method

.method public static uploadLog(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->uploadLog(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;)V
    .locals 14

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourIdEnum:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    iget-object v3, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourStatus:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->statusMessage:Ljava/lang/String;

    iget-object v5, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appID:Ljava/lang/String;

    iget-object v6, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->appVersion:Ljava/lang/String;

    iget-object v7, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->viewID:Ljava/lang/String;

    iget-object v8, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->refViewID:Ljava/lang/String;

    iget-object v9, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->seed:Ljava/lang/String;

    iget-object v10, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->url:Ljava/lang/String;

    iget-object v11, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->behaviourPro:Ljava/lang/String;

    iget-object v12, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->logPro:Ljava/lang/String;

    iget-object v13, p1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$AlipayLogInfo;->extendParams:[Ljava/lang/String;

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x5

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x5

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x1

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x3

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    const/4 v1, 0x4

    const-string/jumbo v2, ""

    aput-object v2, v13, v1

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static varargs writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 14

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    invoke-static {p1}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->convert(Ljava/lang/String;)Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    move-result-object v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v1, 0x5

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, ""

    aput-object v3, v13, v1

    const/4 v1, 0x1

    const-string/jumbo v3, ""

    aput-object v3, v13, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v13, v1

    const/4 v1, 0x3

    const-string/jumbo v3, ""

    aput-object v3, v13, v1

    const/4 v1, 0x4

    const-string/jumbo v3, ""

    aput-object v3, v13, v1

    move-object v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    if-eqz p0, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SUBMITED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->SUBMITED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->BIZLAUNCHED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->BIZLAUNCHED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->ERROR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->EXCEPTION:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->getDes()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->MONITOR:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    goto :goto_1

    :cond_7
    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static writeLog(Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;Ljava/lang/String;)V
    .locals 14

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->actionId:Ljava/lang/String;

    aput-object v2, v13, v1

    const/4 v1, 0x1

    aput-object v0, v13, v1

    const/4 v0, 0x2

    aput-object p1, v13, v0

    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    sget-object v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->behavID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "SDKMonitor"

    const-string/jumbo v10, "-"

    const-string/jumbo v11, "-"

    const-string/jumbo v12, "-"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static writeLog(Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 14

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->actionSwitch:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getInstance()Lcom/alipay/mobile/common/logagent/StorageStateInfo;

    move-result-object v0

    const-string/jumbo v1, "clientID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logagent/StorageStateInfo;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v13, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->actionId:Ljava/lang/String;

    aput-object v2, v13, v1

    const/4 v1, 0x1

    aput-object v0, v13, v1

    const/4 v0, 0x2

    aput-object p1, v13, v0

    new-instance v0, Lcom/alipay/mobile/common/logagent/StorageManager;

    sget-object v1, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/alipay/mobile/common/logagent/AlipayLogAgent$ActionContext;->behavID:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "-"

    const-string/jumbo v4, "-"

    const-string/jumbo v5, "-"

    const-string/jumbo v6, "-"

    const-string/jumbo v7, "-"

    const-string/jumbo v8, "-"

    const-string/jumbo v9, "SDKMonitor"

    const-string/jumbo v10, "-"

    const-string/jumbo v11, "-"

    const-string/jumbo v12, "-"

    invoke-direct/range {v0 .. v13}, Lcom/alipay/mobile/common/logagent/StorageManager;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/StorageManager;->writeLog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
