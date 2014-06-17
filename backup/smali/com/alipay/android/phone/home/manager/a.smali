.class final Lcom/alipay/android/phone/home/manager/a;
.super Ljava/lang/Object;
.source "AppCenterOnItemClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/a;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 125
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "APP_ID"

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "ACTION"

    const-string/jumbo v2, "UPGRADE"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/a;->b:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    invoke-static {v1}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;->a(Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "10000111"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string/jumbo v1, "AppCenterOnItemClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
