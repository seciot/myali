.class final Lcom/alipay/pushsdk/c/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/c/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/c/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/c/a/b;->a:Lcom/alipay/pushsdk/c/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/alipay/pushsdk/c/a/f;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/b;->a:Lcom/alipay/pushsdk/c/a/a;

    iget-object v0, v0, Lcom/alipay/pushsdk/c/a/a;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/pushsdk/c/a/b;->a:Lcom/alipay/pushsdk/c/a/a;

    invoke-static {v0}, Lcom/alipay/pushsdk/c/a/a;->a(Lcom/alipay/pushsdk/c/a/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    invoke-static {}, Lcom/alipay/pushsdk/c/a/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
