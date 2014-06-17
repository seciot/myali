.class final Lcom/squareup/picasso/i;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/squareup/picasso/h;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/h;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const-wide/16 v4, 0x1

    iget-object v1, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    monitor-enter v1

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/squareup/picasso/j;

    invoke-direct {v2, p0, p1}, Lcom/squareup/picasso/j;-><init>(Lcom/squareup/picasso/i;Landroid/os/Message;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    :pswitch_0
    monitor-exit v1

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v2, v0, Lcom/squareup/picasso/h;->c:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/squareup/picasso/h;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v2, v0, Lcom/squareup/picasso/h;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/squareup/picasso/h;->d:J

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget v2, v0, Lcom/squareup/picasso/h;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/squareup/picasso/h;->i:I

    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v2, v0, Lcom/squareup/picasso/h;->e:J

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/squareup/picasso/h;->e:J

    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-object v2, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget v2, v2, Lcom/squareup/picasso/h;->i:I

    iget-object v3, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v3, v3, Lcom/squareup/picasso/h;->e:J

    int-to-long v5, v2

    div-long v2, v3, v5

    iput-wide v2, v0, Lcom/squareup/picasso/h;->g:J

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget v2, v0, Lcom/squareup/picasso/h;->j:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/squareup/picasso/h;->j:I

    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v2, v0, Lcom/squareup/picasso/h;->f:J

    iget v4, p1, Landroid/os/Message;->arg1:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/squareup/picasso/h;->f:J

    iget-object v0, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-object v2, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget v2, v2, Lcom/squareup/picasso/h;->i:I

    iget-object v3, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/h;

    iget-wide v3, v3, Lcom/squareup/picasso/h;->f:J

    int-to-long v5, v2

    div-long v2, v3, v5

    iput-wide v2, v0, Lcom/squareup/picasso/h;->h:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
