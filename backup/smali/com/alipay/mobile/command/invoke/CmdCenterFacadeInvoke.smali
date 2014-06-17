.class public final Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;


# instance fields
.field private a:Lcom/alipay/mobile/command/api/CmdCenterFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    invoke-direct {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;-><init>()V

    sput-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/alipay/mobile/command/api/CmdCenterFacade;

    sget-object v1, Lcom/alipay/mobile/command/model/SerializeTypeEnum;->JSON:Lcom/alipay/mobile/command/model/SerializeTypeEnum;

    new-instance v2, Lcom/alipay/mobile/command/invoke/a;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/command/invoke/a;-><init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/command/rpc/proxy/RpcFactory;->buildRpcProxy(Ljava/lang/Class;Lcom/alipay/mobile/command/model/SerializeTypeEnum;Lcom/alipay/mobile/command/rpc/proxy/Config;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/api/CmdCenterFacade;

    iput-object v0, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;)Lcom/alipay/mobile/command/api/CmdCenterFacade;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    return-object v0
.end method

.method public static a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b:Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/command/model/TaskMetaWrap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/command/api/model/MapConstructor;",
            ">;)",
            "Lcom/alipay/mobile/command/model/TaskMetaWrap;"
        }
    .end annotation

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    new-instance v1, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;

    invoke-direct {v1}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->setClientInfo(Ljava/util/List;)V

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/command/api/model/GetRCTaskReq;->setTaskUUID(Ljava/util/List;)V

    iget-object v2, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v2, v1}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->getRCTask(Lcom/alipay/mobile/command/api/model/GetRCTaskReq;)Lcom/alipay/mobile/command/api/model/GetRCTaskRes;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alipay/mobile/command/api/model/GetRCTaskRes;->getTaskMetaList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/command/api/model/GetRCTaskRes;->getTaskMetaList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/TaskMeta;

    new-instance v3, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-direct {v3, v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/alipay/mobile/command/api/model/TaskMeta;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move-object v1, v3

    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    monitor-exit p0

    return-object v2

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "getRcError"

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v4

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object v2, v4

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "service_triger"

    invoke-static {v0}, Lcom/alipay/mobile/command/util/ThreadPools;->applyDefaultThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/command/invoke/c;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/command/invoke/c;-><init>(Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;

    invoke-direct {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setAlipayWalletVersion(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setUuidList(Ljava/util/List;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsName(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsVersion(I)V

    iget-object v1, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->syncCommand(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getCommandList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getCommandList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/CommandMeta;

    new-instance v5, Lcom/alipay/mobile/command/model/CommandMetaWrap;

    invoke-direct {v5, v1}, Lcom/alipay/mobile/command/model/CommandMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/CommandMeta;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncCmdError"

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/CommandMetaCollect;->getCommandWrapMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandMetaRes;->getInValidCommandUUID()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public final declared-synchronized c()V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaCollect;

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;

    invoke-direct {v2}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getInstance()Lcom/alipay/mobile/command/manager/RuntimeInfoManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/command/manager/RuntimeInfoManager;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setAlipayWalletVersion(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setUuidList(Ljava/util/List;)V

    const-string/jumbo v1, "Android"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsName(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;->setOsVersion(I)V

    iget-object v1, p0, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a:Lcom/alipay/mobile/command/api/CmdCenterFacade;

    invoke-interface {v1, v2}, Lcom/alipay/mobile/command/api/CmdCenterFacade;->syncTask(Lcom/alipay/mobile/command/api/model/SyncCommandTaskMetaReq;)Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getTaskList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getTaskList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/command/api/model/TaskMeta;

    new-instance v5, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-direct {v5, v1}, Lcom/alipay/mobile/command/model/TaskMetaWrap;-><init>(Lcom/alipay/mobile/command/api/model/TaskMeta;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "syncTaskError"

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaCollect;->getTaskWrapMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_3
    invoke-virtual {v2}, Lcom/alipay/mobile/command/api/model/SyncTaskMetaRes;->getInValidTaskUUID()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/alipay/mobile/command/manager/TaskManager;->upateTaskMeta(Lcom/alipay/mobile/command/model/TaskMetaCollect;Ljava/util/List;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
