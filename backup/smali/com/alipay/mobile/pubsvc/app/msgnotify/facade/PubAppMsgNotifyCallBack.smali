.class public interface abstract Lcom/alipay/mobile/pubsvc/app/msgnotify/facade/PubAppMsgNotifyCallBack;
.super Ljava/lang/Object;
.source "PubAppMsgNotifyCallBack.java"


# virtual methods
.method public abstract isMessageOwner(Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;)Z
.end method

.method public abstract notifyMessage(Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue",
            "<",
            "Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;",
            ">;)I"
        }
    .end annotation
.end method
