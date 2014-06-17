.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 201
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getBundleContext()Lcom/alipay/mobile/framework/BundleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/BundleContext;->addExternelBundle(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
