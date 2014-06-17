.class public Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PubAppLongConnMsgReceiver.java"


# instance fields
.field private a:Z

.field private b:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a:Z

    .line 34
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/d;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/d;-><init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;)Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    const-string/jumbo v1, "com.alipay.longlink.TRANSFER_20000042"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p0, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a:Z

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 98
    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 41
    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppLongConnMsgReceiver#onReceive] notify message enqueue. message=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 63
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0
.end method
