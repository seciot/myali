.class public Lcom/alipay/android/phone/home/ui/HomeLayout;
.super Ljava/lang/Object;
.source "HomeLayout.java"

# interfaces
.implements Lcom/alipay/android/launcher/core/IWidget;


# instance fields
.field private a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeLayout;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 15
    new-instance v0, Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/home/ui/HomeFragment;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeLayout;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    .line 16
    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeLayout;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    return-object v0
.end method

.method public onRefresh()V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeLayout;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/HomeLayout;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->onRefresh()V

    .line 27
    :cond_0
    return-void
.end method

.method public setActivityApplication(Lcom/alipay/mobile/framework/app/ActivityApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    return-void
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    return-void
.end method

.method public setContext(Lcom/alipay/mobile/framework/MicroApplicationContext;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    return-void
.end method
