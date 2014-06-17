.class Lcom/alipay/mobile/common/task/OperationTask$2;
.super Ljava/util/concurrent/FutureTask;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/task/OperationTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/task/OperationTask;Ljava/util/concurrent/Callable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/OperationTask$2;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/task/OperationTask$2;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/task/OperationTask;->access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->a:I
    invoke-static {v1}, Lcom/alipay/mobile/common/task/OperationTask;->access$000(Lcom/alipay/mobile/common/task/OperationTask;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/task/TaskCallback;->onCancelled(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/task/OperationTask;->access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->a:I
    invoke-static {v2}, Lcom/alipay/mobile/common/task/OperationTask;->access$000(Lcom/alipay/mobile/common/task/OperationTask;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/task/TaskCallback;->onPostExecute(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;
    invoke-static {v1}, Lcom/alipay/mobile/common/task/OperationTask;->access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->a:I
    invoke-static {v2}, Lcom/alipay/mobile/common/task/OperationTask;->access$000(Lcom/alipay/mobile/common/task/OperationTask;)I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/task/TaskCallback;->onFailed(ILjava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing operation task"

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/task/OperationTask;->access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask$2;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->a:I
    invoke-static {v1}, Lcom/alipay/mobile/common/task/OperationTask;->access$000(Lcom/alipay/mobile/common/task/OperationTask;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/task/TaskCallback;->onCancelled(I)V

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "An error occured while executing operation task"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
