.class final Lcom/alipay/mobile/security/accountmanager/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/alipay/mobile/security/accountmanager/a/d;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/accountmanager/a/d;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iput-object p2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iput-object p3, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v1, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;

    new-instance v1, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;

    invoke-direct {v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;->setLogonId(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/a/d;->b(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutService;->logout(Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutReq;)Lcom/alipay/mobilegw/biz/shared/processer/logout/UserLogoutResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "phoneNum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    const-string/jumbo v2, "phoneNum"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->a:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Lcom/alipay/mobile/security/accountmanager/a/d;Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->c:Lcom/alipay/mobile/security/accountmanager/a/d;

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/a/e;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "phoneNum"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/security/accountmanager/a/d;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    throw v0
.end method
