.class public Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SendSoundViewActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 451
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    const-string/jumbo v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u63a5\u6536\u8033\u673a\u62e8\u63d2\u65f6\u7684\u5e7f\u64ad1\u3000misHeadSetOn"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Z)Z

    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const-string/jumbo v1, "\u70b9\u51fb\u91cd\u8bd5"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Ljava/lang/String;)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Z)Z

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity$HeadSetReceiver;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r()V

    goto :goto_0
.end method
