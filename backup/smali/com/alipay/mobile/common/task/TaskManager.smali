.class public Lcom/alipay/mobile/common/task/TaskManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/alipay/mobile/common/task/TaskManager;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private c:Lcom/alipay/mobile/common/utils/SerialExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/alipay/mobile/common/task/TaskManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/task/TaskManager;->d:Ljava/lang/String;

    new-instance v0, Lcom/alipay/mobile/common/task/TaskManager$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/TaskManager$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/task/TaskManager;->e:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/mobile/common/utils/SerialExecutor;

    sget-object v1, Lcom/alipay/mobile/common/task/TaskManager;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/utils/SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/TaskManager;->c:Lcom/alipay/mobile/common/utils/SerialExecutor;

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x3

    const/16 v2, 0xa

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    sget-object v7, Lcom/alipay/mobile/common/task/TaskManager;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/task/TaskManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alipay/mobile/common/task/TaskManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/common/task/TaskManager;
    .locals 2

    const-class v1, Lcom/alipay/mobile/common/task/TaskManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/task/TaskManager;->a:Lcom/alipay/mobile/common/task/TaskManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/task/TaskManager;

    invoke-direct {v0}, Lcom/alipay/mobile/common/task/TaskManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/task/TaskManager;->a:Lcom/alipay/mobile/common/task/TaskManager;

    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/task/TaskManager;->a:Lcom/alipay/mobile/common/task/TaskManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public parallelExecute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/TaskManager;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public serialExecute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/common/task/TaskManager;->c:Lcom/alipay/mobile/common/utils/SerialExecutor;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
