.class final Lcom/alipay/mobile/quinox/classloader/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/alipay/mobile/quinox/classloader/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/classloader/a;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Lcom/alipay/mobile/quinox/classloader/a;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Lcom/alipay/mobile/quinox/classloader/a;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/classloader/a;->a(Lcom/alipay/mobile/quinox/classloader/a;)Lcom/alipay/mobile/quinox/bundle/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/quinox/bundle/b;->e()V

    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
