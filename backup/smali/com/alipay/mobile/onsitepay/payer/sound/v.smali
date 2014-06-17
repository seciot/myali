.class final Lcom/alipay/mobile/onsitepay/payer/sound/v;
.super Ljava/lang/Object;
.source "SendSoundViewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/v;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/v;->a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/v;->b:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/v;->a:Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lcom/alipay/livetradeprod/core/model/rpc/GetDynamicIdRes;)V

    .line 123
    return-void
.end method
