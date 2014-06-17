.class final Lcom/alipay/mobile/appstoreapp/ui/g;
.super Ljava/lang/Object;
.source "AppDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/appstoreapp/ui/f;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/appstoreapp/ui/f;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->getEnum(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 410
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->e(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallStatus()Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/InstallStatus;->getStatus()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->i(Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/appstoreapp/ui/g;->a:Lcom/alipay/mobile/appstoreapp/ui/f;

    iget-object v0, v0, Lcom/alipay/mobile/appstoreapp/ui/f;->a:Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/appstoreapp/ui/AppDetailActivity;->finish()V

    goto :goto_0
.end method
