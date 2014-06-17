.class final Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;-><init>(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->f:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$100(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->f:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$100(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->f:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$100(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "logonId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->f:Landroid/os/Bundle;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$100(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    const-string/jumbo v2, "alipay"

    #setter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->b:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$202(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->showProgressDialog(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->d:Lcom/alipay/mobile/security/authcenter/a/e;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$400(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/security/authcenter/a/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/security/authcenter/a/e;->b(Ljava/lang/String;)Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobileapp/biz/rpc/user/MobileUserResult;->isMobileUser()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "logonId"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "fromWhich"

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->b:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$200(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000015"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->f:Landroid/os/Bundle;
    invoke-static {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$100(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "fromWhich"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->b:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$202(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v1, v1, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v1, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    goto :goto_1

    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v2, v2, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    #setter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1, v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$502(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$500(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v1, v1, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$500(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v1, v1, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v1, v1, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_5
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v2, v3, v4}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$600(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_6
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    iget-object v2, v2, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    #setter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1, v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$502(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$500(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$500(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "fromWhich"

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->b:Ljava/lang/String;
    invoke-static {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$200(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "IS_RESET"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000051"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_4
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :cond_7
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "loginId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    #getter for: Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->access$300(Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v1}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp$a;->a:Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;

    invoke-virtual {v2}, Lcom/alipay/android/widget/security/app/ForgotMobilePwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method
