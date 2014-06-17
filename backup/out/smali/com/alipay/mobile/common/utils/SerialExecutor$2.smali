.class Lcom/alipay/mobile/common/utils/SerialExecutor$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/utils/SerialExecutor;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    #getter for: Lcom/alipay/mobile/common/utils/SerialExecutor;->a:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/SerialExecutor;->access$000(Lcom/alipay/mobile/common/utils/SerialExecutor;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    const-string/jumbo v1, "SerialExecutor"

    #setter for: Lcom/alipay/mobile/common/utils/SerialExecutor;->a:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;->access$002(Lcom/alipay/mobile/common/utils/SerialExecutor;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->this$0:Lcom/alipay/mobile/common/utils/SerialExecutor;

    #getter for: Lcom/alipay/mobile/common/utils/SerialExecutor;->a:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/common/utils/SerialExecutor;->access$000(Lcom/alipay/mobile/common/utils/SerialExecutor;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/utils/SerialExecutor$2;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
