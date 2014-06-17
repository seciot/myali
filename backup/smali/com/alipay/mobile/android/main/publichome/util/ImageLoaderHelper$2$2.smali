.class Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$2;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    iget-object v0, v0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2$2;->this$0:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;

    iget v1, v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$2;->val$defaultDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 159
    return-void
.end method
