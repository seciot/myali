.class public final Lcom/alipay/mobile/longlink/service/o;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/service/LongLinkService;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/longlink/service/LongLinkService;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/o;->a:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/o;->a:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/LongLinkService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/o;->a:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v1}, Lcom/alipay/mobile/longlink/service/LongLinkService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/o;->a:Lcom/alipay/mobile/longlink/service/LongLinkService;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/LongLinkService;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {}, Lcom/alipay/mobile/longlink/service/LongLinkService;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Future result is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method
