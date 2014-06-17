.class public Lcom/alipay/mobile/command/manager/TaskManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt",
            "<",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation
.end field

.field public static taskExhandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->b:Ljava/util/Map;

    new-instance v0, Lcom/alipay/mobile/command/manager/d;

    invoke-direct {v0}, Lcom/alipay/mobile/command/manager/d;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->c:Ljava/util/Comparator;

    new-instance v0, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    const/16 v1, 0x64

    sget-object v2, Lcom/alipay/mobile/command/manager/TaskManager;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->taskExhandler:Landroid/os/Handler;

    new-instance v0, Lcom/alipay/mobile/command/manager/e;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/command/manager/e;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->taskExhandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearTask()V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public static currentTaskMaps()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    return-object v0
.end method

.method public static fetchTast(Ljava/lang/String;)Lcom/alipay/mobile/command/model/TaskMetaWrap;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    return-object v0
.end method

.method public static isHasTask()Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNeedReportStatus(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static loop()V
    .locals 4

    :goto_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    sget-object v1, Lcom/alipay/mobile/command/manager/TaskManager;->taskExhandler:Landroid/os/Handler;

    const/16 v2, 0x111

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->taskExhandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u83b7\u53d6\u961f\u5217\u4efb\u52a1\u5f02\u5e38."

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    .locals 5

    const-class v1, Lcom/alipay/mobile/command/manager/TaskManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/command/model/TaskMetaWrap;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "task fetch is null,TaskUuid:"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object p0, v0, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ",isRc:"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    if-eqz p3, :cond_1

    sget-object v0, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->F:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->c()V

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    goto :goto_0

    :cond_3
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Task--"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",taskName--"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getTaskName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",\u8fdb\u5165\u961f\u5217"

    aput-object v4, v2, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->clone()Lcom/alipay/mobile/command/model/TaskMetaWrap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->setProperty(I)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->setRuntimeBizContext(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/command/manager/TaskManager;->d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/command/model/TaskMetaCollect;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v1, Lcom/alipay/mobile/command/manager/TaskManager;

    monitor-enter v1

    if-nez p0, :cond_0

    :try_start_0
    new-instance p0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    invoke-direct {p0}, Lcom/alipay/mobile/command/model/TaskMetaCollect;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TaskMetaCollect;->getTaskWrapMap()Ljava/util/Map;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/alipay/mobile/command/manager/TaskManager;->b:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->initialVerifyScript()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u672c\u5730\u6587\u4ef6\u6821\u9a8c\u5931\u8d25."

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ",\u53ef\u80fd\u88ab\u7be1\u6539."

    aput-object v6, v4, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "\u672c\u5730\u6587\u4ef6\u6821\u9a8c\u5931\u8d25."

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, ",\u53ef\u80fd\u88ab\u7be1\u6539."

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getScriptContext()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getMd5()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/alipay/mobile/command/util/CommandUtil;->genObjectMd5sum([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getDepencyCommandList()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "\u66f4\u65b0task:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "\u5176\u4f9d\u8d56\u7684command\u65e0\u6cd5\u6ee1\u8db3.\u5c1d\u8bd5\u8fdb\u884ccommand\u540c\u6b65"

    aput-object v6, v4, v5

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b()V

    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->initialVerifyScript()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/alipay/mobile/command/manager/TaskManager;->b:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "task:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " md5 veify fail!"

    aput-object v6, v4, v5

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "task:"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v0, 0x2

    const-string/jumbo v6, " md5 veify fail!"

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    sput-object v2, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0, p0}, Lcom/alipay/mobile/command/util/CommandUtil;->writerMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method public static updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->RUNTIME_TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v0

    :goto_1
    sget-object v0, Lcom/alipay/mobile/command/manager/f;->a:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_2
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->RUNTIME_TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0, v1}, Lcom/alipay/mobile/command/util/CommandUtil;->writerMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_1
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "task:"

    aput-object v3, v2, v5

    aput-object p0, v2, v6

    const-string/jumbo v3, "\u6267\u884c\u5b8c\u6bd5,\u72b6\u6001\u53d8\u8fc1:"

    aput-object v3, v2, v7

    aput-object v0, v2, v8

    const/4 v3, 0x4

    const-string/jumbo v4, "----->"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p1, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "("

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, ")"

    aput-object v4, v2, v3

    if-eqz v0, :cond_2

    sget-object v2, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    invoke-virtual {v2}, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/alipay/mobile/command/manager/TaskManager;->isNeedReportStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;Z)V

    :goto_3
    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    sget-object v2, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->completeElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-array v0, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "task:"

    aput-object v2, v0, v5

    aput-object p0, v0, v6

    const-string/jumbo v2, "\u672c\u6b21\u4efb\u52a1\u653e\u5f03\u6c47\u62a5"

    aput-object v2, v0, v7

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->d:Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;

    sget-object v2, Lcom/alipay/mobile/command/manager/TaskManager;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/command/util/PriorityBlockingQueueExt;->removeElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_3
    move-object v1, v0

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateReportFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/manager/TaskManager;->b:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
