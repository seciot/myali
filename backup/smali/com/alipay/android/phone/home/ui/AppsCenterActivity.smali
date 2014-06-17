.class public Lcom/alipay/android/phone/home/ui/AppsCenterActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;
.source "AppsCenterActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    sget v0, Lcom/alipay/android/phone/openplatform/R$layout;->e:I

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/ui/AppsCenterActivity;->setContentView(I)V

    .line 15
    return-void
.end method
