.class final Lcom/alipay/mobile/alipassapp/ui/common/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/common/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/common/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/common/f;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/common/f;->a:Lcom/alipay/mobile/alipassapp/ui/common/a;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/common/a;->a(Lcom/alipay/mobile/alipassapp/ui/common/a;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_0
    .end packed-switch
.end method
