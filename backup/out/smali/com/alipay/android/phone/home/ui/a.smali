.class final Lcom/alipay/android/phone/home/ui/a;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/a;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/a;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$000(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/a;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$100(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/a;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$000(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/a;->a:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->f:Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;
    invoke-static {v1}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$100(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getAppCenterAppsFromLocal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Ljava/util/List;)V

    .line 143
    :cond_0
    return-void
.end method
