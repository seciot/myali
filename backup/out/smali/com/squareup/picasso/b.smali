.class final Lcom/squareup/picasso/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/squareup/picasso/Picasso;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/picasso/b;->a:Lcom/squareup/picasso/Picasso;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/squareup/picasso/e;

    iget-object v1, v0, Lcom/squareup/picasso/e;->l:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/squareup/picasso/e;->p:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, v0, Lcom/squareup/picasso/e;->a:Lcom/squareup/picasso/Picasso;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->i:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/squareup/picasso/e;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/squareup/picasso/e;->b()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->c(Lcom/squareup/picasso/e;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Picasso;->d(Lcom/squareup/picasso/e;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
