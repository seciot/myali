.class final Lcom/alipay/mobile/onsitepay/payer/sound/t;
.super Ljava/lang/Object;
.source "SendSoundViewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/t;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/t;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/t;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->b(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Ljava/lang/String;)V

    .line 95
    return-void
.end method
