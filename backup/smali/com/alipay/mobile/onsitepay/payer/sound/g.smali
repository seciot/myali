.class final Lcom/alipay/mobile/onsitepay/payer/sound/g;
.super Landroid/content/BroadcastReceiver;
.source "SendSoundViewActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 881
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/g;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 884
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "seed_init_complete"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    const-string/jumbo v1, "seed_init_complete_falg"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 886
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SEED_INIT_COMPLETE result = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 887
    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/g;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Z)Z

    .line 888
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/g;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->isWaveNow:Z

    if-nez v0, :cond_1

    .line 889
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/g;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m()V

    .line 892
    :cond_1
    return-void
.end method
