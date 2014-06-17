.class final Lcom/alipay/mobile/onsitepay/payer/sound/f;
.super Ljava/lang/Object;
.source "SendSoundViewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/f;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLBSInfoChanged(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 829
    if-eqz p2, :cond_0

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 830
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/f;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    .line 831
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/f;->a:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/lbsinfo/LBSInfoGather;->removeUpdates(Lcom/alipay/mobile/framework/lbsinfo/LBSInfoListener;)V

    .line 834
    :cond_0
    return-void
.end method
