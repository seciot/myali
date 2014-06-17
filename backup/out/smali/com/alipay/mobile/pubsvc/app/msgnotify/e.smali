.class final Lcom/alipay/mobile/pubsvc/app/msgnotify/e;
.super Ljava/lang/Object;
.source "PubAppMsgNotifyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/e;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/e;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;

    new-instance v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/a;-><init>(Landroid/os/Looper;)V

    #setter for: Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;
    invoke-static {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;->access$002(Lcom/alipay/mobile/pubsvc/app/msgnotify/PubAppMsgNotifyHandler;Lcom/alipay/mobile/pubsvc/app/msgnotify/a;)Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    .line 289
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 290
    return-void
.end method
