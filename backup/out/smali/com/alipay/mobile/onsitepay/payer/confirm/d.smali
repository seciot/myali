.class final Lcom/alipay/mobile/onsitepay/payer/confirm/d;
.super Ljava/lang/Object;
.source "C2BConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/d;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/d;->a:Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/d;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/d;->a:Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2BConfirmActivity_;Lcom/alipay/livetradeprod/core/model/rpc/SoundWavePayRes;)V

    .line 108
    return-void
.end method
