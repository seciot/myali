.class public final Lcom/alipay/mobile/pubsvc/app/msgnotify/a;
.super Landroid/os/Handler;
.source "PubAppDispatchMsgHandler.java"


# instance fields
.field private final a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 9
    .parameter

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/alipay/mobile/pubsvc/app/msgnotify/b;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/alipay/mobile/pubsvc/app/msgnotify/b;-><init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;B)V

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 40
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    .line 46
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_1
    if-ltz v2, :cond_0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    iget-object v4, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;

    invoke-direct {v6, p0, v1, v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;-><init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;)V

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event=[PubAppMsgNotifyHandler#dispatchPubAppMsg] start wait "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/alipay/mobile/pubsvc/app/msgnotify/common/a;->a:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ms"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    sget v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/common/a;->a:I

    int-to-long v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 48
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0
.end method
