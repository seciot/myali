.class public Lcom/alipay/android/widget/security/app/PasswordManagerApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic access$102(Lcom/alipay/android/widget/security/app/PasswordManagerApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->e:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object p1
.end method

.method static synthetic access$200(Lcom/alipay/android/widget/security/app/PasswordManagerApp;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/widget/security/app/PasswordManagerApp;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->d:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->b:Landroid/os/Bundle;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;-><init>(Lcom/alipay/android/widget/security/app/PasswordManagerApp;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStart()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/widget/security/app/PasswordManagerApp$a;-><init>(Lcom/alipay/android/widget/security/app/PasswordManagerApp;B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public start(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->startForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/PasswordManagerApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivityForResult(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;I)V

    return-void
.end method
