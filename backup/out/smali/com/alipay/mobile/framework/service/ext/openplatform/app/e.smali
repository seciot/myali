.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 834
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    const-string/jumbo v1, "\u652f\u4ed8\u5b9d\u8d26\u53f7\u767b\u5f55\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->showToastCenter(Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 840
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 841
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 848
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$400(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 855
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 858
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    #calls: Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAuthService()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$400(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    .line 859
    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/e;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final onUserCancel()V
    .locals 0

    .prologue
    .line 837
    return-void
.end method
