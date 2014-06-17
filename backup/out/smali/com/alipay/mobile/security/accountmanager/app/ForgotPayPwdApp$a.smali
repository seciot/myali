.class final Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;-><init>(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    #setter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$202(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "logonId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "logonId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-static {v2, v0, v1, v3, v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$400(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v3, v3, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    #setter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v2, v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$202(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->W:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/SecurityUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "alipay"

    :goto_1
    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "fromWhich"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loginId: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v0, v0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    iget-object v2, v2, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    #setter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0, v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$202(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getMobileNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v2

    invoke-interface {v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/clientsecurity/R$string;->W:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v3}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/AlipayApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alipay/mobile/clientsecurity/R$string;->bi:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/accountmanager/ui/WapForgotPayPwdActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    #getter for: Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v1}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;->a:Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
