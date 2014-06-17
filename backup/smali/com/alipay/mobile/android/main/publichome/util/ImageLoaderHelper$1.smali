.class final Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;
.super Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;
.source "ImageLoaderHelper.java"


# instance fields
.field final synthetic val$callback:Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$callback:Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$imageView:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;->onCancelled(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public final onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;-><init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->canceled:Z

    goto :goto_0
.end method

.method public final onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->canceled:Z

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;-><init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
