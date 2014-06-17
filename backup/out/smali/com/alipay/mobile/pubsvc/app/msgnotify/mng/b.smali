.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;
.super Ljava/lang/Object;
.source "PubAppMsgQueueManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    .line 56
    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;-><init>()V

    .line 60
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    .line 31
    if-nez v0, :cond_1

    .line 33
    monitor-enter p1

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;-><init>()V

    .line 37
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->setSubscriberEnum(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 73
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->clear()V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgSubscriberManager#removeMsgQueue] PubAppMessageQueue cleared. subscriberEnum=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgSubscriberManager#removeMsgQueue] PubAppMessageQueue removed. subscriberEnum=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    .line 86
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 90
    const/4 v0, 0x0

    goto :goto_0
.end method
