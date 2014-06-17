.class final Lcom/alipay/mobile/onsitepay/payer/confirm/p;
.super Ljava/lang/Object;
.source "C2CConfirmActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/p;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/p;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/p;->b:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/p;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;->a(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity_;Landroid/graphics/Bitmap;)V

    .line 104
    return-void
.end method
