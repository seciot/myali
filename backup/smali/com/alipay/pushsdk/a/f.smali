.class public final Lcom/alipay/pushsdk/a/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/pushsdk/a/e;


# direct methods
.method public constructor <init>(Lcom/alipay/pushsdk/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/pushsdk/a/f;->a:Lcom/alipay/pushsdk/a/e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/pushsdk/b/b;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/b/b;->d()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/alipay/pushsdk/a/f;->a:Lcom/alipay/pushsdk/a/e;

    invoke-static {v1}, Lcom/alipay/pushsdk/a/e;->a(Lcom/alipay/pushsdk/a/e;)Lcom/alipay/pushsdk/a/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/pushsdk/a/g;->a(Lcom/alipay/pushsdk/b/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/alipay/pushsdk/a/f;->a:Lcom/alipay/pushsdk/a/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/a/e;->a(Lcom/alipay/pushsdk/a/e;)Lcom/alipay/pushsdk/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/pushsdk/a/g;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
