.class final Lcom/alipay/mobile/command/manager/e;
.super Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x111

    if-ne v0, v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a()Lcom/alipay/mobile/command/engine/ScripterExecutor;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/mobile/command/model/TaskMetaWrap;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/command/engine/ScripterExecutor;->a(Lcom/alipay/mobile/command/model/TaskMetaWrap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "script ext Error."

    aput-object v2, v0, v1

    goto :goto_0
.end method
