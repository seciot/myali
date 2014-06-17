.class public abstract Lcom/alipay/mobile/android/main/publichome/util/LoadImageCallback;
.super Ljava/lang/Object;
.source "LoadImageCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract isNeedShowLoading()Z
.end method

.method public abstract loadDefaultImage(Landroid/widget/ImageView;)V
.end method

.method public abstract loadLoadingImage(Landroid/widget/ImageView;)V
.end method

.method public abstract loadSuccess(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
.end method
