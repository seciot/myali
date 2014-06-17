.class final Lcom/alipay/android/phone/home/util/a;
.super Ljava/lang/Object;
.source "ImageLoadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Z

.field final synthetic e:I

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/common/ImageLoaderService;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/android/phone/home/util/a;->a:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    iput-object p2, p0, Lcom/alipay/android/phone/home/util/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/home/util/a;->c:Landroid/widget/ImageView;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/home/util/a;->d:Z

    iput p4, p0, Lcom/alipay/android/phone/home/util/a;->e:I

    iput p5, p0, Lcom/alipay/android/phone/home/util/a;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/android/phone/home/util/a;->a:Lcom/alipay/mobile/framework/service/common/ImageLoaderService;

    sget-object v1, Lcom/alipay/android/phone/home/util/ImageLoadHelper;->a:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/phone/home/util/ImageLoadHelper;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/phone/home/util/a;->b:Ljava/lang/String;

    new-instance v4, Lcom/alipay/android/phone/home/util/b;

    invoke-direct {v4, p0}, Lcom/alipay/android/phone/home/util/b;-><init>(Lcom/alipay/android/phone/home/util/a;)V

    iget v5, p0, Lcom/alipay/android/phone/home/util/a;->e:I

    iget v6, p0, Lcom/alipay/android/phone/home/util/a;->f:I

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/common/ImageLoaderService;->startLoad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;II)V

    .line 95
    return-void
.end method
