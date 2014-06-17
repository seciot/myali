.class final Lcom/alipay/android/phone/home/util/b;
.super Ljava/lang/Object;
.source "ImageLoadHelper.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/util/a;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/util/a;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    return-void
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 62
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 65
    invoke-static {p2}, Lcom/alipay/android/phone/home/util/ImageLoadHelper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 66
    iget-object v2, p0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-object v2, v2, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-object v2, v2, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v2, p0, Lcom/alipay/android/phone/home/util/b;->a:Lcom/alipay/android/phone/home/util/a;

    iget-object v2, v2, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/alipay/android/phone/home/util/c;

    invoke-direct {v3, p0, v1, v0}, Lcom/alipay/android/phone/home/util/c;-><init>(Lcom/alipay/android/phone/home/util/b;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public final onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method
