.class public final Lcom/alipay/pushsdk/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Ljava/util/concurrent/BlockingQueue;

.field private d:Ljava/lang/Runnable;

.field private final e:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/alipay/pushsdk/c/g;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/c/g;-><init>(Lcom/alipay/pushsdk/c/e;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/c/e;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/pushsdk/c/e;->c:Ljava/util/concurrent/BlockingQueue;

    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/pushsdk/c/e;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/pushsdk/c/e;-><init>()V

    iput-object p1, p0, Lcom/alipay/pushsdk/c/e;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/c/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/pushsdk/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/c/e;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->c:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/alipay/pushsdk/c/e;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->b:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alipay/pushsdk/c/e;->d:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->c:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Lcom/alipay/pushsdk/c/f;

    invoke-direct {v1, p0, p1}, Lcom/alipay/pushsdk/c/f;-><init>(Lcom/alipay/pushsdk/c/e;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/alipay/pushsdk/c/e;->d:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/pushsdk/c/e;->a()V

    :cond_0
    return-void
.end method
