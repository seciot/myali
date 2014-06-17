.class public Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;
.super Ljava/lang/Object;
.source "ImageLoaderTag.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getListener()Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setListener(Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->b:Lcom/alipay/mobile/framework/service/common/ImageLoaderListener;

    .line 29
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/util/ImageLoaderTag;->a:Ljava/lang/String;

    .line 21
    return-void
.end method
