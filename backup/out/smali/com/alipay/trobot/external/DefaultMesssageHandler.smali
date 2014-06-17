.class public Lcom/alipay/trobot/external/DefaultMesssageHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/test/ui/core/IMesssageHandle;


# static fields
.field private static mTestProxy:Lcom/alipay/trobot/external/DefaultMesssageHandler;


# instance fields
.field private TAG:Ljava/lang/String;

.field public handler:Lcom/alipay/test/ui/core/IMesssageHandle;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "trobotexternalinterface"

    iput-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/alipay/trobot/external/DefaultMesssageHandler;
    .locals 1

    sget-object v0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->mTestProxy:Lcom/alipay/trobot/external/DefaultMesssageHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/trobot/external/DefaultMesssageHandler;

    invoke-direct {v0}, Lcom/alipay/trobot/external/DefaultMesssageHandler;-><init>()V

    sput-object v0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->mTestProxy:Lcom/alipay/trobot/external/DefaultMesssageHandler;

    :cond_0
    sget-object v0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->mTestProxy:Lcom/alipay/trobot/external/DefaultMesssageHandler;

    return-object v0
.end method


# virtual methods
.method public getHandler()Lcom/alipay/test/ui/core/IMesssageHandle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->handler:Lcom/alipay/test/ui/core/IMesssageHandle;

    return-object v0
.end method

.method public varargs onChangeEvent(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->handler:Lcom/alipay/test/ui/core/IMesssageHandle;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/trobot/external/DefaultMesssageHandler$1;-><init>(Lcom/alipay/trobot/external/DefaultMesssageHandler;Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public registeMesssageHandler(Lcom/alipay/test/ui/core/IMesssageHandle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->handler:Lcom/alipay/test/ui/core/IMesssageHandle;

    iget-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registeMesssageHandler "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unRegisteMesssageHandler()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->handler:Lcom/alipay/test/ui/core/IMesssageHandle;

    iget-object v0, p0, Lcom/alipay/trobot/external/DefaultMesssageHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisteMesssageHandler "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
