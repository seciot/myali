.class public Lcom/alipay/android/launcher/TabLauncherApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# static fields
.field public static final ACTIONTYPE:Ljava/lang/String; = "actionType"


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const-string/jumbo v0, "20000002"

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    const-string/jumbo v1, "0"

    const-string/jumbo v2, "20000002"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "20000101"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    const-string/jumbo v1, "2"

    const-string/jumbo v2, "20000061"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    const-string/jumbo v1, "3"

    const-string/jumbo v2, "20000004"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTabId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "20000002"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->c:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public handlParams(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->a:Landroid/os/Bundle;

    const-string/jumbo v0, "actionType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->handlParams(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/alipay/android/launcher/TabLauncherApp;->handlParams(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherApp;->onStart()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "externParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    const-class v3, Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x2000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/android/launcher/TabLauncherApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method

.method public restoreState(Landroid/content/SharedPreferences;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->restoreState(Landroid/content/SharedPreferences;)V

    const-string/jumbo v0, "tablauncher.tabid"

    const-string/jumbo v1, "20000002"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    return-void
.end method

.method public saveState(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->saveState(Landroid/content/SharedPreferences$Editor;)V

    const-string/jumbo v0, "tablauncher.tabid"

    iget-object v1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setTabId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncherApp;->b:Ljava/lang/String;

    return-void
.end method
