.class final Lcom/alipay/mobile/onsitepay/payer/sound/o;
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
    .line 606
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->r:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 613
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-boolean v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s:Z

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->s:Z

    .line 615
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->c(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->m:Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SoundButtonActivity;->waveRetry()V

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/o;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->d(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V

    .line 621
    :cond_0
    return-void
.end method
