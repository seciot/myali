.class final Lcom/alipay/mobile/alipassnfcapp/ui/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/c;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/alipay/mobile/alipassnfcapp/ui/c;->a:Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;

    iget-object v1, v1, Lcom/alipay/mobile/alipassnfcapp/ui/AlipassSendSoundViewController;->handlerWave:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
