.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;
.super Landroid/content/BroadcastReceiver;
.source "ApkApp.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "package:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->onInstallComplete(Z)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/a;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;->b(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/ApkApp;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->saveOrUpdateAppEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;)V

    .line 122
    :cond_1
    return-void
.end method
