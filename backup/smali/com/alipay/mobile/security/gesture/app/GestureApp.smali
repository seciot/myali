.class public Lcom/alipay/mobile/security/gesture/app/GestureApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/os/Bundle;

.field private c:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const-string/jumbo v0, "GestureApp"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->b:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/app/GestureApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/security/gesture/ui/GestureActivity_;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->c:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v1, p0, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/gesture/app/GestureApp;->b:Landroid/os/Bundle;

    return-void
.end method
