.class final Lcom/alipay/android/phone/home/ui/u;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

.field final synthetic b:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/u;->b:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/u;->b:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$300(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 284
    sget-object v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/u;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 288
    sput-object v2, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 291
    :cond_0
    return-void
.end method
