.class final Lcom/alipay/mobile/alipassapp/ui/fi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    const-string/jumbo v1, "alipass_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "travel_setting_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    invoke-static {v0}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->a(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    const-string/jumbo v2, ""

    const-string/jumbo v3, "20000021"

    iget-object v1, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    invoke-static {v1}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->b(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;

    invoke-virtual {v1}, Lcom/alipay/mobile/alipassapp/ui/app/AlipassApp;->getAppBundle()Landroid/os/Bundle;

    move-result-object v1

    iget-object v4, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    invoke-static {v4}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->c(Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;->distributeApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v2, "20000021"

    const/4 v3, 0x0

    const-string/jumbo v4, "newGuideView"

    const-string/jumbo v5, "startMyTravel"

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/logagent/AlipayLogAgent;->writeLog(Landroid/content/Context;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/alipassapp/ui/fi;->a:Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/alipassapp/ui/TravelUserGuideActivity;->finish()V

    return-void
.end method
