.class final Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;
.super Ljava/lang/Object;
.source "InnerApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iget-object v0, v0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->d:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iget-object v2, v2, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/c;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;

    iget-object v3, v3, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/b;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/openplatform/apps/InnerApp;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 208
    return-void
.end method
