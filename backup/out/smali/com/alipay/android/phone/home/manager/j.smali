.class final Lcom/alipay/android/phone/home/manager/j;
.super Ljava/lang/Object;
.source "HomeAppsOnItemLongClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

.field final synthetic c:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/j;->b:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    if-nez p2, :cond_2

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->g(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    invoke-static {}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToAppCenter()V

    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->b:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 80
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->c(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;->a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto :goto_0
.end method
