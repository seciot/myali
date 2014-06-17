.class Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$1;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$1;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$1;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    return-void
.end method
