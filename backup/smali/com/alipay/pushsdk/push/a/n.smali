.class final Lcom/alipay/pushsdk/push/a/n;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/push/a/m;


# direct methods
.method constructor <init>(Lcom/alipay/pushsdk/push/a/m;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/push/a/n;->a:Lcom/alipay/pushsdk/push/a/m;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const-wide/16 v5, 0x0

    const/4 v0, 0x3

    invoke-static {}, Lcom/alipay/pushsdk/push/a/m;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "reConnTask() curMsgId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/a/n;->a:Lcom/alipay/pushsdk/push/a/m;

    invoke-static {v3}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/a/m;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->k:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->B:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "PushConnection_reConnTask:TimerTask timeout. lastMsgId="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alipay/pushsdk/push/a/n;->a:Lcom/alipay/pushsdk/push/a/m;

    invoke-static {v8}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/a/m;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/a/n;->a:Lcom/alipay/pushsdk/push/a/m;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/a/m;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/alipay/pushsdk/push/b/c;

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/c/a/d;->k:Ljava/lang/String;

    sget-object v1, Lcom/alipay/pushsdk/c/a/d;->z:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lcom/alipay/pushsdk/c/a/d;->E:Ljava/lang/String;

    const-wide/16 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "PushConnection_reConnTask:TimerTask timeout and connectionClosedOnError. lastMsgId="

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/alipay/pushsdk/push/a/n;->a:Lcom/alipay/pushsdk/push/a/m;

    invoke-static {v10}, Lcom/alipay/pushsdk/push/a/m;->a(Lcom/alipay/pushsdk/push/a/m;)I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/alipay/pushsdk/c/a/d;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V

    const-string/jumbo v0, "The reps of heart timeout."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "timeout : heart"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/a/p;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/a/p;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v0, "51"

    invoke-virtual {v2, v0}, Lcom/alipay/pushsdk/push/a/p;->a(Ljava/lang/String;)V

    invoke-interface {v8, v2}, Lcom/alipay/pushsdk/push/b/c;->a(Lcom/alipay/pushsdk/push/a/p;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/alipay/pushsdk/push/a/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reConnTask() connectionClosedOnError has been notify!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/c/a/c;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
