.class final Lcom/alipay/mobile/pubsvc/app/msgnotify/c;
.super Ljava/lang/Object;
.source "PubAppDispatchMsgHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

.field public b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->c:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p2, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    .line 154
    iput-object p3, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    .line 155
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "event=[PubAppDispMsgRunnable#run] Begin notifyMessage . subscriber=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    iget-object v1, v1, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]  mMessageQueue length = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-virtual {v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    iget-object v1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    iget-object v0, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;->notifyMessage(Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;)I

    move-result v0

    .line 170
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "event=[PubAppDispMsgRunnable#run] NotifyMessage end . subscriber=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    iget-object v2, v2, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]  mMessageQueue length = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-virtual {v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] notifyResult=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    goto :goto_0
.end method
