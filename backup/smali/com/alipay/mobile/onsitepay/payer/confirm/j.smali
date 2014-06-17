.class final Lcom/alipay/mobile/onsitepay/payer/confirm/j;
.super Ljava/lang/Object;
.source "C2CConfirmActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/j;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/confirm/j;->a:Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/onsitepay/payer/confirm/C2CConfirmActivity;->a(Landroid/graphics/Bitmap;)V

    .line 165
    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 159
    return-void
.end method
