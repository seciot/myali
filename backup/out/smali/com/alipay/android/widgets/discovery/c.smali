.class final Lcom/alipay/android/widgets/discovery/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/framework/widgetcontainer/WidgetContainerAdapter;


# instance fields
.field final synthetic a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;


# direct methods
.method constructor <init>(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getWidgetView(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Lcom/alipay/mobile/framework/widgetcontainer/IWidgetView;"
        }
    .end annotation

    new-instance v0, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;

    iget-object v1, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->context:Landroid/app/Activity;
    invoke-static {v1}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$900(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/discoverywidget/ui/widget/DiscoveryListWidgetView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final isWidgetVisible(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "widgetViewId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",appId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$1000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$1000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$1000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->rpcIndexWidgetResult:Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$1000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/kabaoprod/biz/mwallet/pass/result/IndexWidgetResult;->widgetDetails:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;

    iget-boolean v0, v0, Lcom/alipay/kabaoprod/core/model/discovery/WidgetDetail;->showStatus:Z

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v0, "50000025"

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final needBindWidgetMsgFlag(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final performWidgetClick(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    const-string/jumbo v0, "50000021"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "50000022"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "50000023"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    invoke-static {v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$400(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    #setter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    invoke-static {v2, v0}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$402(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    :cond_1
    const-string/jumbo v0, "50000021"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "discovey_index_has_coupon_data"

    iget-object v3, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasCouponData:Z
    invoke-static {v3}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$500(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    invoke-static {v2}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$400(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    move-result-object v2

    const-string/jumbo v3, "20000061"

    const-string/jumbo v4, "20000030"

    iget-object v5, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;->distributeApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    const-string/jumbo v2, "20000030"

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "myCouponList"

    const-string/jumbo v5, "myCoupon"

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const-string/jumbo v0, "50000022"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "discovey_index_has_travel_data"

    iget-object v3, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasTravelData:Z
    invoke-static {v3}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$700(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    invoke-static {v2}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$400(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    move-result-object v2

    const-string/jumbo v3, "20000061"

    const-string/jumbo v4, "20000021"

    iget-object v5, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;->distributeApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    const-string/jumbo v2, "20000021"

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "myTravelList"

    const-string/jumbo v5, "myTravel"

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "50000023"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "discovey_index_has_member_data"

    iget-object v3, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->hasMemberData:Z
    invoke-static {v3}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$800(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->alipassAppEntryDistributeService:Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;
    invoke-static {v2}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$400(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;

    move-result-object v2

    const-string/jumbo v3, "20000061"

    const-string/jumbo v4, "20000062"

    iget-object v5, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    #getter for: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->microApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;
    invoke-static {v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$000(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/alipay/mobile/discoverycommon/api/service/AlipassAppEntryDistributeService;->distributeApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/framework/MicroApplicationContext;)V

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    const-string/jumbo v2, "20000062"

    sget-object v3, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->CLICKED:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v4, "20000062Home"

    const-string/jumbo v5, "20000062Icon"

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "50000025"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    const-string/jumbo v1, "20000121"

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "nearbyView"

    const-string/jumbo v4, "20000121Icon"

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "50000024"

    invoke-static {p2, v0}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/widgets/discovery/c;->a:Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;

    const-string/jumbo v1, "20000074"

    sget-object v2, Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;->OPENPAGE:Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;

    const-string/jumbo v3, "20000074Home"

    const-string/jumbo v4, "20000074Icon"

    #calls: Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->writeUserClickLog(Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;->access$600(Lcom/alipay/android/widgets/discovery/DiscoveryWidgetGroup;Ljava/lang/String;Lcom/alipay/mobile/common/logagent/BehaviourIdEnum;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
