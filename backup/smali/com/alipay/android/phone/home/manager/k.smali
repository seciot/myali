.class final Lcom/alipay/android/phone/home/manager/k;
.super Ljava/lang/Thread;
.source "HomeAppsOnItemLongClickListener.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/k;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/k;->b:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/k;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->b(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 103
    return-void
.end method
