.class final Lcom/alipay/mobile/onsitepay/payer/sound/ac;
.super Ljava/lang/Object;
.source "SoundButtonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ac;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ac;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->setWavingState(Z)V

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/ac;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveButtonListener:Lcom/alipay/mobile/onsitepay/payer/sound/ag;

    invoke-interface {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/ag;->c()V

    .line 182
    return-void
.end method
