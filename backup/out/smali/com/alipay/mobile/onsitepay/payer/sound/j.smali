.class final Lcom/alipay/mobile/onsitepay/payer/sound/j;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 227
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const-class v2, Lcom/alipay/mobile/onsitepay/payee/FacePayeeActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->e(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/sonicwavenfc/SonicWaveNFC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sonicwavenfc/SonicWaveNFC;->stopSendData()V

    .line 233
    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->g(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->f(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->finish()V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/j;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const v1, 0x10a0002

    const v2, 0x10a0003

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->overridePendingTransition(II)V

    .line 237
    return-void
.end method
