.class public abstract Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;
.super Ljava/lang/Object;
.source "AbstructImageLoaderListener.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# instance fields
.field public canceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/android/main/publichome/util/AbstructImageLoaderListener;->canceled:Z

    return-void
.end method


# virtual methods
.method public onCancelled(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    return-void
.end method

.method public onFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    return-void
.end method

.method public onPostLoad(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    return-void
.end method

.method public onPreLoad(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    return-void
.end method

.method public onProgressUpdate(Ljava/lang/String;D)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    return-void
.end method
