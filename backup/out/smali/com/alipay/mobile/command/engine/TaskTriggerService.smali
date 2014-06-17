.class public Lcom/alipay/mobile/command/engine/TaskTriggerService;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    return-void
.end method

.method private static a()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/manager/CommandManager;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->COMMAND:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/CommandMetaCollect;

    invoke-static {v0, v1, v1}, Lcom/alipay/mobile/command/manager/CommandManager;->a(Lcom/alipay/mobile/command/model/CommandMetaCollect;Ljava/util/List;Ljava/util/List;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->isHasTask()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->c()V

    :cond_1
    return-void
.end method

.method public static varargs declared-synchronized a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    const-class v3, Lcom/alipay/mobile/command/engine/TaskTriggerService;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->CONNECTIVITY_CHANGE:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    if-eq v0, p0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchConnectedNetType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/command/engine/h;->a:[I

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u5f53\u524d\u4efb\u52a1\u7c7b\u578b\u7cfb\u7edf\u4e2d\u6ca1\u6709\u914d\u7f6e\u5bf9\u5e94\u7684\u5904\u7406\u5668!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :pswitch_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "trigger_syn_timer"

    const-wide/32 v4, 0x493e00

    invoke-static {v0, v1, v4, v5}, Lcom/alipay/mobile/command/util/CommandUtil;->isNeedDoDurTimeTask(Landroid/content/SharedPreferences;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "trigger:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",syn System resource(command\task)!"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    :goto_1
    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "trigger:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ",no tasks to be done"

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    goto :goto_1

    :cond_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchCurrnetMiniTimeInIntervalModel()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getIntevalTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_6

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getIntevalTime()J

    move-result-wide v7

    rem-long v7, v4, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_6

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "startTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",spendTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ",i each:"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9, p4}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getMinuteTiming()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3c

    div-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getMinuteTiming()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-ltz v9, :cond_5

    const-wide/16 v9, 0xa

    cmp-long v7, v7, v9

    if-gtz v7, :cond_5

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "startTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, ",spendTime:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, ", p each:"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v0, v7, v8, v9, p4}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->c()V

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "start task(Recovery)"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->c()V

    sget-object v0, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->LOGIN:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-static {v0, p4}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {p0, p4}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_3
    const-string/jumbo v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    if-lez v0, :cond_1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_1

    aget-object v4, v1, v0

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v4, v7, v8}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_4
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "exe Triger_biz error."

    aput-object v2, v0, v1

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    move v2, v0

    :goto_4
    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "\u672a\u627e\u5230\u4efb\u52a1\u5217\u8868"

    aput-object v2, v0, v1

    goto/16 :goto_0

    :cond_8
    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getNotifyEventFlag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "notify trigger,flag:"

    aput-object v6, v1, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getNotifyEventFlag()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v1, v5, v6, p4}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    const/4 v0, 0x1

    :goto_6
    move v1, v0

    goto :goto_5

    :cond_9
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->b()V

    const/4 v0, 0x0

    move v2, v0

    goto :goto_4

    :pswitch_6
    invoke-static {}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_a

    new-instance v4, Lcom/alipay/mobile/command/api/model/MapConstructor;

    invoke-direct {v4}, Lcom/alipay/mobile/command/api/model/MapConstructor;-><init>()V

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-class v6, Lcom/alipay/mobile/command/trigger/PublicApiInvoke;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/alipay/mobile/command/util/JsonUtil;->fill(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/ClassLoader;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a(Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mobile/command/model/TaskMetaWrap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, p4}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/alipay/mobile/command/manager/TaskManager;->currentTaskMaps()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "\u672a\u627e\u5230\u4efb\u52a1\u5217\u8868"

    aput-object v1, v0, v4

    :cond_1
    return-void

    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getCronExpress()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alipay/mobile/command/model/TriggerTypeEnum;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/TaskMetaWrap;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4, v4, v4, p1}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V

    goto :goto_0
.end method

.method private static b()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "start syn Command!"

    aput-object v1, v0, v2

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->b()V

    new-array v0, v3, [Ljava/lang/Object;

    const-string/jumbo v1, "start syn Task!"

    aput-object v1, v0, v2

    invoke-static {}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->a()Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/invoke/CmdCenterFacadeInvoke;->c()V

    return-void
.end method

.method private static declared-synchronized c()V
    .locals 7

    const-class v1, Lcom/alipay/mobile/command/engine/TaskTriggerService;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "start recovery Task!"

    aput-object v3, v0, v2

    sget-object v0, Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;->RUNTIME_TASK:Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;

    invoke-static {v0}, Lcom/alipay/mobile/command/util/CommandUtil;->readMeta(Lcom/alipay/mobile/command/util/CommandUtil$MetaTypeEnum;)Lcom/alipay/mobile/command/model/SeriMetaResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/command/model/SeriMetaResult;->getMeta()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "recovery Task-"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "!"

    aput-object v5, v3, v4

    sget-object v3, Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;->I:Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/command/manager/TaskManager;->updataRuntimeTask(Ljava/lang/String;Lcom/alipay/mobile/command/model/RuntimeTaskStatusEnum;Z)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v0, v3, v4, v5, v6}, Lcom/alipay/mobile/command/manager/TaskManager;->startTask(Ljava/lang/String;IZZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Recovery Task Op finish"

    aput-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method

.method private static d()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/util/CommandUtil;->fetchConnectedNetType()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "-1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    :try_start_1
    sput-object v3, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    :goto_2
    return v0

    :cond_0
    const/4 v0, 0x1

    :try_start_2
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "\u7f51\u7edc\u53d8\u5316\u7684\u4fa6\u542c\u5668\u5ffd\u7565\u672c\u6b21\u7684\u4efb\u52a1\u6062\u590d,\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528."

    aput-object v5, v0, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    :goto_3
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "do NetChange triger  Error!"

    aput-object v5, v3, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    goto :goto_2

    :catchall_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "do NetChange Triger  finish!"

    aput-object v3, v2, v1

    throw v0

    :catch_1
    move-exception v3

    goto :goto_3

    :cond_1
    move v0, v1

    goto :goto_1
.end method
