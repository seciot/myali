.class Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$callback:Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    iget-object v1, v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$imageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;->loadSuccess(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method
