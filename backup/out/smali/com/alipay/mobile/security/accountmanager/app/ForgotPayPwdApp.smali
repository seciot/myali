.class public Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 4

    new-instance v0, Lcom/alipay/mobile/login/bean/LoginInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/login/bean/LoginInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/login/bean/LoginInfo;->a(Z)V

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/login/bean/LoginInfo;->b(Z)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "loginInfo"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getAppId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "20000008"

    invoke-interface {v0, v2, v3, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u8df3\u8f6c\u5230\u767b\u9646\u9875\u9762\u5f02\u5e38:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;-><init>(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp$a;-><init>(Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/accountmanager/app/ForgotPayPwdApp;->b:Landroid/os/Bundle;

    return-void
.end method
