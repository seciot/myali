.class final Lcom/alipay/android/phone/home/manager/g;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field final synthetic c:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/g;->c:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/g;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/g;->b:Lcom/alipay/android/phone/home/manager/ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    new-instance v1, Lcom/alipay/android/phone/home/manager/h;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/home/manager/h;-><init>(Lcom/alipay/android/phone/home/manager/g;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 153
    :cond_0
    return-void
.end method
