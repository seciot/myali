.class public Lcom/alipay/mobile/about/app/WapStationApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field private a:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/about/app/WapStationApp;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/about/app/WapStationApp;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "H5"

    iget-object v1, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/alipay/mobile/about/app/WapStationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/h5container/service/H5Service;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/h5container/service/H5Service;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "u"

    iget-object v4, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "dt"

    iget-object v4, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "st"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "st"

    const-string/jumbo v4, "YES"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "sb"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v3, "sb"

    const-string/jumbo v4, "NO"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v2, v1, v3}, Lcom/alipay/mobile/h5container/service/H5Service;->startWebActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;Ljava/util/List;Lcom/alipay/mobile/h5container/extenal/IWebPayBuriedPoint;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/app/WapStationApp;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/browser/HtmlActivity;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/alipay/mobile/about/app/WapStationApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startExtActivity(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
