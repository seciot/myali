.class final Lcom/alipay/mobile/pubsvc/app/msgnotify/d;
.super Ljava/lang/Object;
.source "PubAppLongConnMsgReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/d;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 119
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/d;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;

    invoke-static {}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a()Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/a;->a(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    invoke-static {v1, v0}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;->a(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppLongConnMsgReceiver;Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;)Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    .line 121
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 122
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0
.end method
