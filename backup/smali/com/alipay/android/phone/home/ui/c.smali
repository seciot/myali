.class final Lcom/alipay/android/phone/home/ui/c;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

.field final synthetic b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/c;->b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/c;->b:Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    #getter for: Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->e:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;
    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$000(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->c(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 183
    return-void
.end method
