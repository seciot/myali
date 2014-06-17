.class final Lcom/alipay/mobile/onsitepay/payer/sound/ae;
.super Ljava/util/TimerTask;
.source "SoundButtonActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ae;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 212
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ae;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->c:Landroid/os/Handler;
    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->access$300(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method
