.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 821
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    #getter for: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authType:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$200(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->doAuthAndLaunch(Landroid/os/Bundle;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$300(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 825
    return-void
.end method
