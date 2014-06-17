.class public Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a:Landroid/content/Context;

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->b:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->b:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->b:Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 10

    const/4 v2, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->c:Ljava/util/List;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a()Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->getWidgetMsgDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move v4, v3

    :goto_1
    array-length v1, v7

    if-ge v4, v1, :cond_5

    aget-object v1, v7, v4

    new-instance v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;

    invoke-direct {v8}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;-><init>()V

    iput-object v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->widgetMsgId:Ljava/lang/String;

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ne v4, v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getPersistenceCount()I

    move-result v1

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getTemporaryCount()I

    move-result v1

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    const/4 v1, 0x0

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getPersistenceCount()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    :goto_3
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getStyle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    const/4 v1, 0x0

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getPersistenceCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getTemporaryCount()I

    move-result v9

    add-int/2addr v1, v9

    iput v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getPersistenceCount()I

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    iput-boolean v1, v8, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->c:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public dropWidgetMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v0, "WidgetMsgDao"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dropTemporaryMsg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a()Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->getWidgetMsgDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "userId"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getWidgetId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    if-lez v4, :cond_1

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WidgetMsgDao"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "do dropTemporaryMsg:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getWidgetId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setTemporaryCount(I)V

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setPersistenceCount(I)V

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized getWidgetMsgCountInfoById(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->c:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    :try_start_2
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;

    iget-object v4, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->widgetMsgId:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_3

    new-instance v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;-><init>()V

    iput-object p2, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->widgetMsgId:Ljava/lang/String;

    :cond_3
    iget v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    iget v5, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->persistenceCount:I

    iget v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    iget v5, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->temporaryMsgCount:I

    iget v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    iget v5, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    add-int/2addr v4, v5

    iput v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->descendantCount:I

    iget-boolean v4, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    if-eqz v4, :cond_4

    iget-boolean v4, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    iput-boolean v4, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->needAck:Z

    :cond_4
    iget-object v4, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    const-string/jumbo v5, "num"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    iput-object v0, v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->msgStyle:Ljava/lang/String;

    :cond_5
    move-object v0, v1

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/sql/SQLException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_4
    const-string/jumbo v2, "WidgetMsgDao"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getWidgetMsgCountInfoById,id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",info="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao$WidgetMsgCountInfo;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "null"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public mergeWidgetMsg(Ljava/lang/String;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a()Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDBHelper;->getWidgetMsgDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v2

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v3

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-virtual {v0, v8}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setPersistenceCount(I)V

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v6, "widgetId"

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getWidgetId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v6, "userId"

    invoke-virtual {v1, v6, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    new-instance v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-direct {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;-><init>()V

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setUserId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getWidgetId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setWidgetId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getPersistence()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setPersistenceCount(I)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getTemporary()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setTemporaryCount(I)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setStyle(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    const-string/jumbo v0, "WidgetMsgDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "add WidgetMsg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getPersistence()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setPersistenceCount(I)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getTemporary()I

    move-result v6

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getTemporaryCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setTemporaryCount(I)V

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->setStyle(Ljava/lang/String;)V

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    const-string/jumbo v0, "WidgetMsgDao"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "update WidgetMsg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgTable;->getWidgetId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v6, "widgetId"

    invoke-virtual {v0}, Lcom/alipay/mobileapp/biz/rpc/widgetmsg/model/WidgetMsg;->getWidgetId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    const-string/jumbo v0, "WidgetMsgDao"

    const-string/jumbo v1, "delete WidgetMsg"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/widgetmsg/dao/WidgetMsgDao;->a(Ljava/lang/String;)V

    return-void
.end method
