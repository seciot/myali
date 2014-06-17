.class final Lcom/alipay/mobile/command/engine/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

.field final synthetic b:J

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:[Ljava/lang/Object;

.field final synthetic f:Lcom/alipay/mobile/command/engine/TaskExeService;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/TaskExeService;Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/e;->f:Lcom/alipay/mobile/command/engine/TaskExeService;

    iput-object p2, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    iput-wide p3, p0, Lcom/alipay/mobile/command/engine/e;->b:J

    iput-object p5, p0, Lcom/alipay/mobile/command/engine/e;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/mobile/command/engine/e;->d:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/mobile/command/engine/e;->e:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/command/engine/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/command/engine/f;-><init>(Lcom/alipay/mobile/command/engine/e;)V

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    iget-wide v1, p0, Lcom/alipay/mobile/command/engine/e;->b:J

    iget-object v3, p0, Lcom/alipay/mobile/command/engine/e;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/command/engine/e;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/command/engine/e;->e:[Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/command/engine/TaskTriggerService;->a(Lcom/alipay/mobile/command/model/TriggerTypeEnum;JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string/jumbo v1, "do "

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v1, v0, v7

    const-string/jumbo v1, "trigger  finish!"

    aput-object v1, v0, v8

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "do "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "trigger  Error!"

    aput-object v2, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array v0, v9, [Ljava/lang/Object;

    const-string/jumbo v1, "do "

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v1, v0, v7

    const-string/jumbo v1, "trigger  finish!"

    aput-object v1, v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "do "

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/e;->a:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v1, v7

    const-string/jumbo v2, "trigger  finish!"

    aput-object v2, v1, v8

    throw v0
.end method
