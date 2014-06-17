.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;
.super Landroid/os/Handler;
.source "PubAppMsgNotifyHandler.java"


# instance fields
.field private a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/e;-><init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 40
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;
    .locals 2
    .parameter

    .prologue
    .line 268
    :try_start_0
    const-class v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :goto_0
    return-object v0

    .line 270
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppMsgNotifyHandler#deserialize]  Deserialize \'PubAppMessage\' json exception message=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;Lcom/alipay/mobile/pubsvc/app/msgnotify/a;)Lcom/alipay/mobile/pubsvc/app/msgnotify/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter

    .prologue
    .line 47
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    move-result-object v14

    if-nez v14, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    const-string/jumbo v9, "receiveLonglink"

    iget-object v15, v14, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->publicId:Ljava/lang/String;

    iget-object v0, v14, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->message:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->NONE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const-string/jumbo v5, "public"

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    const-string/jumbo v8, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, "s"

    const-string/jumbo v12, "c"

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v15, v13, v17

    const/4 v15, 0x1

    aput-object v16, v13, v15

    const/4 v15, 0x2

    const-string/jumbo v16, ""

    aput-object v16, v13, v15

    const/4 v15, 0x3

    const-string/jumbo v16, ""

    aput-object v16, v13, v15

    const/4 v15, 0x4

    const-string/jumbo v16, ""

    aput-object v16, v13, v15

    invoke-static/range {v1 .. v13}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "MESSAGE"

    iget-object v2, v14, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->eventType:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgNotifyHandler#enqueueMessage] begin enqueueMessage. message=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_2
    if-ltz v3, :cond_6

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "event=[PubAppMsgNotifyHandler#enqueueMessage] allSubscribers.get("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ") is null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v14}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a(Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->isGreatThanMaxMsgCount()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[PubAppMsgNotifyHandler#enqueueMessage] "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " of the message count have been over 100. Discard message["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v14}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    :goto_3
    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_7
    iget-object v2, v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v14}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z

    goto :goto_3

    .line 52
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;

    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;

    iget-object v3, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/c;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v2, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a(Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v2

    const-class v4, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;

    iget-object v4, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;)Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->isGreatThanMaxMsgCount()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "event=[PubAppMsgNotifyHandler#handleMessageForDelegateType] "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of the message count have been over 100. Discard message["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    iget-object v4, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/a;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    invoke-virtual {v2, v4, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/b;->a(Ljava/lang/String;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppMsgNotifyHandler#handleMessageForDelegateType] Delegate message success. subscriber=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v3, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
