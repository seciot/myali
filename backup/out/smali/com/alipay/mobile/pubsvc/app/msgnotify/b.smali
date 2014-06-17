.class final Lcom/alipay/mobile/pubsvc/app/msgnotify/b;
.super Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;
.source "PubAppDispatchMsgHandler.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alipay/mobile/pubsvc/app/msgnotify/b;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/a;

    invoke-direct {p0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/alipay/mobile/pubsvc/app/msgnotify/b;-><init>(Lcom/alipay/mobile/pubsvc/app/msgnotify/a;)V

    return-void
.end method


# virtual methods
.method public final rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;->rejectedExecution(Ljava/lang/Runnable;Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 201
    invoke-static {}, Lcom/alipay/mobile/common/logging/LogCatLog;->isSwitch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    const-string/jumbo v1, ""

    .line 204
    const/4 v0, 0x0

    .line 205
    instance-of v2, p1, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;

    if-eqz v2, :cond_0

    .line 206
    check-cast p1, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;

    .line 207
    iget-object v0, p1, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->a:Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;

    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/b;->a:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    iget-object v2, p1, Lcom/alipay/mobile/pubsvc/app/msgnotify/c;->b:Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;

    invoke-virtual {v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/pubsvc/app/msgnotify/mng/PubAppMessageQueue;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/app/msgnotify/domain/PubAppMessage;

    .line 211
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "event=[PubAppDispMsgPolicy#rejectedExecution] Execute PubAppDispMsgPolicy. subscriber=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] current last msg=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    :cond_1
    return-void
.end method
