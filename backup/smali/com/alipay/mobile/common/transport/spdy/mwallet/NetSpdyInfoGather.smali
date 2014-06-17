.class public Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->b:Ljava/lang/String;

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->d:I

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->e:Z

    return-void
.end method

.method public static getSpdyErrorByNetkey(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;
    .locals 4

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-class v1, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "netKey="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",create NetSpdyInfoGather"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->a:Ljava/util/Map;

    new-instance v3, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addBizErrorTimes()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBizErrorTimes()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->d:I

    return v0
.end method

.method public getErrorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getNetKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->b:Ljava/lang/String;

    return-object v0
.end method

.method public isConnetionError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->e:Z

    return v0
.end method

.method public isSpdyClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->c:Z

    return v0
.end method

.method public isWriteGlobal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->g:Z

    return v0
.end method

.method public declared-synchronized setBizErrorTimes(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnetionError(ZLjava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->e:Z

    iput-object p2, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setErrorId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->f:Ljava/lang/String;

    return-void
.end method

.method public setNetKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->b:Ljava/lang/String;

    return-void
.end method

.method public setSpdyClose(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->c:Z

    return-void
.end method

.method public setWriteGlobal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->g:Z

    return-void
.end method

.method public declared-synchronized writeGlobalError(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->g:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "Ydps_Route"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->b:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/spdy/mwallet/NetSpdyInfoGather;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
