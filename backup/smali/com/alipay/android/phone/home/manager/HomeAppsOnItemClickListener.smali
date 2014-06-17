.class public Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    .line 46
    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a()I

    move-result v2

    if-ge p3, v2, :cond_0

    .line 47
    invoke-virtual {v0, p3}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(I)Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v5

    .line 48
    sput-object v5, Lcom/alipay/android/phone/home/ui/HomeFragment;->c:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 49
    instance-of v2, v5, Lcom/alipay/android/phone/home/app/HomeMoreApp;

    if-eqz v2, :cond_1

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    invoke-static {}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->c()V

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/home/util/HomeLogAgentUtil;->b(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isOffline()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->offline()V

    invoke-virtual {v0, v5}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "\u8be5\u5e94\u7528\u5df2\u505c\u6b62\u670d\u52a1"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Toast(Ljava/lang/String;I)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/service/AppManageService;->getHomeAppsFromLocal()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-eq v0, v2, :cond_6

    :cond_3
    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isNeedUpgrade()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getInstallerType()Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;->independantApp:Lcom/alipay/mobile/framework/service/ext/openplatform/AppInstallerTypeEnum;

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u6709\u65b0\u7248\u672c\uff0c\u9700\u8981\u66f4\u65b0\u624d\u80fd\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\u66f4\u65b0"

    new-instance v4, Lcom/alipay/android/phone/home/manager/i;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/home/manager/i;-><init>(Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    const-string/jumbo v5, "\u53d6\u6d88"

    move-object v6, v1

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/framework/MicroApplicationContext;->Alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->authAndLaunch(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_6
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "TARGET"

    const-string/jumbo v2, "DETAIL"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "APP_ID"

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v2, "20000002"

    const-string/jumbo v3, "10000111"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AppCenterOnItemClickListener"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/AppLoadException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
