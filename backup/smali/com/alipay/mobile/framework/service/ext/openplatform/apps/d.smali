.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findDescriptionById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/ApplicationDescription;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    .line 259
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->addExternelBundle(Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/e;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/e;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/f;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/f;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->onInstallComplete(Z)V

    goto :goto_0
.end method
