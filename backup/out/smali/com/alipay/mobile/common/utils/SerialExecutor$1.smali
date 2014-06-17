.class Lcom/alipay/mobile/common/utils/SerialExecutor$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

.field final synthetic val$command:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/utils/SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$1;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    iput-object p2, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$1;->val$command:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$1;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/utils/SerialExecutor;->scheduleNext()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$1;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;->scheduleNext()V

    throw v0
.end method
