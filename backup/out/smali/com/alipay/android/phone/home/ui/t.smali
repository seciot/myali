.class final Lcom/alipay/android/phone/home/ui/t;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/t;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/t;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$300(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/t;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$400(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/t;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$300(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/t;->a:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->g:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$400(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    .line 266
    :cond_0
    return-void
.end method
