.class final Lcom/alipay/mobile/onsitepay/payer/sound/b;
.super Ljava/lang/Object;
.source "NearbyFriend.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payer/sound/b;->a:Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    sget-object v0, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->TAG:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payer/sound/b;->a:Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;

    #getter for: Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->c:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;->access$100(Lcom/alipay/mobile/onsitepay/payer/sound/NearbyFriend;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepay/payer/sound/c;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/onsitepay/payer/sound/c;-><init>(Lcom/alipay/mobile/onsitepay/payer/sound/b;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 106
    return-void
.end method
