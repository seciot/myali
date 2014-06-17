.class Lcom/alipay/mobile/common/task/OperationTask$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/task/OperationTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/task/OperationTask;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/task/OperationTask$1;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask$1;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->c:Lcom/alipay/mobile/common/task/TaskCallback;
    invoke-static {v0}, Lcom/alipay/mobile/common/task/OperationTask;->access$100(Lcom/alipay/mobile/common/task/OperationTask;)Lcom/alipay/mobile/common/task/TaskCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/task/OperationTask$1;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    #getter for: Lcom/alipay/mobile/common/task/OperationTask;->a:I
    invoke-static {v1}, Lcom/alipay/mobile/common/task/OperationTask;->access$000(Lcom/alipay/mobile/common/task/OperationTask;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/task/TaskCallback;->onPreExecute(I)V

    iget-object v0, p0, Lcom/alipay/mobile/common/task/OperationTask$1;->this$0:Lcom/alipay/mobile/common/task/OperationTask;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/task/OperationTask;->operation()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
