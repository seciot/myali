.class final Lcom/alipay/mobile/longlink/b/a/l;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/longlink/b/a/k;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/longlink/b/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/longlink/b/a/l;->a:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/k;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reConnTask() curMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/longlink/b/a/l;->a:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-static {v3}, Lcom/alipay/mobile/longlink/b/a/k;->a(Lcom/alipay/mobile/longlink/b/a/k;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/longlink/b/a/l;->a:Lcom/alipay/mobile/longlink/b/a/k;

    invoke-virtual {v0}, Lcom/alipay/mobile/longlink/b/a/k;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/longlink/b/b/c;

    :try_start_0
    const-string/jumbo v2, "The reps of heart timeout."

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "timeout : heart"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/alipay/mobile/longlink/b/a/n;

    invoke-direct {v4, v2, v3}, Lcom/alipay/mobile/longlink/b/a/n;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v2, "51"

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/longlink/b/a/n;->a(Ljava/lang/String;)V

    invoke-interface {v0, v4}, Lcom/alipay/mobile/longlink/b/b/c;->a(Lcom/alipay/mobile/longlink/b/a/n;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/alipay/mobile/longlink/b/a/k;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reConnTask() connectionClosedOnError has been notify!"

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/longlink/c/a;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
