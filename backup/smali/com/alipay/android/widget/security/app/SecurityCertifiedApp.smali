.class public Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


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

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/android/widget/security/ui/authentication/AuthenticationCertifiedActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{[info=sendBroadcast],[msg="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.alipay.security.namecertified"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "isCertified"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object v0
.end method

.method static synthetic access$202(Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->d:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    return-object p1
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->a:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "source app id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->getSourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/app/SecurityCertifiedApp;->b:Landroid/os/Bundle;

    return-void
.end method
