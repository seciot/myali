.class final Lcom/alipay/android/phone/home/ui/v;
.super Ljava/lang/Object;
.source "HomeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

.field final synthetic b:Lcom/alipay/android/phone/home/ui/HomeFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/v;->b:Lcom/alipay/android/phone/home/ui/HomeFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/v;->b:Lcom/alipay/android/phone/home/ui/HomeFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/HomeFragment;->f:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFragment;->access$300(Lcom/alipay/android/phone/home/ui/HomeFragment;)Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/v;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 309
    return-void
.end method
