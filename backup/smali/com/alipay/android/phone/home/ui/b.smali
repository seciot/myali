.class final Lcom/alipay/android/phone/home/ui/b;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

.field final synthetic b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/b;->b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/b;->b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$000(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 161
    sget-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    .line 164
    sput-object v2, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 167
    :cond_0
    return-void
.end method
