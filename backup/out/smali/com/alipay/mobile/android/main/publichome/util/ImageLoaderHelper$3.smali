.class final Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;
.super Ljava/lang/Object;
.source "ImageLoaderHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$height:I

.field final synthetic val$imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$tag:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/ImageLoaderService;Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object p2, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$imageUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$tag:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    iput p4, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$width:I

    iput p5, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$imageLoaderService:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    sget-object v1, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->IMAGE_STORAGE_OWNER:Ljava/lang/String;

    sget-object v2, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper;->IMAGE_STORAGE_GROUP:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$imageUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$tag:Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;

    invoke-virtual {v4}, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    move-result-object v4

    iget v5, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$width:I

    iget v6, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderHelper$3;->val$height:I

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    .line 227
    return-void
.end method
