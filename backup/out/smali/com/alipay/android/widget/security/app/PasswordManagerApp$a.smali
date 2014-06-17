.class final Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/widget/security/app/PasswordManagerApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;


# direct methods
.method private constructor <init>(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/widget/security/app/PasswordManagerApp;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;-><init>(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v0, v0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v0, v0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v0, v0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v1, v1, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    #setter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$102(Lcom/alipay/android/widget/security/app/PasswordManagerApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    #getter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$100(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    #getter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v1}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$100(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->d:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$202(Lcom/alipay/android/widget/security/app/PasswordManagerApp;Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    #getter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$200(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    #getter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->d:Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$200(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    #getter for: Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    invoke-static {v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->access$100(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isWirelessUser()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->start(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widget/security/ui/SecurityPasswordManagerForTUserActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;->a:Lcom/alipay/android/widget/security/app/PasswordManagerApp;

    invoke-virtual {v1, v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->start(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
