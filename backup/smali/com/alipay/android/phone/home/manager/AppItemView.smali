.class public Lcom/alipay/android/phone/home/manager/AppItemView;
.super Lcom/alipay/mobile/commonui/widget/APFrameLayout;
.source "AppItemView.java"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field private a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/android/phone/openplatform/R$layout;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/home/manager/AppItemView;->addView(Landroid/view/View;)V

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/home/manager/AppItemView;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    return-object v0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/alipay/mobile/commonui/widget/APFrameLayout;->onDetachedFromWindow()V

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    .line 53
    :cond_0
    return-void
.end method

.method public setApp(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->deleteObserver(Ljava/util/Observer;)V

    .line 31
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 32
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_1

    .line 33
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->addObserver(Ljava/util/Observer;)V

    .line 35
    :cond_1
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 39
    if-nez p2, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    instance-of v0, p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    if-eqz v0, :cond_0

    .line 43
    check-cast p2, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/AppItemView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/ViewHolder;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/AppItemView;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/alipay/android/phone/home/manager/f;

    invoke-direct {v1, p0, p2, v0, v2}, Lcom/alipay/android/phone/home/manager/f;-><init>(Lcom/alipay/android/phone/home/manager/AppItemView;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;Lcom/alipay/android/phone/home/manager/ViewHolder;Z)V

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/home/manager/AppItemView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
