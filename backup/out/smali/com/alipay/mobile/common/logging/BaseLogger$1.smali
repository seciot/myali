.class Lcom/alipay/mobile/common/logging/BaseLogger$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/logging/BaseLogger;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/logging/BaseLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/logging/BaseLogger$1;->this$0:Lcom/alipay/mobile/common/logging/BaseLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger$1;->this$0:Lcom/alipay/mobile/common/logging/BaseLogger;

    iget-object v1, v0, Lcom/alipay/mobile/common/logging/BaseLogger;->mPrintWriter:Ljava/io/PrintWriter;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger$1;->this$0:Lcom/alipay/mobile/common/logging/BaseLogger;

    iget-object v0, v0, Lcom/alipay/mobile/common/logging/BaseLogger;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger$1;->this$0:Lcom/alipay/mobile/common/logging/BaseLogger;

    #getter for: Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/BaseLogger;->access$000(Lcom/alipay/mobile/common/logging/BaseLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
