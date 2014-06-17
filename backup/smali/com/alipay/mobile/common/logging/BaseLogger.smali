.class public abstract Lcom/alipay/mobile/common/logging/BaseLogger;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/alipay/mobile/common/utils/SerialExecutor;

.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected mPrintWriter:Ljava/io/PrintWriter;

.field protected mSpecifiers:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/alipay/mobile/common/utils/SerialExecutor;

    const-string/jumbo v1, "BaseLogger"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->a:Lcom/alipay/mobile/common/utils/SerialExecutor;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/logging/BaseLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method protected varargs doLog([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->mPrintWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->mPrintWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->mSpecifiers:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->mPrintWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/BaseLogger;->a:Lcom/alipay/mobile/common/utils/SerialExecutor;

    new-instance v1, Lcom/alipay/mobile/common/logging/BaseLogger$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/logging/BaseLogger$1;-><init>(Lcom/alipay/mobile/common/logging/BaseLogger;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected abstract init()V
.end method
