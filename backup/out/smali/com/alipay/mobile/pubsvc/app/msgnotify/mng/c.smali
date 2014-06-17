.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;
.super Ljava/lang/Object;
.source "PubAppMsgSubscriberManager.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMsgSubscriberManager$RemoveSubscriberListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b:Ljava/util/List;

    .line 227
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-object v0, v1

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    .line 128
    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgSubscriberManager#getSubscriber] "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " non-existent !"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    move-object v0, v1

    .line 132
    goto :goto_0
.end method

.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    :goto_0
    return-object v0

    .line 104
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgSubscriberManager#getAllSubscribers] Subscribers count : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 46
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a()V

    .line 48
    :cond_2
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;-><init>()V

    .line 50
    iput-object p2, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;

    .line 51
    iput-object p1, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgSubscriberManager#setSubscribMsg] subscribe success. subscriber=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    :cond_3
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 62
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSubscribMsg exception. subscriberEnum=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    move v0, v1

    .line 69
    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 147
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    .line 152
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->b(Ljava/lang/String;)Z

    move-result v0

    .line 155
    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgSubscriberManager#removeSubscriber] Subscriber removed. subscriberEnum=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b()V

    .line 165
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    .line 165
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 168
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 169
    const/4 v0, 0x0

    goto :goto_0
.end method
