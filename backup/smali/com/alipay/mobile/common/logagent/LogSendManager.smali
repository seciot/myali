.class public Lcom/alipay/mobile/common/logagent/LogSendManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 4

    const-string/jumbo v0, "/logs/userlog.log"

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->readFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/common/transport/http/legacy/HttpClient;

    invoke-static {p0}, Lcom/alipay/mobile/common/logagent/LogUtil;->getStatisticsUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/alipay/mobile/common/transport/http/legacy/HttpClient;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/http/legacy/HttpClient;->sendGZipSynchronousRequest(Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/Constants;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "logsend response ==> "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string/jumbo v2, "logSwitch="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    add-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    :goto_0
    const-string/jumbo v0, "/logs/userlog.log"

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/logagent/LogBaseHelper;->fileClean(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_ACCOUNT:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/alipay/mobile/common/logagent/Constants;->LAST_SEND_TIME:J

    :cond_0
    monitor-exit v1

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static checkAndSend(Landroid/content/Context;)V
    .locals 6

    sget-object v1, Lcom/alipay/mobile/common/logagent/Constants;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_ACCOUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_ACCOUNT:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/alipay/mobile/common/logagent/Constants;->LAST_SEND_TIME:J

    sub-long/2addr v2, v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "logSwitch:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " log count:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v4, Lcom/alipay/mobile/common/logagent/Constants;->LOG_ACCOUNT:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " send log duration:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-boolean v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_SWITCH:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alipay/mobile/common/logagent/Constants;->LOG_ACCOUNT:I

    const/16 v4, 0x32

    if-lt v0, v4, :cond_0

    const-wide/32 v4, 0xea60

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    invoke-static {p0}, Lcom/alipay/mobile/common/logagent/LogSendManager;->a(Landroid/content/Context;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static uploadLog(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logagent/LogSendManager$UploadLogThread;->start()V

    return-void
.end method
