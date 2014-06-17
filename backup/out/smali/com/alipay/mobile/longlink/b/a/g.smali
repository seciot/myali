.class final Lcom/alipay/mobile/longlink/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/b/a/e;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/b/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/g;->a:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Push Listener Processor ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/b/a/g;->a:Lcom/alipay/mobile/longlink/b/a/e;

    invoke-static {v2}, Lcom/alipay/mobile/longlink/b/a/e;->a(Lcom/alipay/mobile/longlink/b/a/e;)Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v2

    iget v2, v2, Lcom/alipay/mobile/longlink/b/a/k;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method
