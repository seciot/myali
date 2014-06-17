.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/e;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;)V
    .locals 0
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/e;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/d;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->onInstallComplete(Z)V

    .line 266
    return-void
.end method
