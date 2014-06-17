.class public abstract Lcom/alipay/android/phone/publicplatform/main/service/PublicMainService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "PublicMainService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getPublicHomeManagerInterface()Lcom/alipay/android/phone/publicplatform/main/api/PublicHomeManagerInterface;
.end method

.method public abstract getPublicHomeViewInterface()Lcom/alipay/android/phone/publicplatform/main/api/PublicHomeFragmentInterface;
.end method

.method public abstract getPublicHomeViewInterface(Landroid/app/Activity;)Lcom/alipay/android/phone/publicplatform/main/api/PublicHomeFragmentInterface;
.end method
