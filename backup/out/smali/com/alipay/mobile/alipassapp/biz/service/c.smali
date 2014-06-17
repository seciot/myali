.class final Lcom/alipay/mobile/alipassapp/biz/service/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/biz/service/b;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:J

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Landroid/graphics/Bitmap;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/biz/service/b;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->b:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->d:Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->j:Ljava/lang/String;

    return-void
.end method

.method public final c()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final e()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->b:Z

    return-void
.end method

.method public final f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->e:J

    return-void
.end method

.method public final run()V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->prepare()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->b:Z

    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->e:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-boolean v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->g:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/b;->a(Lcom/alipay/mobile/alipassapp/biz/service/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->e:J

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/b;->b(Lcom/alipay/mobile/alipassapp/biz/service/b;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/biz/service/b;->getDynamicCode()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v2}, Lcom/alipay/mobile/alipassapp/biz/service/b;->a(Lcom/alipay/mobile/alipassapp/biz/service/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->i:Ljava/lang/String;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->f:Ljava/lang/Object;

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v3, "dbarcode"

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :try_start_4
    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_4
    const-string/jumbo v3, "dqrcode"

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->j:Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "utf-8"

    iput-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->j:Ljava/lang/String;

    :cond_5
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alipay/mobile/alipassapp/biz/common/i;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->h:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "dwave"

    iget-object v3, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iput v1, v2, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/biz/service/c;->a:Lcom/alipay/mobile/alipassapp/biz/service/b;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/biz/service/b;->c(Lcom/alipay/mobile/alipassapp/biz/service/b;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_7
    return-void

    :catch_2
    move-exception v1

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
