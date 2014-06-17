.class public final Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;
.super Ljava/lang/Object;
.source "PubAppMsgNotifyService.java"


# static fields
.field private static a:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method private static final declared-synchronized a()V
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;-><init>()V

    sput-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final instance()Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->a()V

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyService;

    return-object v0
.end method


# virtual methods
.method public final getMsgQueueBySubscribe(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;
    .locals 2
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
    .line 87
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    .line 89
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    .line 91
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 92
    new-instance v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-direct {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;-><init>()V

    goto :goto_0
.end method

.method public final removeSubscriber(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgNotifyService#removeSubscriber] subscriberEnum=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    .line 112
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->b(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0
.end method

.method public final setSubscribMsg(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgNotifyService#setSubscribMsg] subscriber=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    .line 70
    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    const/4 v0, 0x1

    .line 74
    :goto_0
    return v0

    .line 73
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final tryDelegateMessage(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_3

    .line 134
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgNotifyService#tryDelegateMessage] Exception. subscriberEnum=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] pubAppMessage=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    move v0, v1

    .line 170
    :goto_1
    return v0

    .line 135
    :cond_2
    const-string/jumbo v0, "pubAppMessage is null"

    goto :goto_0

    .line 148
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    .line 150
    invoke-virtual {v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->b()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 151
    goto :goto_1

    .line 154
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    .line 155
    new-instance v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;

    invoke-direct {v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;-><init>()V

    .line 156
    iput-object p1, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->a:Ljava/lang/String;

    .line 157
    iput-object p2, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    .line 158
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 160
    goto :goto_1

    .line 162
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgNotifyService#tryDelegateMessage] Exception. subscriberEnum=["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "] pubAppMessage=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_5
    move v0, v1

    .line 170
    goto :goto_1
.end method
