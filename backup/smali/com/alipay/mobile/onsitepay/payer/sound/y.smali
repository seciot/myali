.class final Lcom/alipay/mobile/onsitepay/payer/sound/y;
.super Ljava/lang/Object;
.source "SendSoundViewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->c:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->c:Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->a:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/onsitepay/payer/sound/y;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/sound/SendSoundViewActivity_;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 165
    return-void
.end method
