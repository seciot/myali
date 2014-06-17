.class Lcom/alipay/mobile/common/media/MediaLoadManager$2;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/media/MediaLoadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$2;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/common/media/MediaLoadManager$2;->this$0:Lcom/alipay/mobile/common/media/MediaLoadManager;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/media/MediaLoadManager;->access$600(Lcom/alipay/mobile/common/media/MediaLoadManager;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
