.class final Lcom/alipay/mobile/longlink/service/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Lcom/alipay/mobile/longlink/service/a;

.field final synthetic b:Lcom/alipay/mobile/longlink/service/a;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/longlink/service/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/g;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/longlink/service/a;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/longlink/service/g;-><init>(Lcom/alipay/mobile/longlink/service/a;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "===== ReconnectTask() Runnable====="

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/longlink/service/g;->b:Lcom/alipay/mobile/longlink/service/a;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->b:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->d()Lcom/alipay/mobile/longlink/b/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->f()V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->w()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->u()V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/longlink/service/a;->a(Z)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ReconnectTask() return because of flag(forcestopped)."

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ReconnectTask() getUsername="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v2}, Lcom/alipay/mobile/longlink/service/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/service/g;->a:Lcom/alipay/mobile/longlink/service/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/service/a;->v()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/longlink/service/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ReconnectTask() there isn\'t valind user and give up connecting."

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
