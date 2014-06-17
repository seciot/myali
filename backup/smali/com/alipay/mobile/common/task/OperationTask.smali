.class public abstract Lcom/alipay/mobile/common/task/OperationTask;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/FutureTask;

.field private c:Lcom/alipay/mobile/common/task/TaskCallback;

.field private d:Lcom/alipay/mobile/common/task/OperationExcutor;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/task/OperationExcutor;Lcom/alipay/mobile/common/task/TaskCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/common/task/OperationTask;->d:Lcom/alipay/mobile/common/task/OperationExcutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/task/OperationTask;)I
    .locals 1

    iget v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->a:I

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;

    return-object v0
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final execute()V
    .locals 2

    new-instance v0, Lcom/alipay/mobile/common/task/OperationTask$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/task/OperationTask$1;-><init>(Lcom/alipay/mobile/common/task/OperationTask;)V

    new-instance v1, Lcom/alipay/mobile/common/task/OperationTask$2;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/task/OperationTask$2;-><init>(Lcom/alipay/mobile/common/task/OperationTask;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->d:Lcom/alipay/mobile/common/task/OperationExcutor;

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/task/OperationExcutor;->excute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->b:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->isCancelled()Z

    move-result v0

    return v0
.end method

.method protected abstract operation()Ljava/lang/Object;
.end method

.method protected final update(D)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;

    iget v1, p0, Lcom/alipay/mobile/common/task/OperationTask;->a:I

    invoke-interface {v0, v1, p1, p2}, Lcom/alipay/mobile/common/task/TaskCallback;->onProgressUpdate(ID)V

    return-void
.end method
