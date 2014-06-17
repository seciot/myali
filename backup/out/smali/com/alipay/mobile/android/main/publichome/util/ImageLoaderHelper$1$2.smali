.class Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$callback:Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;

    iget-object v1, v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$1;->val$imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;->loadDefaultImage(Landroid/widget/ImageView;)V

    .line 79
    return-void
.end method
