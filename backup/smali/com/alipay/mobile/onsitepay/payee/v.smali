.class final Lcom/alipay/mobile/onsitepay/payee/v;
.super Ljava/lang/Object;
.source "FacePayeeHead.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/alipay/mobile/onsitepay/payee/v;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 194
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    sget-object v0, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->TAG:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/onsitepay/payee/v;->a:Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;

    #getter for: Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->b:Landroid/os/Handler;
    invoke-static {v0}, Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;->access$200(Lcom/alipay/mobile/onsitepay/payee/FacePayeeHead;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepay/payee/w;

    invoke-direct {v1, p0, p2, p1}, Lcom/alipay/mobile/onsitepay/payee/w;-><init>(Lcom/alipay/mobile/onsitepay/payee/v;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 188
    return-void
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 173
    return-void
.end method
