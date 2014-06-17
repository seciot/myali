.class final Lcom/alipay/android/phone/home/manager/b;
.super Ljava/lang/Object;
.source "AppCenterOnItemLongClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

.field final synthetic c:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/b;->c:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/b;->b:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    if-nez p2, :cond_2

    .line 66
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->i(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->c:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    invoke-static {}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->c:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;->a(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;)V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->moveToHome()V

    .line 72
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->b:Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 74
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->e(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/b;->c:Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;->a(Lcom/alipay/android/phone/home/manager/AppCenterOnItemLongClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    goto :goto_0
.end method
