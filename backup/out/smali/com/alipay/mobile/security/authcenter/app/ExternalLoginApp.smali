.class public Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a:Landroid/os/Bundle;

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity_;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/app/ExternalLoginApp;->a()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
