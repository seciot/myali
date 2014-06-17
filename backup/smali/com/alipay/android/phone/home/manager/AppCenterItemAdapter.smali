.class public Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
.super Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;
.source "AppCenterItemAdapter.java"


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;-><init>(Landroid/view/LayoutInflater;Ljava/util/List;)V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 27
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a:Ljava/util/List;

    invoke-static {}, Lcom/alipay/android/phone/home/app/FastLoginApp;->a()Lcom/alipay/android/phone/home/app/FastLoginApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {p0}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->notifyDataSetChanged()V

    .line 37
    return-void
.end method
